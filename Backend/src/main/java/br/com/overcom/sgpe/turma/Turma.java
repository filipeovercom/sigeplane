package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.curso.Curso;
import br.com.overcom.sgpe.disciplina.Disciplina;
import br.com.overcom.sgpe.periodoletivo.PeriodoLetivo;
import br.com.overcom.sgpe.planoensino.PlanoEnsino;
import br.com.overcom.sgpe.planoensino.StatusPlanoEnsino;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.Singular;
import org.springframework.util.CollectionUtils;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "TURMA")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Turma extends AbstractEntity {

	private String nome;

	@NotNull(message = "Período Letivo deve ser informado.")
	@ManyToOne
	@JoinColumn(name = "ID_PERIODO_LETIVO", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_TURMA_PERIODO"))
	private PeriodoLetivo periodoLetivo;

	@ManyToOne
	@JoinColumn(name = "ID_DISCIPLINA", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_TURMA_DISCIPLINA"))
	private Disciplina disciplina;

	@ManyToOne
	@JoinColumn(name = "ID_CURSO", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_TURMA_CURSO"))
	private Curso curso;

	@ManyToOne
	@JoinColumn(name = "ID_PROFESSOR", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_TURMA_PROFESSOR"))
	private Usuario professor;

	@Enumerated(EnumType.STRING)
	@Column(name = "STATUS_PLANO")
	private StatusPlanoEnsino statusPlanoEnsino;

	@OneToMany(mappedBy = "turma", cascade = {CascadeType.PERSIST})
	@Singular("addPlano")
	private List<PlanoEnsino> planos;

	public void addPlano(PlanoEnsino planoEnsino) {
		planoEnsino.setTurma(this);
		if (CollectionUtils.isEmpty(this.planos)) {
			this.planos = new ArrayList<>();
		}
		this.planos.add(planoEnsino);
	}
}
