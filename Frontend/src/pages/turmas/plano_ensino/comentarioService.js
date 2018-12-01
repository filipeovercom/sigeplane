import {httpService} from '../../../utils/httpService';

export const comentarioService = (() => {
  const apiUrl = '/api/comentarioService';

  return {
    getComentariosByTipo (planoID, tipo) {
      return httpService.get(`${apiUrl}/${planoID}/comentario`, {tipoComentario: tipo});
    },
    registraComentario (planoID, comentario) {
      return httpService.post(`${apiUrl}/${planoID}/comentario`, comentario);
    }
  };
})();
