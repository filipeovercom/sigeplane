package br.com.overcom.sgpe.disciplina;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.bibliografia.ReferenciaBibliografica;
import br.com.overcom.sgpe.curso.Curso;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "DISCIPLINA")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Disciplina extends AbstractEntity {

	private String nome;

	@Column(name = "COD_INTERNO")
	private String codigoInterno;

	@Column(columnDefinition = "TEXT")
	private String ementa;

	@Column(name = "QTD_HORAS_TOTAL")
	private Integer qtdHorasTtotal;

	@OneToMany(mappedBy = "disciplina", orphanRemoval = true, cascade = {CascadeType.MERGE, CascadeType.PERSIST})
	private List<ReferenciaBibliografica> bibliografias;

	@ManyToOne
	@JoinColumn(name = "ID_CURSO", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_DISCIPLINA_CURSO"))
	@Fetch(FetchMode.JOIN)
	private Curso curso;
}
