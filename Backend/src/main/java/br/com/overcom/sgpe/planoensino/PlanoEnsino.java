package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.comentario.Comentario;
import br.com.overcom.sgpe.turma.Turma;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
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

	@OneToMany(mappedBy = "planoEnsino")
	private List<Comentario> comentarios;


}
