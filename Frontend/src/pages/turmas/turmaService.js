import _axios         from '../../utils/axiosWrapper';
import {resources}    from '../../utils/constants';
import {LocalStorage} from 'quasar';

export const TurmaService = (() => {
  return {
    getTurmas ({page, rowsPerPage, sortBy, descending}, filters = {}) {
      const usuarioLogado = LocalStorage.get.item('contexto').usuarioLogado;
      return _axios.request({
        url: resources.turmas.periodo(usuarioLogado.preferenciaUsuario.periodoSelecionado.uuid),
        params: {
          ...filters,
          page: page ? page - 1 : 0,
          size: rowsPerPage || 10,
          sort: sortBy ? `${sortBy},${descending ? 'desc' : 'asc'}` : 'dataHoraCadastro,desc'
        }
      }).then(({data}) => {
        return data;
      });
    },
    insertTurma (turma) {
      return _axios.request({
        method: 'post',
        url: resources.turmas.root,
        data: turma
      });
    },
    updateTurma (turma) {
      return _axios.request({
        method: 'put',
        url: resources.turmas.root,
        data: turma
      });
    },
    getTurmaByUUID (uuid) {
      return _axios.request({
        url: `${resources.turmas.root}/${uuid}`
      }).then(({data}) => data);
    },
    getPlanoTurmaByUUID (uuid) {
      return _axios.request({
        url: resources.turmas.plano(uuid)
      }).then(({data}) => data);
    },
    getTurmasByStatus (pagination, status) {
      return this.getTurmas(pagination, {statusPlanoEnsino: status});
    }
  };
})();
