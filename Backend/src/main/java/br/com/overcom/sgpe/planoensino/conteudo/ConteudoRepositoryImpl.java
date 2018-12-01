package br.com.overcom.sgpe.planoensino.conteudo;

import br.com.overcom.sgpe.utilidades.QueryDslSupport;

import java.util.List;

public class ConteudoRepositoryImpl extends QueryDslSupport implements ConteudoRepositoryCustom {

	public ConteudoRepositoryImpl() {
		super(Conteudo.class);
	}

	@Override
	public List<Conteudo> findAllByDescricao(String descricao) {
		QConteudo conteudo = QConteudo.conteudo;
		return getQuerydsl().createQuery()
			.select(conteudo)
			.from(conteudo)
			.where(conteudo.descricao.containsIgnoreCase(descricao))
			.fetch();
	}
}
