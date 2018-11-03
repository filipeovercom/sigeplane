package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractService;
import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.bibliografia.BibliografiaService;
import br.com.overcom.sgpe.bibliografia.TipoBibliografia;
import br.com.overcom.sgpe.comentario.Comentario;
import br.com.overcom.sgpe.comentario.ComentarioRepository;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import br.com.overcom.sgpe.seguranca.usuario.UsuarioService;
import org.javers.spring.annotation.JaversAuditable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
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

	public void updateCargaHoraria(Long id, Integer teorica, Integer pratica) throws NegocioException {
		PlanoEnsino planoEnsino = PlanoEnsino.builder()
			.qtdHorasTeorica(teorica).qtdHorasPratica(pratica).build();
		planoEnsino.setId(id);
		planoEnsinoRepository.updateCargaHoraria(planoEnsino);
	}

	public void updateContribuicaoFormacao(Long planoID, String contribuicaoFormacao) throws NegocioException {
		PlanoEnsino planoEnsino = PlanoEnsino.builder()
			.contribuicaoFormacao(contribuicaoFormacao).build();
		planoEnsino.setId(planoID);
		planoEnsinoRepository.updateContribuicaoFormacao(planoEnsino);
	}

	public void updateConteudo(Long planoID, String conteudo) throws NegocioException {
		PlanoEnsino planoEnsino = PlanoEnsino.builder()
			.conteudo(conteudo).build();
		planoEnsino.setId(planoID);
		planoEnsinoRepository.updateConteudo(planoEnsino);
	}

	public void updateCriteriosAvaliacao(Long planoID, String criteriosAvaliacao) throws NegocioException {
		PlanoEnsino planoEnsino = PlanoEnsino.builder()
			.criterioAvaliacao(criteriosAvaliacao).build();
		planoEnsino.setId(planoID);
		planoEnsinoRepository.updateCriteriosAvaliacao(planoEnsino);
	}

	@Transactional
	@JaversAuditable
	public Comentario registraComentario(Comentario comentario) throws NegocioException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Usuario usuario = usuarioService.findByMatricula(auth.getName())
			.orElseThrow(() -> new NegocioException("Usuário responsável pelo comentário não foi encontrado!"));
		comentario.setUsuario(usuario);
		return comentarioRepository.saveAndFlush(comentario);
	}

	public void atualizaLeituraComentarios(Long planoID) throws NegocioException {
		comentarioRepository.atualizaLeitura(planoID);
	}
}
