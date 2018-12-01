package br.com.overcom.sgpe.planoensino;

import br.com.overcom.sgpe.abstracao.NegocioException;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface PlanoEnsinoRepositoryCustom {
	Optional<PlanoEnsinoDTO> findUltimoPlanoByTurma(UUID turmaUUID);

	void updateCargaHoraria(PlanoEnsino planoEnsino) throws NegocioException;

	void updateContribuicaoFormacao(PlanoEnsino planoEnsino) throws NegocioException;

	void updateConteudo(PlanoEnsino planoEnsino) throws NegocioException;

	void updateCriteriosAvaliacao(PlanoEnsino planoEnsino) throws NegocioException;

	void insertNewItemCronograma(ItemCronograma itemCronograma) throws NegocioException;

	List<ItemCronograma> findAllItensCronogramaByPlano(UUID planoUUID);

	List<SubItemCronograma> findAllSubItensByItem(UUID itemUUID);

	Optional<PlanoEnsinoPreenchimentoDTO> findUltimoPlanoByDisciplinaAndProfessor(
		UUID disciplinaUUID, UUID professorUUID);

	void insertNewSubItemCronograma(SubItemCronograma subItem) throws NegocioException;

	void updateItemCronograma(ItemCronograma itemCronograma) throws NegocioException;
}
