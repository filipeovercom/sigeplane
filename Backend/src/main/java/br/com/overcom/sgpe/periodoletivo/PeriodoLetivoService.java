package br.com.overcom.sgpe.periodoletivo;

import br.com.overcom.sgpe.abstracao.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class PeriodoLetivoService extends AbstractService<PeriodoLetivo> {

	private final PeriodoLetivoRepository repository;

	@Autowired
	public PeriodoLetivoService(PeriodoLetivoRepository repository) {
		super(repository);
		this.repository = repository;
	}

	@Override
	public Optional<PeriodoLetivo> findByUUID(UUID uuid) {
		return repository.findOne(QPeriodoLetivo.periodoLetivo.uuid.eq(uuid));
	}

	public Page<PeriodoLetivo> getPeriodosByDescricaoPaginado(String descricao, Pageable pageable) {
		QPeriodoLetivo periodoLetivo = QPeriodoLetivo.periodoLetivo;
		return repository.findAll(periodoLetivo.descricao.startsWithIgnoreCase(descricao), pageable);
	}
}
