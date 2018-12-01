package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractEntity;
import com.querydsl.core.annotations.QueryProjection;
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
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "CRONOGRAMA_ITEM")
@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ItemCronograma extends AbstractEntity {

	@ManyToOne
	@JoinColumn(name = "ID_PLANO_ENSINO", referencedColumnName = "UUID",
		foreignKey = @ForeignKey(name = "FK_CRON_ITEM_PLANO"))
	private PlanoEnsino planoEnsino;

	@ElementCollection(fetch = FetchType.EAGER)
	@CollectionTable(name = "CRONOGRAMA_COMPETENCIA",
		joinColumns = @JoinColumn(name = "ID_CRONOGRAMA_ITEM", referencedColumnName = "UUID",
			foreignKey = @ForeignKey(name = "FK_CRONOGRAMA_COMPETENCIA_ITEM")))
	@Column(name = "competencia")
	private List<String> competencias;

	@OneToMany(mappedBy = "itemCronograma")
	@Singular("addSubItem")
	private List<SubItemCronograma> subItens;

	@QueryProjection
	public ItemCronograma(
		UUID uuid,
		UUID planoUUID,
		List<String> competencias) {
		setUuid(uuid);
		this.planoEnsino = PlanoEnsino.builder().uuid(planoUUID).build();
		this.competencias = competencias;
	}
}
