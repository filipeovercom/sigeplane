package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.Singular;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "CRONOGRAMA_SUB_ITEM")
@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SubItemCronograma extends AbstractEntity {

	@ManyToOne
	@JoinColumn(name = "ID_CRONOGRAMA_ITEM", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_SUBITEM_ITEM"))
	private ItemCronograma itemCronograma;

	@ElementCollection
	@CollectionTable(name = "CRONOGRAMA_HABILIDADE",
		joinColumns = @JoinColumn(name = "ID_SUB_ITEM", referencedColumnName = "UUID",
			foreignKey = @ForeignKey(name = "FK_CRON_HAB_SUB_ITEM")))
	@Column(name = "habilidade")
	private List<String> habilidades;

	@OneToMany(mappedBy = "subItemCronograma")
	@Singular("addData")
	private List<DataCronograma> datas;
}
