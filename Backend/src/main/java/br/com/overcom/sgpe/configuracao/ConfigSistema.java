package br.com.overcom.sgpe.configuracao;

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
@Table(name = "CONFIG_SISTEMA")
@Data
@EqualsAndHashCode(callSuper = true, onlyExplicitlyIncluded = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ConfigSistema extends AbstractEntity {

	@Column(name = "time_zone", length = 10)
	private String timeZone;

	@Column(name = "locale", length = 10)
	private String locale;

	@Column(name = "config_inicial_concluida")
	private Boolean configInicialConcluida;

}
