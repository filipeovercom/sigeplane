import _axios      from './axiosWrapper';
import {resources} from './constants';

export const CursoService = (() => {
  return {
    buscaLimitadaPorNome: (nome) => {
      return _axios.request({
        url: resources.cursos.root,
        params: {
          nome: nome || '',
          page: 0,
          size: 5
        }
      }).then(({data}) => data.content);
    }
  };
})();
