import {httpService} from '../../../utils/httpService';

export const competenciaService = (() => {
  const apiUrl = '/api/competencias';

  return {
    getAllByDescricao (descricao) {
      return httpService.get(`${apiUrl}/descricao/${descricao}`).then(({data}) => data);
    }
  };
})();
