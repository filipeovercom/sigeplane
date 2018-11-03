package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.AbstractDTO;
import br.com.overcom.sgpe.curso.CursoDTO;
import br.com.overcom.sgpe.curso.QCurso;
import br.com.overcom.sgpe.disciplina.DisciplinaDTO;
import br.com.overcom.sgpe.disciplina.QDisciplina;
import br.com.overcom.sgpe.planoensino.StatusPlanoEnsino;
import br.com.overcom.sgpe.seguranca.configuration.UsuarioDTO;
import br.com.overcom.sgpe.seguranca.usuario.QUsuario;
import com.querydsl.core.types.ConstructorExpression;
import com.querydsl.core.types.Projections;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.UUID;

@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@Data
public class TurmaDTO extends AbstractDTO {

	private String            nome;
	private DisciplinaDTO     disciplina;
	private CursoDTO          curso;
	private UsuarioDTO        professor;
	private String            periodo;
	private StatusPlanoEnsino statusPlanoEnsino;

	@Builder
	public TurmaDTO(
		UUID uuid, String nome, StatusPlanoEnsino status, UUID uuidCurso, String nomeCurso, UUID uuidCoordenador,
		String nomeCoordenador,
		UUID uuidDisciplina, String disciplina, String ementa, UUID uuidProfessor, String nomeProfessor) {
		super(uuid);
		this.nome = nome;
		this.disciplina = DisciplinaDTO.builder()
			.uuid(uuidDisciplina)
			.nome(disciplina)
			.ementa(ementa)
			.build();
		this.professor = UsuarioDTO.builder().nome(nomeProfessor).uuid(uuidProfessor).build();
		this.curso = CursoDTO.builder()
			.uuid(uuidCurso)
			.nome(nomeCurso)
			.coordenador(UsuarioDTO.builder().nome(nomeCoordenador).uuid(uuidCoordenador).build())
			.build();
		this.statusPlanoEnsino = status;
	}

	public static ConstructorExpression<TurmaDTO> getProjectionConstructor(
		QTurma turma, QCurso curso, QUsuario coordenador, QDisciplina disciplina, QUsuario professor) {
		return Projections.constructor(TurmaDTO.class,
			turma.uuid, turma.nome, turma.statusPlanoEnsino,
			curso.uuid, curso.nome,
			coordenador.uuid, coordenador.nome,
			disciplina.uuid, disciplina.nome, disciplina.ementa,
			professor.uuid, professor.nome);
	}
}
