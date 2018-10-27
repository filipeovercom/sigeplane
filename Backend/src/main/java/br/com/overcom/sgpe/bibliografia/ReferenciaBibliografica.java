package br.com.overcom.sgpe.bibliografia;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.disciplina.Disciplina;
import br.com.overcom.sgpe.planoensino.PlanoEnsino;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "REFERENCIA_BIBLIOGRAFICA")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReferenciaBibliografica extends AbstractEntity {

	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "ID_DISCIPLINA", referencedColumnName = "ID", foreignKey = @ForeignKey(name = "FK_DISCI_BIBLI_DISCI"))
	private Disciplina disciplina;

	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "ID_PLANO_ENSINO", referencedColumnName = "ID", foreignKey = @ForeignKey(name = "FK_DISCI_BIBLI_PLANO"))
	private PlanoEnsino planoEnsino;

	@ManyToOne
	@JoinColumn(name = "ID_BIBLIOGRAFIA", referencedColumnName = "ID", foreignKey = @ForeignKey(name = "FK_DISCI_BIBLI_BIBLI"))
	@Fetch(FetchMode.JOIN)
	private Bibliografia bibliografia;

	@Enumerated(EnumType.STRING)
	private TipoBibliografia tipo;
}
