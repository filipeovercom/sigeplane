import {httpService} from '../../utils/httpService';

export const DisciplinaService = (() => {
  const apiUrl = '/api/disciplinas';
  return {
    getDisciplinas ({page, rowsPerPage, sortBy, descending}, filter) {
      return httpService.get(apiUrl, {
        searchValue: filter ? encodeURI(filter) : '',
        page: page ? page - 1 : 0,
        size: rowsPerPage || 10,
        sort: sortBy ? `${sortBy},${descending ? 'desc' : 'asc'}` : 'nome,asc'
      }).then(({data}) => {
        return data;
      });
    },
    insertDisciplina (disciplina) {
      return httpService.post(apiUrl, disciplina);
    },
    updateDisciplina (disciplina) {
      return httpService.put(apiUrl, disciplina);
    },
    getDisciplinaByUUID (uuid) {
      return httpService.get(`${apiUrl}/${uuid}`).then(({data}) => data);
    },
    getByCursoAndNomeLimit10 (uuidCurso, nome) {
      return httpService.get(`${apiUrl}/curso/${uuidCurso}`, {nome})
      .then(({data}) => data);
    }
  };
})();
