package br.com.overcom.sgpe.seguranca.usuario;

import java.util.Optional;

public interface UsuarioRepositoryCustom {
	Optional<Usuario> findByEmailWithPerfis(String email);

	Optional<Usuario> findByMatriculaWithPerfis(String matricula);
}
