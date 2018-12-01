package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.AbstractService;
import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.planoensino.PlanoEnsino;
import br.com.overcom.sgpe.planoensino.PlanoEnsinoService;
import br.com.overcom.sgpe.planoensino.StatusPlanoEnsino;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class TurmaService extends AbstractService<Turma> {

	private final TurmaRepository    turmaRepository;
	private final PlanoEnsinoService planoEnsinoService;

	@Autowired
	public TurmaService(TurmaRepository repository, PlanoEnsinoService planoEnsinoService) {
		super(repository);
		this.turmaRepository = repository;
		this.planoEnsinoService = planoEnsinoService;
	}

	public Page<TurmaDTO> findByPeriodoAndParams(UUID periodoLetivo, ConsultaTurmasParams params, Pageable pageable) {
		return turmaRepository.findAllByPeriodoAndParams(periodoLetivo, params, pageable);
	}

	@Override
	public Optional<Turma> findByUUID(UUID uuid) {
		return turmaRepository.findByUuid(uuid);
	}

	@Override
	public Turma insert(Turma turma) throws NegocioException {
		turma.setStatusPlanoEnsino(StatusPlanoEnsino.AGUARDANDO_PRODUCAO);

		PlanoEnsino novoPlano = new PlanoEnsino();

		planoEnsinoService
			.findUltimoPlanoByDisciplinaAndProfessor(
				turma.getDisciplina().getUuid(),
				turma.getProfessor().getUuid())
			.ifPresent(planoEncontrado -> {
				novoPlano.setConteudo(planoEncontrado.getConteudo());
				novoPlano.setContribuicaoFormacao(planoEncontrado.getContribuicaoFormacao());
				novoPlano.setCriterioAvaliacao(planoEncontrado.getCriterioAvaliacao());
				novoPlano.setQtdHorasPratica(planoEncontrado.getQtdHorasPratica());
				novoPlano.setQtdHorasTeorica(planoEncontrado.getQtdHorasTeorica());
			});

		turma.addPlano(novoPlano);
		turma = super.insert(turma);

		return turma;
	}

	@Override
	public Turma update(Turma turma) throws NegocioException {
		turmaRepository.update(turma);
		return turma;
	}

	public void alteraStatusAguardandoProducao(UUID planoUUID) throws NegocioException {
		try {
			turmaRepository.alteraStatusAguardandoProducao(planoUUID);
		} catch (Exception e) {
			throw new NegocioException(e);
		}
	}
}
