package br.com.overcom.sgpe.bibliografia;

import br.com.overcom.sgpe.abstracao.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;
import java.util.stream.Stream;

@Service
public class BibliografiaService extends AbstractService<Bibliografia> {

	private final BibliografiaRepository repository;

	@Autowired
	public BibliografiaService(BibliografiaRepository repository) {
		super(repository);
		this.repository = repository;
	}

	public Page<Bibliografia> buscaPaginadaPorDescricao(String descricao, Pageable pageable) {
		return repository.buscaPaginadaPorDescricao(descricao, pageable);
	}

	@Override
	public Optional<Bibliografia> findByUUID(UUID uuid) {
		return repository.findOne(QBibliografia.bibliografia.uuid.eq(uuid));
	}

	public Stream<ReferenciaBibliografica> findReferenciasByDisciplina(UUID uuidDisciplina) {
		return repository.findReferenciasByDisciplina(uuidDisciplina);
	}
}
