package br.com.overcom.sgpe.planoensino.habilidade;

import br.com.overcom.sgpe.utilidades.QueryDslSupport;

import java.util.List;

public class HabilidadeRepositoryImpl extends QueryDslSupport implements HabilidadeRepositoryCustom {

	public HabilidadeRepositoryImpl() {
		super(Habilidade.class);
	}

	@Override
	public List<Habilidade> findAllByDescricao(String descricao) {
		QHabilidade habilidade = QHabilidade.habilidade;
		return getQuerydsl().createQuery()
			.select(habilidade)
			.from(habilidade)
			.where(habilidade.descricao.containsIgnoreCase(descricao))
			.fetch();
	}
}
