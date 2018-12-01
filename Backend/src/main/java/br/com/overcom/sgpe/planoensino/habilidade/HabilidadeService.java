package br.com.overcom.sgpe.planoensino.habilidade;

import br.com.overcom.sgpe.abstracao.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class HabilidadeService extends AbstractService<Habilidade> {

	private final HabilidadeRepository repository;

	@Autowired
	public HabilidadeService(HabilidadeRepository repository) {
		super(repository);
		this.repository = repository;
	}

	@Override
	public Optional<Habilidade> findByUUID(UUID uuid) {
		return repository.findOne(QHabilidade.habilidade.uuid.eq(uuid));
	}

	public List<Habilidade> findAllByDescricao(String descricao) {
		return repository.findAllByDescricao(descricao);
	}
}