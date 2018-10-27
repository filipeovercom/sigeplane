package br.com.overcom.sgpe.seguranca;

import br.com.overcom.sgpe.configuracao.ConfigSistema;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import java.io.Serializable;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ContextoDTO implements Serializable {
	@NonNull
	private Usuario       usuario;
	@NonNull
	private ConfigSistema configSistema;
}
