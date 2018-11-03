import {httpService}  from '../../utils/httpService';
import {LocalStorage} from 'quasar';

export const TurmaService = (() => {
  const apiUrl = '/api/turmas';

  return {
    getTurmas ({page, rowsPerPage, sortBy, descending}, filters = {}) {
      const usuarioLogado = LocalStorage.get.item('contexto').usuarioLogado;
      return httpService.get(`${apiUrl}/periodo/${usuarioLogado.preferenciaUsuario.periodoSelecionado.uuid}`, {
        ...filters,
        page: page ? page - 1 : 0,
        size: rowsPerPage || 10,
        sort: sortBy ? `${sortBy},${descending ? 'desc' : 'asc'}` : 'dataHoraCadastro,desc'
      }).then(({data}) => {
        return data;
      });
    },
    insertTurma (turma) {
      return httpService.post(apiUrl, turma);
    },
    updateTurma (turma) {
      return httpService.put(apiUrl, turma);
    },
    getTurmaByUUID (uuid) {
      return httpService.get(`${apiUrl}/${uuid}`).then(({data}) => data);
    },
    getTurmasByStatus (pagination, status) {
      return this.getTurmas(pagination, {statusPlanoEnsino: status});
    }
  };
})();
