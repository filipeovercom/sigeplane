package br.com.overcom.sgpe.curso;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CursoRepositoryCustom {

	Page<Curso> buscaPorNomePaginada(String searchValue, Pageable pageable);

}
