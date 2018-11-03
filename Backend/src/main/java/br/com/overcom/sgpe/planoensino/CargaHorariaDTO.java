package br.com.overcom.sgpe.planoensino;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CargaHorariaDTO implements Serializable {
	@NotNull(message = "Quantidade de horas teórica deve ser preenchida.")
	@Min(value = 0, message = "Quantidade de horas teórica deve maior ou igual a 0(zero)")
	private Integer qtdHorasTeorica;

	@NotNull(message = "Quantidade de horas pratica deve ser preenchida.")
	@Min(value = 0, message = "Quantidade de horas pratica deve maior ou igual a 0(zero)")
	private Integer qtdHorasPratica;
}
