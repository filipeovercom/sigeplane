import _axios      from './axiosWrapper';
import {resources} from './constants';

export const PeriodoService = (() => {
  return {
    saveNewPeriodo: (periodo) => {
      return _axios.request({
        method: 'post',
        url: resources.periodos.root,
        data: periodo
      }).then((data) => !!data.id);
    },
    getPeriodosByNome (descricao) {
      return _axios.request({
        url: `${resources.periodos.root}/consulta`,
        params: {
          descricao,
          size: 5
        }
      }).then(({data}) => data);
    },
    selecionaPeriodo (periodoUUID) {
      return _axios.request({
        method: 'post',
        url: resources.periodos.selecionaPeriodo(periodoUUID)
      });
    }
  };
})();
