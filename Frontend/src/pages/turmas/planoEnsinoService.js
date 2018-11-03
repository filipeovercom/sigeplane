import {httpService} from '../../utils/httpService';

export const planoEnsinoService = (() => {
  const apiUrl = '/api/planoensino';

  return {
    getPlanoByTurmaUUID (turmaUUID) {
      return httpService.get(`${apiUrl}/turma/${turmaUUID}`).then(({data}) => data);
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
    registraComentario (planoID, comentario) {
      return httpService.post(`${apiUrl}/${planoID}/comentario`, comentario);
    }
  };
})();
