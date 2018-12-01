package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractDTO;
import br.com.overcom.sgpe.curso.QCurso;
import br.com.overcom.sgpe.disciplina.QDisciplina;
import br.com.overcom.sgpe.periodoletivo.QPeriodoLetivo;
import br.com.overcom.sgpe.seguranca.usuario.QUsuario;
import br.com.overcom.sgpe.turma.QTurma;
import br.com.overcom.sgpe.turma.TurmaDTO;
import com.querydsl.core.annotations.QueryProjection;
import com.querydsl.core.types.ConstructorExpression;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@NoArgsConstructor
public class PlanoEnsinoDTO extends AbstractDTO {

	private TurmaDTO turma;
	private String   contribuicaoFormacao;
	private String   conteudo;
	private String   criteriosAvaliacao;
	private Integer  qtdHorasTeorica;
	private Integer  qtdHorasPratica;

	@Builder
	@QueryProjection
	public PlanoEnsinoDTO(
		UUID uuid,
		String contribuicaoFormacao,
		String conteudo,
		String criteriosAvaliacao,
		Integer qtdHorasTeorica,
		Integer qtdHorasPratica,
		UUID uuidTurma,
		String nomeTurma,
		StatusPlanoEnsino status,
		UUID uuidCurso,
		String nomeCurso,
		UUID uuidCoordenador,
		String nomeCoordenador,
		UUID uuidDisciplina,
		String disciplina,
		String ementa,
		UUID uuidProfessor,
		String nomeProfessor,
		String periodo) {
		super(uuid);
		this.contribuicaoFormacao = contribuicaoFormacao;
		this.conteudo = conteudo;
		this.criteriosAvaliacao = criteriosAvaliacao;
		this.qtdHorasTeorica = qtdHorasTeorica;
		this.qtdHorasPratica = qtdHorasPratica;
		this.turma = TurmaDTO.builder()
			.uuid(uuidTurma)
			.nome(nomeTurma)
			.status(status)
			.uuidCurso(uuidCurso)
			.nomeCurso(nomeCurso)
			.uuidCoordenador(uuidCoordenador)
			.nomeCoordenador(nomeCoordenador)
			.uuidDisciplina(uuidDisciplina)
			.disciplina(disciplina)
			.ementa(ementa)
			.uuidProfessor(uuidProfessor)
			.nomeProfessor(nomeProfessor)
			.periodo(periodo)
			.build();
	}

	public static ConstructorExpression<PlanoEnsinoDTO> getProjectionConstructor(
		QPlanoEnsino plano,
		QTurma turma,
		QCurso curso,
		QUsuario coordenador,
		QDisciplina disciplina,
		QUsuario professor, QPeriodoLetivo periodoLetivo) {
		return new QPlanoEnsinoDTO(
			plano.uuid, plano.contribuicaoFormacao, plano.conteudo, plano.criterioAvaliacao,
			plano.qtdHorasTeorica, plano.qtdHorasPratica,
			turma.uuid, turma.nome, turma.statusPlanoEnsino,
			curso.uuid, curso.nome,
			coordenador.uuid, coordenador.nome,
			disciplina.uuid, disciplina.nome, disciplina.ementa,
			professor.uuid, professor.nome, periodoLetivo.descricao);
	}
}
