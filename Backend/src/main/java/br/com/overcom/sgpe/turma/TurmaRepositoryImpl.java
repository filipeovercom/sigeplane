package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.curso.QCurso;
import br.com.overcom.sgpe.disciplina.QDisciplina;
import br.com.overcom.sgpe.seguranca.usuario.QUsuario;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Projections;
import com.querydsl.jpa.JPQLQuery;
import com.querydsl.jpa.impl.JPAQuery;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Optional;
import java.util.UUID;

public class TurmaRepositoryImpl extends QueryDslSupport implements TurmaRepositoryCustom {

	public TurmaRepositoryImpl() {
		super(Turma.class);
	}

	@Override
	public Optional<Turma> findByUuid(UUID uuid) {
		QTurma turma = QTurma.turma;
		return Optional.ofNullable(
			getQuerydsl().createQuery().select(turma).from(turma)
				.innerJoin(turma.curso).fetchJoin()
				.innerJoin(turma.disciplina).fetchJoin()
				.innerJoin(turma.professor).fetchJoin()
				.innerJoin(turma.periodoLetivo).fetchJoin()
				.where(turma.uuid.eq(uuid).and(turma.deleted.eq(false)))
				.fetchOne());
	}

	@Override
	public void update(Turma pTurma) throws NegocioException {
		QTurma turma = QTurma.turma;
		boolean updated = update(turma)
			.set(turma.curso, pTurma.getCurso())
			.set(turma.disciplina, pTurma.getDisciplina())
			.set(turma.nome, pTurma.getNome())
			.set(turma.periodoLetivo, pTurma.getPeriodoLetivo())
			.set(turma.professor, pTurma.getProfessor())
			.where(turma.id.eq(pTurma.getId())).execute() == 1;
		if (!updated) throw new NegocioException("Não foi possível salvar as alterações.");
	}

	@Override
	public Page<TurmaDTO> findAllByPeriodoAndParams(UUID periodoLetivo, ConsultaTurmasParams params,
		Pageable pageable) {
		QTurma      turma       = QTurma.turma;
		QDisciplina disciplina  = QDisciplina.disciplina;
		QCurso      curso       = QCurso.curso;
		QUsuario    professor   = new QUsuario("professor");
		QUsuario    coordenador = new QUsuario("coordenador");

		JPQLQuery<TurmaDTO> query = getQuerydsl().createQuery()
			.select(Projections.constructor(TurmaDTO.class, turma.uuid, turma.nome,
				curso.nome, professor.nome, disciplina.nome, turma.statusPlanoEnsino))
			.from(turma)
			.innerJoin(turma.disciplina, disciplina)
			.innerJoin(turma.professor, professor)
			.innerJoin(turma.curso, curso)
			.innerJoin(curso.coordenador, coordenador)
			.orderBy(turma.dataHoraCadastro.desc());

		BooleanBuilder conditions = new BooleanBuilder();

		params.getNome()
			.ifPresent(nome -> conditions.and(turma.nome.startsWithIgnoreCase(nome)));
		params.getDisciplina().ifPresent(uuid -> conditions.and(disciplina.uuid.eq(uuid)));
		params.getCurso().ifPresent(uuid -> conditions.and(curso.uuid.eq(uuid)));
		params.getStatusPlanoEnsino().ifPresent(status -> conditions.and(turma.statusPlanoEnsino.eq(status)));
		conditions.and(turma.periodoLetivo.uuid.eq(params.getPeriodoLetivo()));

		if (params.getProfessor().isPresent()) {
			conditions.and(turma.professor.uuid.eq(params.getProfessor().get()));
		} else {
			Authentication auth          = SecurityContextHolder.getContext().getAuthentication();
			String         matriculaUser = auth.getName();
			conditions.and(professor.matricula.eq(matriculaUser)
				.or(coordenador.matricula.eq(matriculaUser)));
		}

		conditions.and(turma.deleted.eq(false));
		query.where(conditions);

		return readPage((JPAQuery) query, pageable);
	}
}
