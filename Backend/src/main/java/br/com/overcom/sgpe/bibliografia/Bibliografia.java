package br.com.overcom.sgpe.bibliografia;


import br.com.overcom.sgpe.abstracao.AbstractEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "BIBLIOGRAFIA")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Bibliografia extends AbstractEntity {

	@Column(columnDefinition = "TEXT")
	private String descricao;

}
