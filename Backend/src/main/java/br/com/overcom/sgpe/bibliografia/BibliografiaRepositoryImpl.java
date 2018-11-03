package br.com.overcom.sgpe.bibliografia;

import br.com.overcom.sgpe.disciplina.QDisciplina;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.UUID;
import java.util.stream.Stream;

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

	@Override
	public Stream<ReferenciaBibliografica> findReferenciasByDisciplina(UUID uuidDisciplina) {
		QReferenciaBibliografica referenciaBibliografica = QReferenciaBibliografica.referenciaBibliografica;
		QDisciplina              disciplina              = referenciaBibliografica.disciplina;
		return getQuerydsl().createQuery()
			.select(referenciaBibliografica)
			.from(referenciaBibliografica)
			.innerJoin(disciplina).on(disciplina.uuid.eq(uuidDisciplina))
			.fetch().stream();
	}
}
