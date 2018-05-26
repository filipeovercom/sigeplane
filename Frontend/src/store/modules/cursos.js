import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: '1',
        nome: 'Sistemas de Informação',
        coordenador: 'Stephany Moraes Martins'
      },
      {
        id: '2',
        nome: 'Direito',
        coordenador: 'Emanuelle Araujo Correa'
      },
      {
        id: '3',
        nome: 'Administração',
        coordenador: 'Luzinete Almeida'
      }
    ]
  },
  getters: {
    getData (state) {
      return state.data;
    }
  },
  mutations: {
    addCursoToData (state, curso) {
      curso.id = uid();
      state.data.push(curso);
    }
  },
  actions: {
    addCurso ({commit}, curso) {
      commit('addCursoToData', curso);
    }
  }
};
