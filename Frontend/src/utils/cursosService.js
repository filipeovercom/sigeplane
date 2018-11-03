import {httpService} from './httpService';

export const CursoService = (() => {
  const apiUrl = '/api/cursos';
  return {
    buscaLimitadaPorNome: (nome) => {
      return httpService.get(apiUrl, {
        nome: nome || '',
        page: 0,
        size: 5
      }).then(({data}) => data.content);
    }
  };
})();
