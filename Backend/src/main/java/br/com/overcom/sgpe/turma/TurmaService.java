package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.AbstractService;
import br.com.overcom.sgpe.abstracao.NegocioException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class TurmaService extends AbstractService<Turma> {

	private final TurmaRepository turmaRepository;

	@Autowired
	public TurmaService(TurmaRepository repository) {
		super(repository);
		this.turmaRepository = repository;
	}

	public Page<TurmaDTO> findByPeriodoAndParams(UUID periodoLetivo, ConsultaTurmasParams params, Pageable pageable) {
		return turmaRepository.findAllByPeriodoAndParams(periodoLetivo, params, pageable);
	}

	@Override
	public Optional<Turma> findByUUID(UUID uuid) {
		return turmaRepository.findByUuid(uuid);
	}

	@Override
	public Turma update(Turma turma) throws NegocioException {
		turmaRepository.update(turma);
		return turma;
	}
}
