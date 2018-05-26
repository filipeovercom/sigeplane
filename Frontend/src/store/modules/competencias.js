import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: uid(),
        descricao: 'Auxiliar os profissionais das outras áreas a compreenderem a forma com que sistemas de informação ' +
        'podem contribuir para as áreas de negócio.',
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
        descricao: 'Participar e conduzir processos de negociação para o alcance de objetivos.',
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
        descricao: 'Expressar ideias de forma clara, empregando técnicas de comunicação apropriadas para cada situação.',
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
    addCompetenciaToData (state, competencia) {
      competencia.id = uid();
      state.data.push(competencia);
    }
  },
  actions: {
    addCompetencia ({commit}, competencia) {
      commit('addCompetenciaToData', competencia);
    }
  }
};
