package br.com.overcom.sgpe.planoensino.competencia;

import br.com.overcom.sgpe.utilidades.QueryDslSupport;

import java.util.List;

public class CompetenciaRepositoryImpl extends QueryDslSupport implements CompetenciaRepositoryCustom {

	public CompetenciaRepositoryImpl() {
		super(Competencia.class);
	}

	@Override
	public List<Competencia> findAllByDescricao(String descricao) {
		QCompetencia competencia = QCompetencia.competencia;
		return getQuerydsl().createQuery().select(competencia)
			.from(competencia)
			.where(competencia.descricao.containsIgnoreCase(descricao)).fetch();
	}
}
