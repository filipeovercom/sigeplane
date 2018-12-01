import {httpService} from '../../../utils/httpService';

export const habilidadeService = (() => {
  const apiUrl = '/api/habilidades';

  return {
    getAllByDescricao (descricao) {
      return httpService.get(`${apiUrl}/descricao/${descricao}`).then(({data}) => data);
    }
  };
})();
