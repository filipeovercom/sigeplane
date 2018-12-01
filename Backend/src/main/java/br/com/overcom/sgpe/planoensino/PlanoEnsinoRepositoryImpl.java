package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.NegocioException;
import br.com.overcom.sgpe.curso.QCurso;
import br.com.overcom.sgpe.disciplina.QDisciplina;
import br.com.overcom.sgpe.periodoletivo.QPeriodoLetivo;
import br.com.overcom.sgpe.seguranca.usuario.QUsuario;
import br.com.overcom.sgpe.turma.QTurma;
import br.com.overcom.sgpe.utilidades.QueryDslSupport;
import com.querydsl.jpa.JPQLQuery;
import org.javers.core.Javers;
import org.javers.spring.annotation.JaversAuditable;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Objects;
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
		QPlanoEnsino   plano         = QPlanoEnsino.planoEnsino;
		QTurma         turma         = QTurma.turma;
		QCurso         curso         = QCurso.curso;
		QUsuario       coordenador   = new QUsuario("coordenador");
		QDisciplina    disciplina    = QDisciplina.disciplina;
		QUsuario       professor     = new QUsuario("professor");
		QPeriodoLetivo periodoLetivo = QPeriodoLetivo.periodoLetivo;

		JPQLQuery<PlanoEnsinoDTO> query = getQuerydsl().createQuery()
			.select(PlanoEnsinoDTO
				.getProjectionConstructor(plano, turma, curso, coordenador, disciplina, professor, periodoLetivo))
			.from(plano)
			.innerJoin(plano.turma, turma)
			.innerJoin(turma.periodoLetivo, periodoLetivo)
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
			.where(plano.uuid.eq(planoEnsino.getUuid()))
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
			.where(plano.uuid.eq(planoEnsino.getUuid()))
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
			.where(plano.uuid.eq(planoEnsino.getUuid()))
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
			.where(plano.uuid.eq(planoEnsino.getUuid()))
			.execute();
		if (result < 1) {
			throw new NegocioException("Nenhum plano foi atualizado");
		}
	}

	@Override
	public void insertNewItemCronograma(ItemCronograma itemCronograma) throws NegocioException {
		getEntityManager().persist(itemCronograma);
	}

	@Override
	public List<ItemCronograma> findAllItensCronogramaByPlano(UUID planoUUID) {
		QItemCronograma itemCronograma = QItemCronograma.itemCronograma;
		return getQuerydsl().createQuery()
			.select(itemCronograma)
			.from(itemCronograma)
			.distinct()
			.leftJoin(itemCronograma.competencias).fetchJoin()
			.where(itemCronograma.planoEnsino.uuid.eq(planoUUID))
			.fetch();
	}

	@Override
	public List<SubItemCronograma> findAllSubItensByItem(UUID itemUUID) {
		QSubItemCronograma subItemCronograma = QSubItemCronograma.subItemCronograma;
		return getQuerydsl().createQuery()
			.select(subItemCronograma)
			.from(subItemCronograma)
			.distinct()
			.where(subItemCronograma.itemCronograma.uuid.eq(itemUUID))
			.fetch();
	}

	@Override
	public Optional<PlanoEnsinoPreenchimentoDTO> findUltimoPlanoByDisciplinaAndProfessor(
		UUID disciplinaUUID, UUID professorUUID) {
		QPlanoEnsino plano      = QPlanoEnsino.planoEnsino;
		QTurma       turma      = QTurma.turma;
		QDisciplina  disciplina = QDisciplina.disciplina;
		QUsuario     professor  = QUsuario.usuario;

		JPQLQuery<PlanoEnsinoPreenchimentoDTO> query = getQuerydsl().createQuery()
			.select(PlanoEnsinoPreenchimentoDTO.getProjectionConstructor(plano))
			.from(plano)
			.innerJoin(plano.turma, turma)
			.innerJoin(turma.professor, professor).on(professor.uuid.eq(professorUUID))
			.innerJoin(turma.disciplina, disciplina).on(disciplina.uuid.eq(disciplinaUUID))
			.orderBy(turma.dataHoraCadastro.desc());
		return Optional.ofNullable(query.fetchFirst());
	}

	@Override
	public void insertNewSubItemCronograma(SubItemCronograma subItem) throws NegocioException {
		EntityManager entityManager = getEntityManager();
		if (Objects.isNull(entityManager)) throw new NegocioException();
		entityManager.persist(subItem);
	}

	@Override
	public void updateItemCronograma(ItemCronograma itemCronograma) throws NegocioException {
		QItemCronograma qItem = QItemCronograma.itemCronograma;
		Long result = update(qItem)
			.set(qItem.competencias, itemCronograma.getCompetencias())
			.where(qItem.uuid.eq(itemCronograma.getUuid()))
			.execute();
		if (result < 1) {
			throw new NegocioException("Nenhum item foi encontrado para ser atualizado");
		}
	}
}
