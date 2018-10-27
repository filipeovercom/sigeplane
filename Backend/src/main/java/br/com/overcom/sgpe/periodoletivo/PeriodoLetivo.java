package br.com.overcom.sgpe.periodoletivo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Entity
@Table(name = "PERIODO_LETIVO")
@Data
@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PeriodoLetivo extends AbstractEntity {

	@NotBlank(message = "Descrição do período deve ser preenchida")
	private String descricao;

	@Column(name = "DT_INICIO_PREENCHIMENTO")
	@NotNull(message = "Data de início do período deve ser preenchida")
	private LocalDate dataInicioPreenchimento;

	@Column(name = "DT_FIM_PREENCHIMENTO")
	@NotNull(message = "Data final do período deve ser preenchida")
	private LocalDate dataFimPreenchimento;

}
