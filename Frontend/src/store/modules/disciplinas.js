import {uid} from 'quasar';

export default {
  namespaced: true,
  state: {
    data: [
      {
        id: '1',
        codInterno: 'SIS001',
        nome: 'Sistemas Operacionais',
        curso: 'Sistemas de Informação',
        ementa: 'História  e  funções  dos  Sistemas  Operacionais.  Estrutura  dos  Sistemas  Operacionais. ' +
        'Conceito  e  estados  de  um  processo.  Concorrência.  Métodos  para  comunicação  e ' +
        'sincronização.   Escalonamento.   Gerência   de   memória: ' +
        'paginação,   segmentação   e ' +
        'memória  virtual.  Monoprocessamento  e  multiprocessamento.  Alocação  de  recursos  e ' +
        'deadlocks.  Gerenciamento  de  arquivos.  Gerenciamento  de  entrada/saída.  Métodos  de ' +
        'acesso',
        contribuicaoFormacao: 'O PROFISSIONAL DE SISTEMAS DE INFORMAÇÃO é capacitado para transitar em todas as áreas ' +
        'da computação, indo desde a criação de sistemas e games até a manutenção de banco de dados, considerando ' +
        'durante toda a graduação elementos como redes de computadores, desenvolvimento de software, segurança de ' +
        'computadores, gestão de projetos de TI, inteligência artificial e muitas outras atividades ligadas a ' +
        'computação. Logo, são profissionais dinâmicos, inovadores, críticos e disponíveis para a aprendizagem contínua' +
        ' e multidisciplinar, capazes de agir em consonância com os processos de transformação pelos quais passam as ' +
        'empresas modernas e a sociedade atual.',
        bibliografiaBasica: 'SILVA, S. M. Matemática básica para cursos superiores. São Paulo: Atlas, 2002.; ' +
        'GIOVANNI, J. R. et. al. Matemática fundamental. São Paulo: FTD, 2002.; IEZZI, G.; MURAKAMI, C.; DOLE, ' +
        'O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 1. ' +
        'São Paulo: Atual, 2004.',
        bibliografiaComplementar: 'DANTE, L. R. Matemática. Contexto e Aplicações. Vol. 1, II e III São Paulo: Ática, 2004;' +
        'IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 3. São Paulo: Atual, 2004;' +
        'IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 4. São Paulo: Atual, 2004;' +
        'BIANCHINNI, E.; PACCOLA, H. Matemática: Curso de Matemática. São Paulo: Moderna, 2003;' +
        'DANTE, L. R. Matemática. Vol. Único. São Paulo: Ática, 2000;',
        status: true
      },
      {
        id: '2',
        codInterno: 'SIS002',
        nome: 'Engenharia de Software II',
        curso: 'Sistemas de Informação',
        ementa: 'Conceitos básicos e princípios da Engenharia de Requisitos de Software. Técnicas de ' +
        'engenharia  de  requisitos:  entrevistas,  JAD,  FAST.  Métodos  para  modelagem  de ' +
        'sistemas de software. Abordagens para análise de requisitos. Arquitetura de Software. ' +
        'Métodos  de ' +
        'Projeto  de  Software.  Padrões  e  Frameworks  de  Software.  Projeto  de ' +
        'Software    Orientado    a    Objetos    Utilizando    a    Linguagem    UML    (Diagramas    e ' +
        'Documentação dos Diagramas). Ferramentas CASE para geração de diagramas UML.',
        contribuicaoFormacao: 'O PROFISSIONAL DE SISTEMAS DE INFORMAÇÃO é capacitado para transitar em todas as áreas ' +
        'da computação, indo desde a criação de sistemas e games até a manutenção de banco de dados, considerando ' +
        'durante toda a graduação elementos como redes de computadores, desenvolvimento de software, segurança de ' +
        'computadores, gestão de projetos de TI, inteligência artificial e muitas outras atividades ligadas a ' +
        'computação. Logo, são profissionais dinâmicos, inovadores, críticos e disponíveis para a aprendizagem contínua' +
        ' e multidisciplinar, capazes de agir em consonância com os processos de transformação pelos quais passam as ' +
        'empresas modernas e a sociedade atual.',
        bibliografiaBasica: 'SILVA, S. M. Matemática básica para cursos superiores. São Paulo: Atlas, 2002.; ' +
        'GIOVANNI, J. R. et. al. Matemática fundamental. São Paulo: FTD, 2002.; IEZZI, G.; MURAKAMI, C.; DOLE, ' +
        'O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 1. ' +
        'São Paulo: Atual, 2004.',
        bibliografiaComplementar: 'DANTE, L. R. Matemática. Contexto e Aplicações. Vol. 1, II e III São Paulo: Ática, 2004;' +
        'IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 3. São Paulo: Atual, 2004;' +
        'IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 4. São Paulo: Atual, 2004;' +
        'BIANCHINNI, E.; PACCOLA, H. Matemática: Curso de Matemática. São Paulo: Moderna, 2003;' +
        'DANTE, L. R. Matemática. Vol. Único. São Paulo: Ática, 2000;',
        status: true
      },
      {
        id: '3',
        codInterno: 'OPT001',
        nome: 'Educação Ambiental(EA) e Sustentabilidade',
        curso: 'Optativa',
        ementa: 'A  evolução  histórica  e  teórica  da  Educação  Ambiental;  Complexidade  ambiental;  Princípios  e ' +
        'estratégias  de  Educação  Ambiental;  A  Educação  Ambiental  como  eixo  do  Desenvolvimento ' +
        'Sustentável;  Relação  da  natureza  com  a  dimensão  ambiental,  à  justiça  social,  aos  direitos ' +
        'humanos, à saúde, ao trabalho, ao consumo, à pluralidade étnica, racial, de gênero, de diversidade ' +
        'sexual, e à superação do racismo e de todas as formas de discrimina' +
        'ção e injustiça social; Projetos ' +
        'Pedagógicos em Educação Ambiental (Agenda 21 Local).',
        contribuicaoFormacao: 'O PROFISSIONAL DE SISTEMAS DE INFORMAÇÃO é capacitado para transitar em todas as áreas ' +
        'da computação, indo desde a criação de sistemas e games até a manutenção de banco de dados, considerando ' +
        'durante toda a graduação elementos como redes de computadores, desenvolvimento de software, segurança de ' +
        'computadores, gestão de projetos de TI, inteligência artificial e muitas outras atividades ligadas a ' +
        'computação. Logo, são profissionais dinâmicos, inovadores, críticos e disponíveis para a aprendizagem contínua' +
        ' e multidisciplinar, capazes de agir em consonância com os processos de transformação pelos quais passam as ' +
        'empresas modernas e a sociedade atual.',
        bibliografiaBasica: 'SILVA, S. M. Matemática básica para cursos superiores. São Paulo: Atlas, 2002.; ' +
        'GIOVANNI, J. R. et. al. Matemática fundamental. São Paulo: FTD, 2002.; IEZZI, G.; MURAKAMI, C.; DOLE, ' +
        'O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 1. ' +
        'São Paulo: Atual, 2004.',
        bibliografiaComplementar: 'DANTE, L. R. Matemática. Contexto e Aplicações. Vol. 1, II e III São Paulo: Ática, 2004;' +
        'IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 3. São Paulo: Atual, 2004;' +
        'IEZZI, G.; MURAKAMI, C.; DOLE, O.; HAZZAN, S.; MACHADO, N. J.; POMPEO, J. N. Fundamentos de Matemática Elementar. Vol. 4. São Paulo: Atual, 2004;' +
        'BIANCHINNI, E.; PACCOLA, H. Matemática: Curso de Matemática. São Paulo: Moderna, 2003;' +
        'DANTE, L. R. Matemática. Vol. Único. São Paulo: Ática, 2000;',
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
    addDisciplinaToData (state, disciplina) {
      disciplina.id = uid();
      disciplina.status = true;
      state.data.push(disciplina);
    }
  },
  actions: {
    addDisciplina ({commit}, disciplina) {
      commit('addDisciplinaToData', disciplina);
    }
  }
};
