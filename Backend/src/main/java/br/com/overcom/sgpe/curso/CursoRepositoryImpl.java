package br.com.overcom.sgpe.curso;

import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public class CursoRepositoryImpl extends QueryDslSupport implements CursoRepositoryCustom {

	public CursoRepositoryImpl() {
		super(Curso.class);
	}

	@Override
	public Page<Curso> buscaPorNomePaginada(String searchValue, Pageable pageable) {
		QCurso curso = QCurso.curso;

		JPAQuery<Curso> query = (JPAQuery<Curso>) getQuerydsl().createQuery()
			.select(curso).from(curso)
			.where(curso.nome.startsWithIgnoreCase(searchValue)
				.and(curso.deleted.eq(false)))
			.orderBy(curso.nome.asc());

		return readPage(query, pageable);
	}

	@Override
	public List<CursoDTO> findByNomeLimit10(String nome) {
		QCurso curso = QCurso.curso;

		return getQuerydsl().createQuery()
			.select(new QCursoDTO(curso.uuid, curso.nome))
			.from(curso)
			.where(curso.nome.containsIgnoreCase(nome)
				.and(curso.deleted.eq(false)))
			.orderBy(curso.nome.asc())
			.limit(10)
			.fetch();
	}
}
