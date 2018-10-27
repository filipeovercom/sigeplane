package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.bibliografia.Bibliografia;
import br.com.overcom.sgpe.bibliografia.ReferenciaBibliografica;
import br.com.overcom.sgpe.comentario.Comentario;
import br.com.overcom.sgpe.turma.Turma;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.CascadeType;
import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "PLANO_ENSINO")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PlanoEnsino extends AbstractEntity {

	@Column(name = "CONTRIBUICAO_FORMACAO", columnDefinition = "TEXT")
	private String  contribuicaoFormacao;
	@Column(columnDefinition = "TEXT")
	private String  conteudo;
	@Column(name = "CRITERIO_AVALIACAO", columnDefinition = "TEXT")
	private String  criterioAvaliacao;
	private Integer qtdHorasTeorica;
	private Integer qtdHorasPratica;

	@ManyToOne
	@JoinColumn(name = "ID_TURMA", referencedColumnName = "ID",
		foreignKey = @ForeignKey(name = "FK_PLANO_TURMA"))
	private Turma turma;

	@OneToMany(mappedBy = "planoEnsino")
	private List<ItemCronograma> itensCronograma;

	@ManyToMany
	@JoinTable(name = "PLANO_BIBLIOGRAFIA_BASICA",
		joinColumns = @JoinColumn(name = "ID_PLANO", referencedColumnName = "ID",
			foreignKey = @ForeignKey(name = "FK_PLANO_BIBLI_BAS_PLANO")),
		inverseJoinColumns = @JoinColumn(name = "ID_BIBLIOGRAFIA", referencedColumnName = "ID",
			foreignKey = @ForeignKey(name = "FK_PLANO_BIBLI_BAS_BIBLI")))
	private List<Bibliografia> bibliografiaBasica;

	@OneToMany(mappedBy = "planoEnsino", orphanRemoval = true, cascade = {CascadeType.MERGE, CascadeType.PERSIST})
	private List<ReferenciaBibliografica> bibliografia;

	@ElementCollection
	@CollectionTable(name = "PLANO_COMENT_CRONOGRAMA",
		joinColumns = @JoinColumn(name = "ID_PLANO_ENSINO", referencedColumnName = "ID",
			foreignKey = @ForeignKey(name = "FK_COMENT_CRONO_PLANO")))
	@Column(name = "COMENTARIO")
	private List<Comentario> comentariosCronograma;

	@ElementCollection
	@CollectionTable(name = "PLANO_COMENT_CONTEUDO",
		joinColumns = @JoinColumn(name = "ID_PLANO_ENSINO", referencedColumnName = "ID",
			foreignKey = @ForeignKey(name = "FK_COMENT_CONTEUDO_PLANO")))
	@Column(name = "COMENTARIO")
	private List<Comentario> comentariosConteudo;
}
