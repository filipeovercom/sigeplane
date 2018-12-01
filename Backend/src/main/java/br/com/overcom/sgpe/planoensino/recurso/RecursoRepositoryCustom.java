package br.com.overcom.sgpe.planoensino.recurso;

import java.util.List;

public interface RecursoRepositoryCustom {
	List<Recurso> findAllByDescricao(String descricao);
}
