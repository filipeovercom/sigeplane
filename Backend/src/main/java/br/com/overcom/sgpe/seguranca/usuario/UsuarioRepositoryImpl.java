package br.com.overcom.sgpe.seguranca.usuario;

import com.querydsl.jpa.impl.JPAQuery;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Optional;

public class UsuarioRepositoryImpl implements UsuarioRepositoryCustom {

	@PersistenceContext private EntityManager entityManager;

	@Override
	public Optional<Usuario> findByEmailWithPerfis(String email) {
		JPAQuery<Usuario> query   = new JPAQuery<>(entityManager);
		QUsuario          usuario = QUsuario.usuario;
		return Optional.ofNullable(query
			.from(usuario)
			.distinct()
			.innerJoin(usuario.perfis)
			.fetchJoin()
			.where(usuario.email.eq(email))
			.fetchOne());
	}

	@Override
	public Optional<Usuario> findByMatriculaEmailWithPerfis(String matriculaOuEmail) {
		JPAQuery<Usuario> query   = new JPAQuery<>(entityManager);
		QUsuario          usuario = QUsuario.usuario;
		return Optional.ofNullable(query
			.from(usuario)
			.distinct()
			.innerJoin(usuario.perfis)
			.fetchJoin()
			.where(usuario.matricula.eq(matriculaOuEmail).or(usuario.email.eq(matriculaOuEmail)))
			.fetchOne());

	}
}
