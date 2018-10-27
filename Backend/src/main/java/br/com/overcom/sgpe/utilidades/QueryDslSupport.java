package br.com.overcom.sgpe.utilidades;

import br.com.overcom.sgpe.abstracao.AbstractEntityAuditable;
import br.com.overcom.sgpe.abstracao.QAbstractEntityAuditable;
import br.com.overcom.sgpe.seguranca.usuario.QUsuario;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import com.querydsl.core.dml.UpdateClause;
import com.querydsl.core.types.EntityPath;
import com.querydsl.core.types.dsl.EntityPathBase;
import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQuery;
import com.querydsl.jpa.impl.JPAUpdateClause;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import java.time.LocalDateTime;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

public class QueryDslSupport extends QuerydslRepositorySupport {

	private Class<?> domainClass;

	public QueryDslSupport(Class<?> domainClass) {
		super(domainClass);
		this.domainClass = domainClass;
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

	@Override
	protected UpdateClause<JPAUpdateClause> update(EntityPath path) {
		UpdateClause<JPAUpdateClause> updateClause = super.update(path);
		if (domainClass.getSuperclass().equals(AbstractEntityAuditable.class)) {
			EntityPathBase entityPathBase = (EntityPathBase) path;
			QAbstractEntityAuditable auditablePath = (QAbstractEntityAuditable) entityPathBase
				.as(QAbstractEntityAuditable.class);
			if (getUsuarioLogado().isPresent()) {
				updateClause
					.set(auditablePath.dataHoraAlteracao, LocalDateTime.now())
					.set(auditablePath.usuarioAlteracao, getUsuarioLogado().get());
			}
		}
		return updateClause;
	}

	private Optional<Usuario> getUsuarioLogado() {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null || !authentication.isAuthenticated()) {
			return Optional.empty();
		}
		QUsuario usuario = QUsuario.usuario;
		return Optional.ofNullable(getQuerydsl().<Usuario>createQuery()
			.from(usuario)
			.where(usuario.matricula.eq(((String) authentication.getPrincipal())))
			.fetchOne());
	}
}
