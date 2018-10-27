import _axios      from '../../utils/axiosWrapper';
import {resources} from '../../utils/constants';

export const DisciplinaService = (() => {
  return {
    getDisciplinas ({page, rowsPerPage, sortBy, descending}, filter) {
      return _axios.request({
        url: `${resources.disciplinas.root}`,
        params: {
          searchValue: filter ? encodeURI(filter) : '',
          page: page ? page - 1 : 0,
          size: rowsPerPage || 10,
          sort: sortBy ? `${sortBy},${descending ? 'desc' : 'asc'}` : 'nome,asc'
        }
      }).then(({data}) => {
        return data;
      });
    },
    insertDisciplina (disciplina) {
      console.log('Entrou no insert');
      return _axios.request({
        method: 'post',
        url: resources.disciplinas.root,
        data: disciplina
      });
    },
    updateDisciplina (disciplina) {
      console.log('Entrou no update');
      return _axios.request({
        method: 'put',
        url: resources.disciplinas.root,
        data: disciplina
      });
    },
    getDisciplinaByUUID (uuid) {
      return _axios.request({
        url: `${resources.disciplinas.root}/${uuid}`
      }).then(({data}) => data);
    }
  };
})();
