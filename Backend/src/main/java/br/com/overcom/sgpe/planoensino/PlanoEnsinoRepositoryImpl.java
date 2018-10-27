package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.curso.QCurso;
import br.com.overcom.sgpe.disciplina.QDisciplina;
import br.com.overcom.sgpe.seguranca.usuario.QUsuario;
import br.com.overcom.sgpe.turma.QTurma;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.core.types.Projections;
import com.querydsl.jpa.JPQLQuery;

import java.util.Optional;
import java.util.UUID;

public class PlanoEnsinoRepositoryImpl extends QueryDslSupport implements PlanoEnsinoRepositoryCustom {

	public PlanoEnsinoRepositoryImpl() {
		super(PlanoEnsino.class);
	}

	@Override
	public Optional<PlanoEnsinoDTO> findUltimoPlanoByTurma(UUID turmaUUID) {
		QPlanoEnsino plano       = QPlanoEnsino.planoEnsino;
		QTurma       turma       = QTurma.turma;
		QCurso       curso       = QCurso.curso;
		QDisciplina  disciplina  = QDisciplina.disciplina;
		QUsuario     professor   = QUsuario.usuario;
		QUsuario     coordenador = QUsuario.usuario;

		JPQLQuery<PlanoEnsinoDTO> query = getQuerydsl().createQuery()
			.select(Projections.constructor(PlanoEnsinoDTO.class, plano.uuid,
				turma.statusPlanoEnsino, turma.uuid, turma.nome, curso.nome,
				professor.nome, disciplina.nome, disciplina.ementa,
				disciplina.contribuicaoFormacao, plano.conteudo, plano.criterioAvaliacao))
			.innerJoin(plano.turma, turma)
			.innerJoin(turma.disciplina, disciplina)
			.innerJoin(turma.professor, professor)
			.innerJoin(turma.curso, curso)
			.innerJoin(curso.coordenador, coordenador)
			.orderBy(plano.dataHoraCadastro.desc());
		return Optional.ofNullable(query.fetchFirst());
	}
}
