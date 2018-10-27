package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.AbstractService;
import br.com.overcom.sgpe.abstracao.NegocioException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class PlanoEnsinoService extends AbstractService<PlanoEnsino> {

	private final PlanoEnsinoRepository planoEnsinoRepository;

	@Autowired
	public PlanoEnsinoService(PlanoEnsinoRepository planoEnsinoRepository) {
		super(planoEnsinoRepository);
		this.planoEnsinoRepository = planoEnsinoRepository;
	}

	@Override
	public Optional<PlanoEnsino> findByUUID(UUID uuid) {
		return planoEnsinoRepository.findOne(QPlanoEnsino.planoEnsino.uuid.eq(uuid));
	}

	public PlanoEnsinoDTO findUltimoPlanoByTurma(UUID turmaUUID) throws NegocioException {
		PlanoEnsinoDTO planoEnsinoDTO = planoEnsinoRepository.findUltimoPlanoByTurma(turmaUUID)
			.orElseThrow(() -> new NegocioException("Plano não encontrado para a turma informada"));
		return planoEnsinoDTO;
	}
}
