package br.com.overcom.sgpe.seguranca.configuration;

import br.com.overcom.sgpe.seguranca.perfil.Perfil;
import br.com.overcom.sgpe.seguranca.usuario.Usuario;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;

public class UsuarioDTOFactory {

	public static UsuarioDTO create(Usuario usuario) {
		if (Objects.nonNull(usuario))
			return new UsuarioDTO(usuario.getUuid(), usuario.getNome(), usuario.getMatricula(), usuario.getEmail(),
				usuario.getPassword(),
				mapToGrantedAuthorities(usuario));
		else return null;
	}

	private static List<GrantedAuthority> mapToGrantedAuthorities(Usuario usuario) {
		Set<Perfil>            perfis      = usuario.getPerfis();
		List<GrantedAuthority> authorities = new ArrayList<>();
		perfis.forEach(perfil -> authorities.add(new SimpleGrantedAuthority(perfil.name())));
		return authorities;
	}
}
