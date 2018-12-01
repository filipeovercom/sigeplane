package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "CRONOGRAMA_DATA")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DataCronograma extends AbstractEntity {

	@ManyToOne
	@JoinColumn(name = "ID_SUB_ITEM", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_DATA_SUBITEM"))
	private SubItemCronograma subItemCronograma;

	@ElementCollection
	@CollectionTable(name = "CRONOGRAMA_DATA_DATAS",
		joinColumns = @JoinColumn(name = "ID_DATA_CRONOGRAMA", referencedColumnName = "UUID",
			foreignKey = @ForeignKey(name = "FK_CRON_DATA_DATA")))
	@Column(name = "data")
	private List<LocalDate> datas;

	@ElementCollection
	@CollectionTable(name = "CRONOGRAMA_CONTEUDO",
		joinColumns = @JoinColumn(name = "ID_DATA_CRONOGRAMA", referencedColumnName = "UUID",
			foreignKey = @ForeignKey(name = "FK_CRON_CONT_DATA")))
	@Column(name = "conteudo")
	private List<String> conteudo;

	@ElementCollection
	@CollectionTable(name = "CRONOGRAMA_METODOLOGIA",
		joinColumns = @JoinColumn(name = "ID_DATA_CRONOGRAMA", referencedColumnName = "UUID",
			foreignKey = @ForeignKey(name = "FK_CRON_METOD_DATA")))
	@Column(name = "metodologia")
	private List<String> metodologia;

	@ElementCollection
	@CollectionTable(name = "CRONOGRAMA_RECURSO",
		joinColumns = @JoinColumn(name = "ID_DATA_CRONOGRAMA", referencedColumnName = "UUID",
			foreignKey = @ForeignKey(name = "FK_CRON_RECUR_DATA")))
	@Column(name = "recurso")
	private List<String> recurso;

	@ElementCollection
	@CollectionTable(name = "CRONOGRAMA_AVALIACAO",
		joinColumns = @JoinColumn(name = "ID_DATA_CRONOGRAMA", referencedColumnName = "UUID",
			foreignKey = @ForeignKey(name = "FK_CRON_AVALI_DATA")))
	@Column(name = "avaliacao")
	private List<String> avaliacao;
}
