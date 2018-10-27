import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: uid(),
        descricao: 'Desenvolver o conceito de função do primeiro grau associado a assuntos simples do cotidiano ' +
        'e a conceitos da economia.',
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
        descricao: ' Aplicar o conceito e as propriedades das funções para resolver problemas simples de ' +
        'interessada Economia e Administração.',
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
        descricao: 'Desenvolver o conceito de função do segundo grau associado a assuntos simples do cotidiano ' +
        'e a conceitos da economia.',
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
        descricao: 'Desenvolver o conceito de função do primeiro grau associado a assuntos simples do cotidiano ' +
          'e a conceitos da economia.',
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
        descricao: ' Aplicar o conceito e as propriedades das funções para resolver problemas simples de ' +
          'interessada Economia e Administração.',
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
        descricao: 'Desenvolver o conceito de função do segundo grau associado a assuntos simples do cotidiano ' +
          'e a conceitos da economia.',
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
        descricao: 'Desenvolver o conceito de função do primeiro grau associado a assuntos simples do cotidiano ' +
          'e a conceitos da economia.',
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
        descricao: ' Aplicar o conceito e as propriedades das funções para resolver problemas simples de ' +
          'interessada Economia e Administração.',
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
        descricao: 'Desenvolver o conceito de função do segundo grau associado a assuntos simples do cotidiano ' +
          'e a conceitos da economia.',
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
    addHabilidadeToData (state, habilidade) {
      habilidade.id = uid();
      state.data.push(habilidade);
    }
  },
  actions: {
    addHabilidade ({commit}, habilidade) {
      commit('addHabilidadeToData', habilidade);
    }
  }
};
