package br.com.overcom.sgpe.planoensino.competencia;

import java.util.List;

public interface CompetenciaRepositoryCustom {
	List<Competencia> findAllByDescricao(String descricao);
}
