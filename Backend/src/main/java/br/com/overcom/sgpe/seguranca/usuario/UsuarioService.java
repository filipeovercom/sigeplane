package br.com.overcom.sgpe.seguranca.usuario;

import br.com.overcom.sgpe.abstracao.AbstractService;
import br.com.overcom.sgpe.seguranca.perfil.Perfil;
import com.querydsl.core.BooleanBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class UsuarioService extends AbstractService<Usuario> {

	private final UsuarioRepository repository;

	@Autowired
	public UsuarioService(UsuarioRepository repository) {
		super(repository);
		this.repository = repository;
	}

	public Optional<Usuario> findByEmail(String email) {
		return repository.findByEmail(email);
	}

	public Optional<Usuario> findByMatricula(String matricula) {
		return repository.findByMatricula(matricula);
	}

	public Optional<Usuario> findByEmailWithPerfis(String email) {
		return repository.findByEmailWithPerfis(email);
	}

	public Optional<Usuario> findByMatriculaEmailWithPerfis(String matriculaOuEmail) {
		return repository.findByMatriculaEmailWithPerfis(matriculaOuEmail);
	}

	@Override
	public Optional<Usuario> findByUUID(UUID uuid) {
		return repository.findOne(QUsuario.usuario.uuid.eq(uuid));
	}

	public Page<Usuario> findAllProfessoresByNome(String nome, boolean ativo, Pageable pageable) {
		QUsuario       usuario   = QUsuario.usuario;
		BooleanBuilder condition = new BooleanBuilder();

		condition.and(usuario.nome.startsWithIgnoreCase(nome));
		condition.and(usuario.deleted.eq(false));
		condition.and(usuario.perfis.any().eq(Perfil.PROFESSOR));
		if (ativo) condition.and(usuario.ativo.eq(true));

		return repository.findAll(condition, pageable);
	}
}
