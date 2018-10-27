import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: uid(),
        descricao: 'Apresentação do plano de ensino/ Função do primeiro grau e suas aplicações.',
        curso: ''
      },
      {
        id: uid(),
        descricao: 'Função do segundo grau e suas aplicações. Avaliação diagnóstica.',
        curso: ''
      },
      {
        id: uid(),
        descricao: 'Aspectos fundamentais das linguagens de programação: sintaxe, semântica e estrutura do código.',
        curso: 'Sistemas de Informação'
      },
      {
        id: uid(),
        descricao: 'Arquitetura das linguagens de programação: Compilação, duplo compilado e interpretação do código fonte;',
        curso: 'Sistemas de Informação'
      },
      {
        id: uid(),
        descricao: 'Apresentação do plano de ensino/ Função do primeiro grau e suas aplicações.',
        curso: ''
      },
      {
        id: uid(),
        descricao: 'Função do segundo grau e suas aplicações. Avaliação diagnóstica.',
        curso: ''
      },
      {
        id: uid(),
        descricao: 'Aspectos fundamentais das linguagens de programação: sintaxe, semântica e estrutura do código.',
        curso: 'Sistemas de Informação'
      },
      {
        id: uid(),
        descricao: 'Arquitetura das linguagens de programação: Compilação, duplo compilado e interpretação do código fonte;',
        curso: 'Sistemas de Informação'
      },
      {
        id: uid(),
        descricao: 'Apresentação do plano de ensino/ Função do primeiro grau e suas aplicações.',
        curso: ''
      },
      {
        id: uid(),
        descricao: 'Função do segundo grau e suas aplicações. Avaliação diagnóstica.',
        curso: ''
      },
      {
        id: uid(),
        descricao: 'Aspectos fundamentais das linguagens de programação: sintaxe, semântica e estrutura do código.',
        curso: 'Sistemas de Informação'
      },
      {
        id: uid(),
        descricao: 'Arquitetura das linguagens de programação: Compilação, duplo compilado e interpretação do código fonte;',
        curso: 'Sistemas de Informação'
      },
      {
        id: uid(),
        descricao: 'Apresentação do plano de ensino/ Função do primeiro grau e suas aplicações.',
        curso: ''
      },
      {
        id: uid(),
        descricao: 'Função do segundo grau e suas aplicações. Avaliação diagnóstica.',
        curso: ''
      },
      {
        id: uid(),
        descricao: 'Aspectos fundamentais das linguagens de programação: sintaxe, semântica e estrutura do código.',
        curso: 'Sistemas de Informação'
      },
      {
        id: uid(),
        descricao: 'Arquitetura das linguagens de programação: Compilação, duplo compilado e interpretação do código fonte;',
        curso: 'Sistemas de Informação'
      }
    ]
  },
  getters: {
    getData (state) {
      return state.data;
    }
  },
  mutations: {
    addConteudoToData (state, conteudo) {
      conteudo.id = uid();
      state.data.push(conteudo);
    }
  },
  actions: {
    addConteudo ({commit}, conteudo) {
      commit('addConteudoToData', conteudo);
    }
  }
};
