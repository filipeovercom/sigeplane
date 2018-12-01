package br.com.overcom.sgpe.planoensino.recurso;

import br.com.overcom.sgpe.abstracao.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class RecursoService extends AbstractService<Recurso> {

	private final RecursoRepository repository;

	@Autowired
	public RecursoService(RecursoRepository repository) {
		super(repository);
		this.repository = repository;
	}

	@Override
	public Optional<Recurso> findByUUID(UUID uuid) {
		return repository.findOne(QRecurso.recurso.uuid.eq(uuid));
	}

	public List<Recurso> findAllByDescricao(String descricao) {
		return repository.findAllByDescricao(descricao);
	}
}