package br.com.overcom.sgpe.planoensino.competencia;

import br.com.overcom.sgpe.abstracao.AbstractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class CompetenciaService extends AbstractService<Competencia> {

	private final CompetenciaRepository competenciaRepository;

	@Autowired
	public CompetenciaService(CompetenciaRepository competenciaRepository) {
		super(competenciaRepository);
		this.competenciaRepository = competenciaRepository;
	}

	@Override
	public Optional<Competencia> findByUUID(UUID uuid) {
		return competenciaRepository.findOne(QCompetencia.competencia.uuid.eq(uuid));
	}

	public List<Competencia> findAllByDescricao(String descricao) {
		return competenciaRepository.findAllByDescricao(descricao);
	}
}
