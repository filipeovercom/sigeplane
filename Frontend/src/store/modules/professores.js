import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: '1',
        nome: 'Stephany Moraes Martins',
        email: 'larissa.martins@catolica-to.edu.br',
        matricula: 'FC20080001'
      },
      {
        id: '2',
        nome: 'André Pereira Raposo',
        email: 'andre.raposo@catolica-to.edu.br',
        matricula: 'FC20080002'
      },
      {
        id: '3',
        nome: 'Emanuelle Araujo Correa',
        email: 'emanuelle.correa@catolica-to.edu.br',
        matricula: 'FC20080003'
      }
    ]
  },
  getters: {
    getData (state) {
      return state.data;
    }
  },
  mutations: {
    addProfessorToData (state, professor) {
      professor.id = uid();
      state.data.push(professor);
    }
  },
  actions: {
    addProfessor ({commit}, professor) {
      commit('addProfessorToData', professor);
    }
  }
};
