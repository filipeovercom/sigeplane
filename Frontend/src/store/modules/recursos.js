import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: uid(),
        descricao: 'Quadro Branco',
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
        descricao: 'Laboratório de Informática',
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
        descricao: 'Computador e Smartphone',
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
        descricao: 'Projetor (Data-Show)',
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
    addRecursoToData (state, recurso) {
      recurso.id = uid();
      state.data.push(recurso);
    }
  },
  actions: {
    addRecurso ({commit}, recurso) {
      commit('addRecursoToData', recurso);
    }
  }
};
