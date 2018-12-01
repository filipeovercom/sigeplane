package br.com.overcom.sgpe.planoensino.conteudo;

import br.com.overcom.sgpe.abstracao.AbstractService;
import br.com.overcom.sgpe.planoensino.recurso.QRecurso;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ConteudoService extends AbstractService<Conteudo> {

	private final ConteudoRepository repository;

	@Autowired
	public ConteudoService(ConteudoRepository repository) {
		super(repository);
		this.repository = repository;
	}

	@Override
	public Optional<Conteudo> findByUUID(UUID uuid) {
		return repository.findOne(QRecurso.recurso.uuid.eq(uuid));
	}

	public List<Conteudo> findAllByDescricao(String descricao) {
		return repository.findAllByDescricao(descricao);
	}
}