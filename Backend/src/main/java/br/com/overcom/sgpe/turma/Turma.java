package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.curso.Curso;
import br.com.overcom.sgpe.disciplina.Disciplina;
import br.com.overcom.sgpe.periodoletivo.PeriodoLetivo;
import br.com.overcom.sgpe.planoensino.StatusPlanoEnsino;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TURMA")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Turma extends AbstractEntity {

	private String nome;

	@ManyToOne
	@JoinColumn(name = "ID_PERIODO_LETIVO", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_TURMA_PERIODO"))
	private PeriodoLetivo periodoLetivo;

	@ManyToOne
	@JoinColumn(name = "ID_DISCIPLINA", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_TURMA_DISCIPLINA"))
	private Disciplina disciplina;

	@ManyToOne
	@JoinColumn(name = "ID_CURSO", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_TURMA_CURSO"))
	private Curso curso;

	@ManyToOne
	@JoinColumn(name = "ID_PROFESSOR", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_TURMA_PROFESSOR"))
	private Usuario professor;

	@Enumerated(EnumType.STRING)
	@Column(name = "STATUS_PLANO")
	private StatusPlanoEnsino statusPlanoEnsino;
}
