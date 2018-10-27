import _axios      from './axiosWrapper';
import {resources} from './constants';

export const UsuarioService = (() => {
  return {
    getAllProfessores ({page, rowsPerPage, sortBy, descending}, nome, ativos) {
      const params = {
        nome: nome ? encodeURI(nome) : '',
        page: page ? page - 1 : 0,
        size: rowsPerPage || 10,
        sort: sortBy ? `${sortBy},${descending ? 'desc' : 'asc'}` : 'nome,asc'
      };

      if (ativos !== undefined) params.ativos = ativos;

      return _axios.request({
        url: `${resources.usuarios.professoresByNome}`,
        params: params
      }).then(({data}) => {
        return data;
      });
    }
  };
})();
