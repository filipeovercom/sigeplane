package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.NegocioException;

import java.util.Optional;
import java.util.UUID;

public interface PlanoEnsinoRepositoryCustom {
	Optional<PlanoEnsinoDTO> findUltimoPlanoByTurma(UUID turmaUUID);

	void updateCargaHoraria(PlanoEnsino planoEnsino) throws NegocioException;

	void updateContribuicaoFormacao(PlanoEnsino planoEnsino) throws NegocioException;

	void updateConteudo(PlanoEnsino planoEnsino) throws NegocioException;

	void updateCriteriosAvaliacao(PlanoEnsino planoEnsino) throws NegocioException;
}
