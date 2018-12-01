import {httpService}  from '../../utils/httpService';
import {LocalStorage} from 'quasar';

export const TurmaService = (() => {
  const apiUrl = '/api/turmas';

  return {
    getTurmas ({page, rowsPerPage, sortBy, descending}, filters = {}) {
      return new Promise((resolve, reject) => {
        const usuarioLogado      = LocalStorage.get.item('contexto').usuarioLogado;
        const periodoSelecionado = usuarioLogado.preferenciaUsuario.periodoSelecionado
          ? usuarioLogado.preferenciaUsuario.periodoSelecionado.uuid
          : undefined;
        if (!periodoSelecionado) {
          reject(new Error('Selecione um período letivo para buscar turmas'));
        } else {
          httpService.get(`${apiUrl}/periodo/${periodoSelecionado}`, {
            ...filters,
            page: page ? page - 1 : 0,
            size: rowsPerPage || 10,
            sort: sortBy ? `${sortBy},${descending ? 'desc' : 'asc'}` : 'dataHoraCadastro,desc'
          }).then(({data}) => {
            resolve(data);
          });
        }
      });
    },
    insertTurma (turma) {
      return new Promise(async (resolve, reject) => {
        const usuarioLogado      = LocalStorage.get.item('contexto').usuarioLogado;
        const periodoSelecionado = usuarioLogado.preferenciaUsuario.periodoSelecionado
          ? usuarioLogado.preferenciaUsuario.periodoSelecionado
          : undefined;
        if (!periodoSelecionado) {
          reject(new Error('Necessário selecionar um período letivo'));
        } else {
          await httpService.post(apiUrl, {
            periodoLetivo: periodoSelecionado,
            ...turma
          })
          .then(({data}) => resolve(data))
          .catch(err => reject(err));
        }
      });
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
