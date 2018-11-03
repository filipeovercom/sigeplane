import {httpService} from './httpService';

export const UsuarioService = (() => {
  const apiUrl = '/api/usuarios';
  return {
    getAllProfessores ({page, rowsPerPage, sortBy, descending}, nome, ativos) {
      const params = {
        nome: nome ? encodeURI(nome) : '',
        page: page ? page - 1 : 0,
        size: rowsPerPage || 10,
        sort: sortBy ? `${sortBy},${descending ? 'desc' : 'asc'}` : 'nome,asc'
      };

      if (ativos !== undefined) params.ativos = ativos;

      return httpService.get(`${apiUrl}/professores`, params).then(({data}) => data);
    }
  };
})();
