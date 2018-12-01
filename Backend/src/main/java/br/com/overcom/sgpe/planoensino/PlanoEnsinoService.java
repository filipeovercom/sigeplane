package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractService;
import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.bibliografia.BibliografiaService;
import br.com.overcom.sgpe.bibliografia.TipoBibliografia;
import br.com.overcom.sgpe.comentario.Comentario;
import br.com.overcom.sgpe.comentario.ComentarioRepository;
import br.com.overcom.sgpe.comentario.TipoComentario;
import br.com.overcom.sgpe.comentario.TotalComentariosNaoLidosDTO;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import br.com.overcom.sgpe.seguranca.usuario.UsuarioService;
import org.javers.spring.annotation.JaversAuditable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class PlanoEnsinoService extends AbstractService<PlanoEnsino> {

	private final PlanoEnsinoRepository planoEnsinoRepository;
	private final ComentarioRepository  comentarioRepository;
	private final UsuarioService        usuarioService;
	private final BibliografiaService   bibliografiaService;

	@Autowired
	public PlanoEnsinoService(
		PlanoEnsinoRepository planoEnsinoRepository, BibliografiaService bibliografiaService,
		ComentarioRepository comentarioRepository, UsuarioService usuarioService) {
		super(planoEnsinoRepository);
		this.planoEnsinoRepository = planoEnsinoRepository;
		this.bibliografiaService = bibliografiaService;
		this.comentarioRepository = comentarioRepository;
		this.usuarioService = usuarioService;
	}

	@Override
	public Optional<PlanoEnsino> findByUUID(UUID uuid) {
		return planoEnsinoRepository.findOne(QPlanoEnsino.planoEnsino.uuid.eq(uuid));
	}

	public PlanoEnsinoDTO findUltimoPlanoByTurma(UUID turmaUUID) throws NegocioException {
		Optional<PlanoEnsinoDTO> planoEnsinoDTO = planoEnsinoRepository.findUltimoPlanoByTurma(turmaUUID);
		if (planoEnsinoDTO.isPresent()) {
			PlanoEnsinoDTO plano = planoEnsinoDTO.get();
			bibliografiaService.findReferenciasByDisciplina(plano.getTurma().getDisciplina().getUuid())
				.forEach(ref -> {
					if (ref.getTipo().equals(TipoBibliografia.BASICA)) {
						plano.getTurma().getDisciplina().getBibliografiaBasica()
							.add(ref.getBibliografia().getDescricao());
					} else {
						plano.getTurma().getDisciplina().getBibliografiaComplementar()
							.add(ref.getBibliografia().getDescricao());
					}
				});
			return plano;
		} else {
			throw new NegocioException("Nenhum plano encontrado para a turma informada.");
		}
	}

	public Optional<PlanoEnsino> findUltimoPlanoImpressaoByTurma(UUID turmaUUID) {
		QPlanoEnsino planoEnsino = QPlanoEnsino.planoEnsino;
		return planoEnsinoRepository.findOne(planoEnsino.turma.uuid.eq(turmaUUID));
	}

	public void updateCargaHoraria(UUID planoUUID, Integer teorica, Integer pratica) throws NegocioException {
		PlanoEnsino planoEnsino = PlanoEnsino.builder()
			.uuid(planoUUID).qtdHorasTeorica(teorica).qtdHorasPratica(pratica).build();
		planoEnsinoRepository.updateCargaHoraria(planoEnsino);
	}

	public void updateContribuicaoFormacao(UUID planoUUID, String contribuicaoFormacao) throws NegocioException {
		PlanoEnsino planoEnsino = PlanoEnsino.builder()
			.uuid(planoUUID).contribuicaoFormacao(contribuicaoFormacao).build();
		planoEnsinoRepository.updateContribuicaoFormacao(planoEnsino);
	}

	public void updateConteudo(UUID planoUUID, String conteudo) throws NegocioException {
		PlanoEnsino planoEnsino = PlanoEnsino.builder()
			.conteudo(conteudo).build();
		planoEnsino.setUuid(planoUUID);
		planoEnsinoRepository.updateConteudo(planoEnsino);
	}

	public void updateCriteriosAvaliacao(UUID planoUUID, String criteriosAvaliacao) throws NegocioException {
		PlanoEnsino planoEnsino = PlanoEnsino.builder()
			.criterioAvaliacao(criteriosAvaliacao).build();
		planoEnsino.setUuid(planoUUID);
		planoEnsinoRepository.updateCriteriosAvaliacao(planoEnsino);
	}

	@Transactional
	@JaversAuditable
	public Comentario registraComentario(Comentario comentario) throws NegocioException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Usuario usuario = usuarioService.findByMatricula(auth.getName())
			.orElseThrow(() -> new NegocioException("Usuário responsável pelo comentário não foi encontrado!"));
		comentario.setUsuario(usuario);
		comentario.setDataHoraCadastro(LocalDateTime.now());
		return comentarioRepository.saveAndFlush(comentario);
	}

	public void marcarComentariosComoLidos(UUID planoUUID, TipoComentario tipoComentario) throws NegocioException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Usuario usuario = usuarioService.findByMatricula(auth.getName())
			.orElseThrow(() -> new NegocioException("Usuário responsável pelo comentário não foi encontrado!"));
		PlanoEnsino planoEnsino = PlanoEnsino.builder().uuid(planoUUID).build();
		comentarioRepository.marcarComentariosComoLidos(planoEnsino, usuario, tipoComentario);
	}

	public List<TotalComentariosNaoLidosDTO> getTotalComentariosNaoLidos(UUID planoUUID) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return comentarioRepository.findComentariosNaoLidos(planoUUID, auth.getName());
	}

	@Transactional
	public void insertNewItemCronograma(ItemCronograma itemCronograma) throws NegocioException {
		planoEnsinoRepository.insertNewItemCronograma(itemCronograma);
	}

	public List<ItemCronograma> findItensCronogramaByPlano(UUID planoUUID) {
		return planoEnsinoRepository.findAllItensCronogramaByPlano(planoUUID);
	}

	public List<SubItemCronograma> findSubItensByItem(UUID itemUUID) {
		return planoEnsinoRepository.findAllSubItensByItem(itemUUID);
	}

	public Optional<PlanoEnsinoPreenchimentoDTO> findUltimoPlanoByDisciplinaAndProfessor(
		UUID disciplinaUUID, UUID professorUUID) {
		return planoEnsinoRepository.findUltimoPlanoByDisciplinaAndProfessor(disciplinaUUID, professorUUID);
	}

	@Transactional
	public void insertNewSubItemCronograma(SubItemCronograma subItem) throws NegocioException {
		try {
			planoEnsinoRepository.insertNewSubItemCronograma(subItem);
		} catch (Exception e) {
			throw new NegocioException(e);
		}
	}

	public void updateItemCronograma(ItemCronograma itemCronograma) throws NegocioException {
		try {
			planoEnsinoRepository.updateItemCronograma(itemCronograma);
		} catch (Exception e) {
			throw new NegocioException(e);
		}
	}
}
