package br.com.overcom.sgpe.seguranca.usuario;

import br.com.overcom.sgpe.abstracao.AbstractRepository;

import java.util.Optional;

public interface UsuarioRepository extends AbstractRepository<Usuario>, UsuarioRepositoryCustom {

	/**
	 * Busca um {@link Usuario} dado um email
	 *
	 * @param email
	 * @return {@link Usuario}
	 */
	Optional<Usuario> findByEmail(String email);

	Optional<Usuario> findByMatricula(String matricula);
}
