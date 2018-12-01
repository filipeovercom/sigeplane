package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import br.com.overcom.sgpe.comentario.Comentario;
import br.com.overcom.sgpe.turma.Turma;
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
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "PLANO_ENSINO")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@NoArgsConstructor
public class PlanoEnsino extends AbstractEntity {

	@Column(name = "CONTRIBUICAO_FORMACAO", columnDefinition = "TEXT")
	private String  contribuicaoFormacao;

	@Column(columnDefinition = "TEXT")
	private String  conteudo;

	@Column(name = "CRITERIO_AVALIACAO", columnDefinition = "TEXT")
	private String  criterioAvaliacao;

	@Column(name = "QTD_HORAS_TEORICA")
	private Integer qtdHorasTeorica;

	@Column(name = "QTD_HORAS_PRATICA")
	private Integer qtdHorasPratica;

	@ManyToOne
	@JoinColumn(name = "ID_TURMA", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_PLANO_TURMA"))
	private Turma turma;

	@OneToMany(mappedBy = "planoEnsino")
	private List<ItemCronograma> itensCronograma;

	@OneToMany(mappedBy = "planoEnsino")
	private List<Comentario> comentarios;

	@Builder
	public PlanoEnsino(
		UUID uuid, boolean deleted, LocalDateTime dataHoraCadastro,
		String contribuicaoFormacao, String conteudo, String criterioAvaliacao, Integer qtdHorasTeorica,
		Integer qtdHorasPratica, Turma turma,
		List<ItemCronograma> itensCronograma, List<Comentario> comentarios) {
		super(uuid, deleted, dataHoraCadastro);
		this.contribuicaoFormacao = contribuicaoFormacao;
		this.conteudo = conteudo;
		this.criterioAvaliacao = criterioAvaliacao;
		this.qtdHorasTeorica = qtdHorasTeorica;
		this.qtdHorasPratica = qtdHorasPratica;
		this.turma = turma;
		this.itensCronograma = itensCronograma;
		this.comentarios = comentarios;
	}
}
