package br.com.overcom.sgpe.planoensino;

import java.util.Optional;
import java.util.UUID;

public interface PlanoEnsinoRepositoryCustom {
	Optional<PlanoEnsinoDTO> findUltimoPlanoByTurma(UUID turmaUUID);
}
