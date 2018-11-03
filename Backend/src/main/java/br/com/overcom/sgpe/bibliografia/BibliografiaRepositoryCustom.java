package br.com.overcom.sgpe.bibliografia;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.UUID;
import java.util.stream.Stream;

public interface BibliografiaRepositoryCustom {
	Page<Bibliografia> buscaPaginadaPorDescricao(String descricao, Pageable pageable);

	Stream<ReferenciaBibliografica> findReferenciasByDisciplina(UUID uuidDisciplina);
}
