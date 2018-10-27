package br.com.overcom.sgpe.turma;

import br.com.overcom.sgpe.abstracao.NegocioException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;
import java.util.UUID;

public interface TurmaRepositoryCustom {
	Optional<Turma> findByUuid(UUID uuid);

	void update(Turma turma) throws NegocioException;

	Page<TurmaDTO> findAllByPeriodoAndParams(UUID periodoLetivo, ConsultaTurmasParams params, Pageable pageable);
}
