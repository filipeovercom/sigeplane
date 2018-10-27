package br.com.overcom.sgpe.disciplina;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.bibliografia.BibliografiaRepository;
import br.com.overcom.sgpe.bibliografia.QReferenciaBibliografica;
import br.com.overcom.sgpe.curso.QCurso;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

public class DisciplinaRepositoryImpl extends QueryDslSupport implements DisciplinaRepositoryCustom {

	private final BibliografiaRepository bibliografiaRepository;

	@Autowired
	public DisciplinaRepositoryImpl(BibliografiaRepository bibliografiaRepository) {
		super(Disciplina.class);
		this.bibliografiaRepository = bibliografiaRepository;
	}

	@Override
	public Page<Disciplina> findAllBySearchValue(String searchValue, Pageable pageable) {
		QDisciplina disciplina = QDisciplina.disciplina;
		QCurso      curso      = disciplina.curso;

		JPAQuery<Disciplina> query = getQuerydsl().<Disciplina>createQuery()
			.from(disciplina)
			.leftJoin(curso).fetchJoin()
			.where(disciplina.deleted.eq(false)
				.and(disciplina.nome.startsWithIgnoreCase(searchValue)
					.or(disciplina.codigoInterno.startsWithIgnoreCase(searchValue))
					.or(curso.nome.startsWithIgnoreCase(searchValue))))
			.orderBy(disciplina.nome.asc());

		return readPage(query, pageable);
	}

	@Override
	public Optional<Disciplina> findOneByUuidWithBibliografia(UUID uuid) {
		QDisciplina              disciplina = QDisciplina.disciplina;
		QReferenciaBibliografica referencia = QReferenciaBibliografica.referenciaBibliografica;

		return Optional.ofNullable(
			getQuerydsl().createQuery().select(disciplina)
				.distinct()
				.from(disciplina)
				.leftJoin(disciplina.curso).fetchJoin()
				.leftJoin(disciplina.bibliografias, referencia).fetchJoin()
				.innerJoin(referencia.bibliografia).fetchJoin()
				.where(referencia.deleted.eq(false).and(disciplina.deleted.eq(false).and(disciplina.uuid.eq(uuid))))
				.fetchOne()
		);
	}

	@Override
	public void updateReferencias(Disciplina disciplina) {
		QReferenciaBibliografica referenciaBibliografica = QReferenciaBibliografica.referenciaBibliografica;
		delete(referenciaBibliografica).where(referenciaBibliografica.disciplina.eq(disciplina)).execute();
		disciplina.getBibliografias().forEach(ref -> {
			ref.setDisciplina(disciplina);
			if (Objects.isNull(ref.getBibliografia().getId())) {
				ref.setBibliografia(bibliografiaRepository.saveAndFlush(ref.getBibliografia()));
			}
			getEntityManager().merge(ref);
		});
	}

	@Override
	public void update(Disciplina pDisciplina) throws NegocioException {
		QDisciplina disciplina = QDisciplina.disciplina;
		boolean updated = update(disciplina)
			.set(disciplina.codigoInterno, pDisciplina.getCodigoInterno())
			.set(disciplina.contribuicaoFormacao, pDisciplina.getContribuicaoFormacao())
			.set(disciplina.ementa, pDisciplina.getEmenta())
			.set(disciplina.curso, pDisciplina.getCurso())
			.set(disciplina.nome, pDisciplina.getNome())
			.where(disciplina.id.eq(pDisciplina.getId())).execute() == 1;
		if (!updated) throw new NegocioException("Não foi possível salvar alterações na disciplina");
	}
}
