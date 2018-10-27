package br.com.overcom.sgpe.seguranca.configuration;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

public class UsuarioDTO implements UserDetails {
	private String                                 nome;
	private String                                 email;
	private String                                 matricula;
	private String                                 password;
	private Collection<? extends GrantedAuthority> authorities;

	public UsuarioDTO(String nome, String matricula, String email, String password,
		Collection<? extends GrantedAuthority> authorities) {
		this.nome = nome;
		this.matricula = matricula;
		this.email = email;
		this.password = password;
		this.authorities = authorities;
	}

	public String getNome() {
		return nome;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return matricula;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	public String getEmail() {
		return email;
	}

	public String getMatricula() {
		return matricula;
	}
}
