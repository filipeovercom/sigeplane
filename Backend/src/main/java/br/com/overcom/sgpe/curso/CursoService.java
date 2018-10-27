package br.com.overcom.sgpe.curso;

import br.com.overcom.sgpe.abstracao.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class CursoService extends AbstractService<Curso> {

	private final CursoRepository repository;

	@Autowired
	public CursoService(CursoRepository repository) {
		super(repository);
		this.repository = repository;
	}


	public Page<Curso> buscaPorNomePaginada(String searchValue, Pageable pageable) {
		return repository.buscaPorNomePaginada(searchValue, pageable);
	}

	@Override
	public Optional<Curso> findByUUID(UUID uuid) {
		return repository.findOne(QCurso.curso.uuid.eq(uuid));
	}
}
