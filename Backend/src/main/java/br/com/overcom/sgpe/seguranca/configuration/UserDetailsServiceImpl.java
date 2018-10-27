package br.com.overcom.sgpe.seguranca.configuration;

import br.com.overcom.sgpe.seguranca.usuario.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@Primary
public class UserDetailsServiceImpl implements UserDetailsService {

	private final UsuarioService usuarioService;

	@Autowired
	public UserDetailsServiceImpl(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}

	@Override
	public UserDetails loadUserByUsername(String matricula) throws UsernameNotFoundException {
		return usuarioService
			.findByMatriculaWithPerfis(matricula)
			.map(UsuarioDTOFactory::create)
			.orElseThrow(() -> new UsernameNotFoundException("Usuário não encontrado"));
	}

}
