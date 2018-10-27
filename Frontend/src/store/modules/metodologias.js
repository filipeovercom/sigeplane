import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: uid(),
        descricao: 'Aula expositiva',
        utilizacao: [
          {
            curso: 'Sistemas de Informação',
            qtd: '15'
          },
          {
            curso: 'Administração',
            qtd: '10'
          }
        ]
      },
      {
        id: uid(),
        descricao: 'Aula prática',
        utilizacao: [
          {
            curso: 'Sistemas de Informação',
            qtd: '15'
          },
          {
            curso: 'Administração',
            qtd: '10'
          }
        ]
      },
      {
        id: uid(),
        descricao: 'Leitura de artigo científico',
        utilizacao: [
          {
            curso: 'Sistemas de Informação',
            qtd: '15'
          },
          {
            curso: 'Administração',
            qtd: '10'
          }
        ]
      },
      {
        id: uid(),
        descricao: 'Avaliações formais contendo questões trabalhadas em sala, oriundas dos trabalhos de pesquisa, artigos e projetos práticos.',
        utilizacao: [
          {
            curso: 'Sistemas de Informação',
            qtd: '15'
          },
          {
            curso: 'Administração',
            qtd: '10'
          }
        ]
      }
    ]
  },
  getters: {
    getData (state) {
      return state.data;
    }
  },
  mutations: {
    addMetodologiaToData (state, metodologia) {
      metodologia.id = uid();
      state.data.push(metodologia);
    }
  },
  actions: {
    addMetodologia ({commit}, metodologia) {
      commit('addMetodologiaToData', metodologia);
    }
  }
};
