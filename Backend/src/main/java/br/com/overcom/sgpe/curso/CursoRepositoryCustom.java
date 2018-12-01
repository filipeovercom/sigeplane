package br.com.overcom.sgpe.curso;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface CursoRepositoryCustom {

	Page<Curso> buscaPorNomePaginada(String searchValue, Pageable pageable);

	List<CursoDTO> findByNomeLimit10(String nome);
}
