import {httpService} from './httpService';

export const PeriodoService = (() => {
  const apiUrl = '/api/periodoletivo';

  return {
    saveNewPeriodo: (periodo) => {
      return httpService.post(apiUrl, periodo).then((data) => !!data.id);
    },
    getPeriodos: (page = 0, size = 10, sort = 'descricao,asc') => {
      return httpService.get(`${apiUrl}/all`, {
        page, size, sort
      }).then(({data}) => data);
    },
    getPeriodosByNome (descricao) {
      return httpService.get(`${apiUrl}/consulta`, {
        descricao,
        size: 5
      }).then(({data}) => data);
    },
    selecionaPeriodo (periodoUUID) {
      return httpService.post(`${apiUrl}/${periodoUUID}`);
    }
  };
})();
