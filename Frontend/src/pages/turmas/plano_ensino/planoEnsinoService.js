import {httpService} from '../../../utils/httpService';

export const planoEnsinoService = (() => {
  const apiUrl = '/api/planoensino';

  return {
    getPlanoByTurmaUUID (turmaUUID) {
      return httpService.get(`${apiUrl}/turma/${turmaUUID}`).then(({data}) => data);
    },
    getPlanoImpressaoByTurmaUUID (turmaUUID) {
      return httpService.get(`${apiUrl}/turma/${turmaUUID}/impressao`).then(({data}) => data);
    },
    updateCargaHoraria (planoID, qtdHorasTeorica, qtdHorasPratica) {
      return httpService.patch(`${apiUrl}/${planoID}/cargahoraria`, {
        qtdHorasTeorica: qtdHorasTeorica,
        qtdHorasPratica: qtdHorasPratica
      });
    },
    updateContribuicaoFormacao (planoID, contribuicaoFormacao) {
      return httpService.patch(`${apiUrl}/${planoID}/contribuicaoformacao`, {
        contribuicaoFormacao: contribuicaoFormacao
      });
    },
    updateConteudo (planoID, conteudo) {
      return httpService.patch(`${apiUrl}/${planoID}/conteudo`, {
        conteudo: conteudo
      });
    },
    updateCriteriosAvaliacao (planoID, criteriosAvaliacao) {
      return httpService.patch(`${apiUrl}/${planoID}/criteriosavaliacao`, {
        criteriosAvaliacao: criteriosAvaliacao
      });
    },
    getItensCronogramaBy (planoUUID) {
      return httpService.get(`${apiUrl}/${planoUUID}/cronograma/item`).then(({data}) => data);
    },
    getSubItensCronogramaByItem (itemUUID) {
      return httpService.get(`${apiUrl}/cronograma/${itemUUID}/subitens`).then(({data}) => data);
    },
    saveNewItemCronograma (planoUUID, competencias) {
      return httpService.post(`${apiUrl}/${planoUUID}/cronograma/item`, {
        competencias: competencias.map(comp => comp.descricao)
      });
    },
    updateItemCronograma (item) {
      return httpService.patch(`${apiUrl}/cronograma/item`, item);
    },
    saveNewSubItemCronograma (subItem) {
      return httpService.post(`${apiUrl}/cronograma/subitem`, subItem);
    }
  };
})();
