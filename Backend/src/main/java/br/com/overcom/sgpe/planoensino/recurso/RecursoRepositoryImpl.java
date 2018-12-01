package br.com.overcom.sgpe.planoensino.recurso;

import br.com.overcom.sgpe.utilidades.QueryDslSupport;

import java.util.List;

public class RecursoRepositoryImpl extends QueryDslSupport implements RecursoRepositoryCustom {

	public RecursoRepositoryImpl() {
		super(Recurso.class);
	}

	@Override
	public List<Recurso> findAllByDescricao(String descricao) {
		QRecurso recurso = QRecurso.recurso;
		return getQuerydsl().createQuery()
			.select(recurso)
			.from(recurso)
			.where(recurso.descricao.containsIgnoreCase(descricao))
			.fetch();
	}
}
