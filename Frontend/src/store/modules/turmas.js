import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: '1',
        semestre: '2018/1',
        codInterno: '302N4A',
        disciplina: 'Sistemas Operacionais',
        curso: 'Sistemas de Informação',
        professor: 'Me. Stephany Moraes Martins',
        status: true
      },
      {
        id: '2',
        semestre: '2018/1',
        codInterno: '302N7A',
        disciplina: 'Estágio Supervisionado II',
        curso: 'Sistemas de Informação',
        professor: 'Me. Stephany Moraes Martins',
        status: true
      },
      {
        id: '3',
        semestre: '2018/1',
        codInterno: '302N7A',
        disciplina: 'Criatividade Negociação e Empreendedorismo',
        curso: 'Sistemas de Informação',
        professor: 'André Pereira Raposo',
        status: true
      },
      {
        id: '4',
        semestre: '2017/2',
        codInterno: '302N7A',
        disciplina: 'Fundamentos de Matemática',
        curso: 'Sistemas de Informação',
        professor: 'Me. Thiago Ruiz Garcia',
        status: true
      },
      {
        id: '5',
        semestre: '2018/1',
        codInterno: '302N7A',
        disciplina: 'Fundamentos de Matemática',
        curso: 'Sistemas de Informação',
        professor: 'Me. Thiago Ruiz Garcia',
        status: true
      }
    ]
  },
  getters: {
    getData (state) {
      return state.data;
    }
  },
  mutations: {
    addTurmaToData (state, turma) {
      turma.id = uid();
      turma.status = true;
      state.data.unshift(turma);
    }
  },
  actions: {
    addTurma ({commit}, turma) {
      commit('addTurmaToData', turma);
    }
  }
};
