package br.com.overcom.sgpe.comum;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Embeddable;

@Embeddable
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Endereco {

	private String logradouro;
	private String bairro;
	private String cidade;
	private String estado;
	private String cep;
	private String complemento;
	private String proximidade;

}
