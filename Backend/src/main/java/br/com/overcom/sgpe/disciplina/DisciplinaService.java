package br.com.overcom.sgpe.disciplina;

import br.com.overcom.sgpe.abstracao.AbstractService;
import br.com.overcom.sgpe.abstracao.NegocioException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;
import java.util.UUID;

@Service
@Transactional(rollbackOn = {NegocioException.class})
public class DisciplinaService extends AbstractService<Disciplina> {

	private final DisciplinaRepository disciplinaRepository;

	@Autowired
	public DisciplinaService(DisciplinaRepository disciplinaRepository) {
		super(disciplinaRepository);
		this.disciplinaRepository = disciplinaRepository;
	}

	@Override
	public Optional<Disciplina> findByUUID(UUID uuid) {
		return disciplinaRepository.findOneByUuidWithBibliografia(uuid);
	}

	@Override
	public Disciplina insert(Disciplina disciplina) throws NegocioException {
		disciplina = super.insert(disciplina);
		disciplinaRepository.updateReferencias(disciplina);
		return disciplina;
	}

	@Override
	public Disciplina update(Disciplina disciplina) throws NegocioException {
		disciplinaRepository.updateReferencias(disciplina);
		disciplinaRepository.update(disciplina);
		return disciplina;
	}

	Page<Disciplina> findAllBySearchValue(String searchValue, Pageable pageable) {
		return disciplinaRepository.findAllBySearchValue(searchValue, pageable);
	}
}
