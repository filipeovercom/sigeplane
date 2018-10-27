package br.com.overcom.sgpe.disciplina;

import br.com.overcom.sgpe.abstracao.NegocioException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;
import java.util.UUID;

public interface DisciplinaRepositoryCustom {
	Page<Disciplina> findAllBySearchValue(String searchValue, Pageable pageable);

	Optional<Disciplina> findOneByUuidWithBibliografia(UUID uuid);

	void updateReferencias(Disciplina disciplina);

	void update(Disciplina disciplina) throws NegocioException;
}
