package br.com.overcom.sgpe.seguranca.configuration;


import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import br.com.overcom.sgpe.seguranca.usuario.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Optional;

@Configuration("auditorResolver")
public class AuditorResolver implements AuditorAware<Usuario> {

	private final UsuarioService usuarioService;

	@Autowired
	public AuditorResolver(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}

	@Override
	public Optional<Usuario> getCurrentAuditor() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null || !authentication.isAuthenticated()) {
			return Optional.empty();
		}
		return usuarioService.findByMatricula((String) authentication.getPrincipal());
	}
}
