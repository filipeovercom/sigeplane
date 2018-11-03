package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.curso.QCurso;
import br.com.overcom.sgpe.disciplina.QDisciplina;
import br.com.overcom.sgpe.seguranca.usuario.QUsuario;
import br.com.overcom.sgpe.turma.QTurma;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.jpa.JPQLQuery;
import org.javers.core.Javers;
import org.javers.spring.annotation.JaversAuditable;
import org.springframework.beans.factory.annotation.Autowired;

import javax.transaction.Transactional;
import java.util.Optional;
import java.util.UUID;

public class PlanoEnsinoRepositoryImpl extends QueryDslSupport implements PlanoEnsinoRepositoryCustom {

	private final Javers javers;

	@Autowired
	public PlanoEnsinoRepositoryImpl(Javers javers) {
		super(PlanoEnsino.class);
		this.javers = javers;
	}

	@Override
	public Optional<PlanoEnsinoDTO> findUltimoPlanoByTurma(UUID turmaUUID) {
		QPlanoEnsino plano       = QPlanoEnsino.planoEnsino;
		QTurma       turma       = QTurma.turma;
		QCurso       curso       = QCurso.curso;
		QUsuario     coordenador = new QUsuario("coordenador");
		QDisciplina  disciplina  = QDisciplina.disciplina;
		QUsuario     professor   = new QUsuario("professor");

		JPQLQuery<PlanoEnsinoDTO> query = getQuerydsl().createQuery()
			.select(PlanoEnsinoDTO.getProjectionConstructor(plano, turma, curso, coordenador, disciplina, professor))
			.from(plano)
			.innerJoin(plano.turma, turma)
			.innerJoin(turma.disciplina, disciplina)
			.innerJoin(turma.professor, professor)
			.innerJoin(turma.curso, curso)
			.innerJoin(curso.coordenador, coordenador)
			.where(turma.uuid.eq(turmaUUID))
			.orderBy(turma.dataHoraCadastro.desc());
		return Optional.ofNullable(query.fetchFirst());
	}

	@Override
	@JaversAuditable
	@Transactional
	public void updateCargaHoraria(PlanoEnsino planoEnsino) throws NegocioException {
		QPlanoEnsino plano = QPlanoEnsino.planoEnsino;
		long result = update(plano)
			.set(plano.qtdHorasTeorica, planoEnsino.getQtdHorasTeorica())
			.set(plano.qtdHorasPratica, planoEnsino.getQtdHorasPratica())
			.where(plano.id.eq(planoEnsino.getId()))
			.execute();
		if (result < 1) {
			throw new NegocioException("Nenhum plano foi atualizado");
		}
	}

	@Override
	@JaversAuditable
	@Transactional
	public void updateContribuicaoFormacao(PlanoEnsino planoEnsino) throws NegocioException {
		QPlanoEnsino plano = QPlanoEnsino.planoEnsino;
		long result = update(plano)
			.set(plano.contribuicaoFormacao, planoEnsino.getContribuicaoFormacao())
			.where(plano.id.eq(planoEnsino.getId()))
			.execute();
		if (result < 1) {
			throw new NegocioException("Nenhum plano foi atualizado");
		}
	}

	@Override
	@JaversAuditable
	@Transactional
	public void updateConteudo(PlanoEnsino planoEnsino) throws NegocioException {
		QPlanoEnsino plano = QPlanoEnsino.planoEnsino;
		long result = update(plano)
			.set(plano.conteudo, planoEnsino.getConteudo())
			.where(plano.id.eq(planoEnsino.getId()))
			.execute();
		if (result < 1) {
			throw new NegocioException("Nenhum plano foi atualizado");
		}
	}

	@Override
	@JaversAuditable
	@Transactional
	public void updateCriteriosAvaliacao(PlanoEnsino planoEnsino) throws NegocioException {
		QPlanoEnsino plano = QPlanoEnsino.planoEnsino;
		long result = update(plano)
			.set(plano.criterioAvaliacao, planoEnsino.getCriterioAvaliacao())
			.where(plano.id.eq(planoEnsino.getId()))
			.execute();
		if (result < 1) {
			throw new NegocioException("Nenhum plano foi atualizado");
		}
	}
}
