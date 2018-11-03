package br.com.overcom.sgpe.utilidades;

import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;

import java.util.Collections;
import java.util.List;

public class QueryDslSupport extends QuerydslRepositorySupport {

	public QueryDslSupport(Class<?> domainClass) {
		super(domainClass);
	}

	protected Page readPage(JPAQuery query, Pageable pageable) {
		if (pageable == null) {
			return readPage(query, Pageable.unpaged());
		}

		long      total      = query.clone(super.getEntityManager()).fetchCount();
		JPQLQuery pagedQuery = getQuerydsl().applyPagination(pageable, query);
		List      content    = total > pageable.getOffset() ? pagedQuery.fetch() : Collections.emptyList();

		return new PageImpl<>(content, pageable, total);
	}
}
