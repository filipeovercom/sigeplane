package br.com.overcom.sgpe.disciplina;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.bibliografia.BibliografiaRepository;
import br.com.overcom.sgpe.bibliografia.QReferenciaBibliografica;
import br.com.overcom.sgpe.curso.QCurso;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQuery;
import org.javers.spring.annotation.JaversAuditable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
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
	public Page<DisciplinaDTO> findAllBySearchValue(String searchValue, Pageable pageable) {
		QDisciplina disciplina = QDisciplina.disciplina;
		QCurso      curso      = disciplina.curso;

		JPQLQuery<DisciplinaDTO> query = getQuerydsl().createQuery()
			.select(DisciplinaDTO.getConstructorListagem(disciplina, curso))
			.from(disciplina)
			.leftJoin(curso)
			.where(disciplina.deleted.eq(false)
				.and(disciplina.nome.containsIgnoreCase(searchValue)
					.or(disciplina.codigoInterno.startsWithIgnoreCase(searchValue))
					.or(curso.nome.containsIgnoreCase(searchValue))))
			.orderBy(disciplina.nome.asc());

		return readPage((JPAQuery) query, pageable);
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
				.leftJoin(referencia.bibliografia).fetchJoin()
				.where(disciplina.deleted.eq(false).and(disciplina.uuid.eq(uuid)))
				.fetchOne()
		);
	}

	@Override
	public void updateReferencias(Disciplina disciplina) {
		QReferenciaBibliografica referenciaBibliografica = QReferenciaBibliografica.referenciaBibliografica;
		delete(referenciaBibliografica).where(referenciaBibliografica.disciplina.eq(disciplina)).execute();
		disciplina.getBibliografias().forEach(ref -> {
			ref.setDisciplina(disciplina);
			if (Objects.isNull(ref.getBibliografia().getUuid())) {
				ref.setBibliografia(bibliografiaRepository.saveAndFlush(ref.getBibliografia()));
			}
			getEntityManager().merge(ref);
		});
	}

	@Override
	@JaversAuditable
	public void update(Disciplina pDisciplina) throws NegocioException {
		QDisciplina disciplina = QDisciplina.disciplina;
		boolean updated = update(disciplina)
			.set(disciplina.codigoInterno, pDisciplina.getCodigoInterno())
			.set(disciplina.ementa, pDisciplina.getEmenta())
			.set(disciplina.curso, pDisciplina.getCurso())
			.set(disciplina.nome, pDisciplina.getNome())
			.where(disciplina.uuid.eq(pDisciplina.getUuid())).execute() == 1;
		if (!updated) throw new NegocioException("Não foi possível salvar alterações na disciplina");
	}

	@Override
	public List<DisciplinaDTO> findAllDTOByCursoAndNomeLimit10(UUID uuidCurso, Optional<String> nome) {
		QDisciplina disciplina = QDisciplina.disciplina;
		QCurso      curso      = QCurso.curso;

		JPQLQuery<DisciplinaDTO> query = getQuerydsl().createQuery()
			.select(DisciplinaDTO.getConstructorListagem(disciplina, curso))
			.from(disciplina)
			.innerJoin(disciplina.curso, curso).on(curso.uuid.eq(uuidCurso))
			.where(disciplina.deleted.eq(false))
			.orderBy(disciplina.nome.asc())
			.limit(10);

		nome.ifPresent(n -> query.where(disciplina.nome.containsIgnoreCase(n)));

		return query.fetch();
	}
}
