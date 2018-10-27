import _axios      from './axiosWrapper';
import {resources} from './constants';

export const BibliografiaService = (() => {
  return {
    buscaLimitadaPorNome: (searchValue) => {
      return _axios.request({
        url: resources.bibliografias.root,
        params: {
          searchValue: searchValue || '',
          page: 0,
          size: 5
        }
      }).then(({data}) => data.content);
    }
  };
})();
