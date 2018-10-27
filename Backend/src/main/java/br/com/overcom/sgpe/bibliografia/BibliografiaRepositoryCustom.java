package br.com.overcom.sgpe.bibliografia;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface BibliografiaRepositoryCustom {
	Page<Bibliografia> buscaPaginadaPorDescricao(String descricao, Pageable pageable);
}
