import {uid} from 'quasar';

export const itensCronograma = [
  {
    uuid: uid(),
    competencias: [
      {
        uuid: uid(),
        descricao: 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
      }
    ],
    subItens: [
      {
        uuid: uid(),
        habilidades: [
          {
            uuid: uid(),
            descricao: 'Entender problemas e possíveis soluções para integração de ambientes e componentes de hardware e software heterogêneos;'
          }
        ],
        datas: [
          {
            uuid: uid(),
            data: ['23/01/17'],
            conteudos: ['Apresentação do Plano de Ensino.', 'Introdução da disciplina.'],
            metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos.'],
            recursos: ['Aulas expositivas (utilização de data show e quadro branco).'],
            avaliacao: []
          },
          {
            uuid: uid(),
            data: ['30/01/17', '06/02/17', '13/02/17'],
            conteudos: ['Orientações quanto ao conteúdo programático e as avaliações.',
              'Conceitos e informações sobre as coletas de dados, técnica de amostragem e distribuição de Frequência.',
              'Orientações sobre medidas de tendência central.', 'Orientações sobre dispersão e medidas de assimetria e curtose'],
            metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos.'],
            recursos: ['Aulas expositivas (utilização de data show e quadro branco).',
              'Exercícios individuais e em grupos (inseridos no black board e utilização do programa excel e software de estatística)'],
            avaliacao: ['Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
            'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).',
              'Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
              'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).']
          }
        ]
      }
    ]
  },
  {
    competencias: [
      {
        uuid: uid(),
        descricao: '2. Participar e conduzir processos de negociação.'
      }
    ],
    subItens: [
      {
        uuid: uid(),
        habilidades: [
          {
            uuid: uid(),
            descricao: '2.1 Desenvolver características funcionais de ambientes de trabalho em equipe, incluindo comunicação e compromisso;'
          }
        ],
        datas: [
          {
            uuid: uid(),
            data: ['03/04/17'],
            conteudos: ['Distribuições discretas: de Bernoulli, Binomial, Poisson e Geométrica.'],
            metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos;'],
            recursos: ['Aulas expositivas (utilização de data show e quadro branco).'],
            avaliacao: []
          },
          {
            data: ['17/04/17'],
            conteudos: ['Entregar lista de exercícios.'],
            metodologias: ['Resolução de exercícios individuais, ou em grupos, em sala de aula/ambiente virtual.'],
            recursos: ['Exercícios individuais e em grupos (inseridos no black board)'],
            avaliacao: ['Lista de exercícios postada no Black Board (individual). Pontuação 1,50']
          }
        ]
      },
      {
        uuid: uid(),
        habilidades: [
          {
            uuid: uid(),
            descricao: '2.1 Desenvolver características funcionais de ambientes de trabalho em equipe, incluindo comunicação e compromisso;'
          },
          {
            uuid: uid(),
            descricao: '2.2 Desenvolver características funcionais de ambientes de trabalho em equipe, incluindo comunicação e compromisso;'
          }
        ],
        datas: [
          {
            uuid: uid(),
            data: ['03/04/17'],
            conteudos: ['Distribuições discretas: de Bernoulli, Binomial, Poisson e Geométrica.'],
            metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos;'],
            recursos: ['Aulas expositivas (utilização de data show e quadro branco).'],
            avaliacao: []
          },
          {
            data: ['17/04/17'],
            conteudos: ['Entregar lista de exercícios.'],
            metodologias: ['Resolução de exercícios individuais, ou em grupos, em sala de aula/ambiente virtual.'],
            recursos: ['Exercícios individuais e em grupos (inseridos no black board)'],
            avaliacao: ['Lista de exercícios postada no Black Board (individual). Pontuação 1,50']
          }
        ]
      }
    ]
  }
  // {
  //   uuid: uid(),
  //   competencias: [
  //     {
  //       uuid: uid(),
  //       descricao: 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
  //     },
  //     {
  //       uuid: uid(),
  //       descricao: 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
  //     },
  //     {
  //       uuid: uid(),
  //       descricao: 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
  //     }
  //   ],
  //   subItens: [
  //     {
  //       uuid: uid(),
  //       habilidades: [
  //         {
  //           uuid: uid(),
  //           descricao: 'Entender problemas e possíveis soluções para integração de ambientes e componentes de hardware e software heterogêneos;'
  //         }
  //       ],
  //       datas: [
  //         {
  //           uuid: uid(),
  //           data: ['30/01/17', '06/02/17', '13/02/17'],
  //           conteudos: ['Orientações quanto ao conteúdo programático e as avaliações.',
  //             'Conceitos e informações sobre as coletas de dados, técnica de amostragem e distribuição de Frequência.',
  //             'Orientações sobre medidas de tendência central.', 'Orientações sobre dispersão e medidas de assimetria e curtose'],
  //           metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos.'],
  //           recursos: ['Aulas expositivas (utilização de data show e quadro branco).',
  //             'Exercícios individuais e em grupos (inseridos no black board e utilização do programa excel e software de estatística)'],
  //           avaliacao: ['Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
  //           'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).',
  //             'Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
  //             'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).']
  //         }
  //       ]
  //     },
  //     {
  //       uuid: uid(),
  //       habilidades: [
  //         {
  //           uuid: uid(),
  //           descricao: 'Entender problemas e possíveis soluções para integração de ambientes e componentes de hardware e software heterogêneos;'
  //         }
  //       ],
  //       datas: [
  //         {
  //           uuid: uid(),
  //           data: ['30/01/17', '06/02/17', '13/02/17'],
  //           conteudos: ['Orientações quanto ao conteúdo programático e as avaliações.',
  //             'Conceitos e informações sobre as coletas de dados, técnica de amostragem e distribuição de Frequência.',
  //             'Orientações sobre medidas de tendência central.', 'Orientações sobre dispersão e medidas de assimetria e curtose'],
  //           metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos.'],
  //           recursos: ['Aulas expositivas (utilização de data show e quadro branco).',
  //             'Exercícios individuais e em grupos (inseridos no black board e utilização do programa excel e software de estatística)'],
  //           avaliacao: ['Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
  //           'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).',
  //             'Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
  //             'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).']
  //         }
  //       ]
  //     },
  //     {
  //       uuid: uid(),
  //       habilidades: [
  //         {
  //           uuid: uid(),
  //           descricao: 'Entender problemas e possíveis soluções para integração de ambientes e componentes de hardware e software heterogêneos;'
  //         }
  //       ],
  //       datas: [
  //         {
  //           uuid: uid(),
  //           data: ['30/01/17', '06/02/17', '13/02/17'],
  //           conteudos: ['Orientações quanto ao conteúdo programático e as avaliações.',
  //             'Conceitos e informações sobre as coletas de dados, técnica de amostragem e distribuição de Frequência.',
  //             'Orientações sobre medidas de tendência central.', 'Orientações sobre dispersão e medidas de assimetria e curtose'],
  //           metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos.'],
  //           recursos: ['Aulas expositivas (utilização de data show e quadro branco).',
  //             'Exercícios individuais e em grupos (inseridos no black board e utilização do programa excel e software de estatística)'],
  //           avaliacao: ['Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
  //           'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).',
  //             'Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
  //             'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).']
  //         }
  //       ]
  //     }
  //   ]
  // },
  // {
  //   competencias: [
  //     {
  //       uuid: uid(),
  //       descricao: '2. Participar e conduzir processos de negociação.'
  //     }
  //   ],
  //   subItens: [
  //     {
  //       uuid: uid(),
  //       habilidades: [
  //         {
  //           uuid: uid(),
  //           descricao: '2.1 Desenvolver características funcionais de ambientes de trabalho em equipe, incluindo comunicação e compromisso;'
  //         }
  //       ],
  //       datas: [
  //         {
  //           uuid: uid(),
  //           data: ['03/04/17'],
  //           conteudos: ['Distribuições discretas: de Bernoulli, Binomial, Poisson e Geométrica.'],
  //           metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos;'],
  //           recursos: ['Aulas expositivas (utilização de data show e quadro branco).'],
  //           avaliacao: []
  //         },
  //         {
  //           data: ['17/04/17'],
  //           conteudos: ['Entregar lista de exercícios.'],
  //           metodologias: ['Resolução de exercícios individuais, ou em grupos, em sala de aula/ambiente virtual.'],
  //           recursos: ['Exercícios individuais e em grupos (inseridos no black board)'],
  //           avaliacao: ['Lista de exercícios postada no Black Board (individual). Pontuação 1,50']
  //         }
  //       ]
  //     }
  //   ]
  // },
  // {
  //   uuid: uid(),
  //   competencias: [
  //     {
  //       uuid: uid(),
  //       descricao: 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
  //     },
  //     {
  //       uuid: uid(),
  //       descricao: 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
  //     }
  //   ],
  //   subItens: [
  //     {
  //       uuid: uid(),
  //       habilidades: [
  //         {
  //           uuid: uid(),
  //           descricao: 'Entender problemas e possíveis soluções para integração de ambientes e componentes de hardware e software heterogêneos;'
  //         },
  //         {
  //           uuid: uid(),
  //           descricao: 'Entender problemas e possíveis soluções para integração de ambientes e componentes de hardware e software heterogêneos;'
  //         }
  //       ],
  //       datas: [
  //         {
  //           uuid: uid(),
  //           data: ['23/01/17'],
  //           conteudos: ['Apresentação do Plano de Ensino.', 'Introdução da disciplina.'],
  //           metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos.'],
  //           recursos: ['Aulas expositivas (utilização de data show e quadro branco).'],
  //           avaliacao: []
  //         },
  //         {
  //           uuid: uid(),
  //           data: ['30/01/17', '06/02/17', '13/02/17'],
  //           conteudos: ['Orientações quanto ao conteúdo programático e as avaliações.',
  //             'Conceitos e informações sobre as coletas de dados, técnica de amostragem e distribuição de Frequência.',
  //             'Orientações sobre medidas de tendência central.', 'Orientações sobre dispersão e medidas de assimetria e curtose'],
  //           metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos.'],
  //           recursos: ['Aulas expositivas (utilização de data show e quadro branco).',
  //             'Exercícios individuais e em grupos (inseridos no black board e utilização do programa excel e software de estatística)'],
  //           avaliacao: ['Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
  //           'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).',
  //             'Os alunos deverão pesquisar e apresentar um artigo científico relacionado ao curso e a disciplina, identificando a possibilidade de aplicação do conteúdo na Instituição.' +
  //             'Pontuação 1,00 (Em dupla, entregar um resumo do artigo e apresentação em forma de discussão em sala de aula).']
  //         }
  //       ]
  //     }
  //   ]
  // },
  // {
  //   competencias: [
  //     {
  //       uuid: uid(),
  //       descricao: '2. Participar e conduzir processos de negociação.'
  //     }
  //   ],
  //   subItens: [
  //     {
  //       uuid: uid(),
  //       habilidades: [
  //         {
  //           uuid: uid(),
  //           descricao: '2.1 Desenvolver características funcionais de ambientes de trabalho em equipe, incluindo comunicação e compromisso;'
  //         }
  //       ],
  //       datas: [
  //         {
  //           uuid: uid(),
  //           data: ['03/04/17'],
  //           conteudos: ['Distribuições discretas: de Bernoulli, Binomial, Poisson e Geométrica.'],
  //           metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos;'],
  //           recursos: ['Aulas expositivas (utilização de data show e quadro branco).'],
  //           avaliacao: []
  //         },
  //         {
  //           data: ['17/04/17'],
  //           conteudos: ['Entregar lista de exercícios.'],
  //           metodologias: ['Resolução de exercícios individuais, ou em grupos, em sala de aula/ambiente virtual.'],
  //           recursos: ['Exercícios individuais e em grupos (inseridos no black board)'],
  //           avaliacao: ['Lista de exercícios postada no Black Board (individual). Pontuação 1,50']
  //         }
  //       ]
  //     }
  //   ]
  // }
];
