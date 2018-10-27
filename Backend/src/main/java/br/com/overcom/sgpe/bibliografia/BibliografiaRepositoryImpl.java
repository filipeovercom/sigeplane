package br.com.overcom.sgpe.bibliografia;

import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public class BibliografiaRepositoryImpl extends QueryDslSupport implements BibliografiaRepositoryCustom {

	public BibliografiaRepositoryImpl() {
		super(Bibliografia.class);
	}

	@Override
	public Page<Bibliografia> buscaPaginadaPorDescricao(String descricao, Pageable pageable) {
		QBibliografia bibliografia = QBibliografia.bibliografia;
		JPAQuery<Bibliografia> query = getQuerydsl().<Bibliografia>createQuery()
			.from(bibliografia)
			.where(bibliografia.deleted.eq(false)
				.and(bibliografia.descricao.containsIgnoreCase(descricao)));
		return readPage(query, pageable);
	}
}
