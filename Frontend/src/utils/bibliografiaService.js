import {httpService} from './httpService';

export const BibliografiaService = (() => {
  const apiUrl = '/api/bibliografias';

  return {
    buscaLimitadaPorNome: (searchValue) => {
      return httpService.get(apiUrl, {
        searchValue: searchValue || '',
        page: 0,
        size: 5
      }).then(({data}) => data.content);
    }
  };
})();
