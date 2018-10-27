<template>
  <div>
    <!--region Identificação da Turma-->
    <q-card class="bg-light">
      <div class="row q-pa-md">
        <div class="col-xs-12 col-lg-6 q-title"
             style="line-height: 36px;">
          302N4A - Fundamentos de Matemática da Computação Forense
        </div>
        <div :class="{'col-xs-12 col-md-6':true, 'q-mt-sm': $vuetify.breakpoint.smAndDown, 'text-right': $vuetify.breakpoint.mdAndUp}">
          <div class="gutter-xs d-inline-flex">
            <div>
              <q-btn push
                     icon="file_copy"
                     color="primary"
                     label="Copiar"
                     title="Copiar dados de outro plano de ensino"
                     @click="modalCopiar = !modalCopiar"/>
            </div>
            <div>
              <q-btn push
                     icon="send"
                     label="Enviar"
                     title="Enviar plano para aprovação"
                     color="blue-grey"/>
            </div>
            <div>
              <q-btn push
                     icon="check"
                     label="Aprovar"
                     title="Aprovar plano de ensino"
                     color="positive"/>
            </div>
            <div>
              <q-btn push
                     icon="close"
                     label="Reprovar"
                     title="Reprovar plano de ensino"
                     color="negative"/>
            </div>
          </div>
        </div>
      </div>
      <q-card-separator/>
      <q-card-main>
        <div class="row gutter-sm">
          <div>
            <q-chip detail
                    square
                    icon="timer">
              <v-btn
                flat
                style="height: 32px;margin: 0px;font-weight: normal;text-transform: capitalize">
                CH Teórica:&nbsp;<strong>{{ turma.cargaHorariaTeorica }}h</strong>
              </v-btn>
            </q-chip>
          </div>
          <div>
            <q-chip detail
                    square
                    icon="timer">
              <v-btn
                flat
                style="height: 32px;margin: 0px;font-weight: normal;text-transform: capitalize">
                CH Prática:&nbsp;<strong>{{ turma.cargaHorariaPratica }}h</strong>
              </v-btn>
            </q-chip>
          </div>
          <div>
            <q-chip detail
                    square
                    icon="dashboard">
              Sistemas de Informação
            </q-chip>
          </div>
          <div>
            <q-chip detail
                    square
                    icon="person">Me. Thiago Ruiz Garcia
            </q-chip>
          </div>
          <div>
            <q-chip detail
                    square
                    color="green"
                    icon="bookmark">Em Produção
            </q-chip>
          </div>
        </div>
      </q-card-main>
    </q-card>
    <!--endregion-->

    <br>

    <!--region Ementa-->
    <q-collapsible opened
                   class="q-pa-sm bg-light">
      <template slot="header">
        <q-item-main class="q-title">
          1. Ementa
        </q-item-main>
      </template>
      <div v-html="turma.ementa"/>
    </q-collapsible>
    <!--endregion-->

    <br>

    <!--region Contribuição Formação-->
    <q-collapsible v-model="contribuicaoFormacao.collapsible"
                   class="q-pa-sm bg-light">
      <template slot="header">
        <q-item-main class="q-title">
          2. Contribuição Para a Formação do Perfil do Egresso
        </q-item-main>
        <q-item-side slot="right">
          <q-btn push
                 icon="chat"
                 color="primary"
                 @click.stop="showModalComentariosContribuicao()">
            <q-chip v-if="contribuicaoFormacao.qtdComentariosNaoLidos"
                    floating
                    color="red">
              {{ contribuicaoFormacao.qtdComentariosNaoLidos }}
            </q-chip>
            <q-tooltip :offset="[10, 10]">
              Ver e Responder Comentários
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="!contribuicaoFormacao.editaContribuicao"
            icon="edit"
            color="primary"
            push
            class="q-ml-sm"
            @click.stop="onClickBtnEditaContribuicao()">
            <q-tooltip :offset="[10, 10]">
              <strong>Editar Contribuição para Formação</strong>
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="contribuicaoFormacao.editaContribuicao"
            icon="save"
            color="positive"
            push
            class="q-ml-sm"
            @click.stop="saveContribuicao()">
            <q-tooltip :offset="[10, 10]">
              <strong>Salvar Alteração</strong>
            </q-tooltip>
          </q-btn>
        </q-item-side>
      </template>
      <div v-if="!contribuicaoFormacao.editaContribuicao"
           @dblclick="contribuicaoFormacao.editaContribuicao = !contribuicaoFormacao.editaContribuicao"
           v-html="turma.contribuicaoFormacao"/>
      <q-editor v-if="contribuicaoFormacao.editaContribuicao"
                v-model="turma.contribuicaoFormacao"/>
    </q-collapsible>
    <!--endregion-->

    <br>

    <!--region Conteúdo-->
    <q-collapsible v-model="conteudo.collapsible"
                   class="bg-light q-pa-sm">
      <template slot="header">
        <q-item-main class="q-title">
          3. Conteúdo
        </q-item-main>
        <q-item-side slot="right">
          <q-btn push
                 icon="chat"
                 color="primary"
                 @click.stop="showModalComentariosConteudo()">
            <q-chip
              v-if="conteudo.qtdComentariosNaoLidos"
              floating
              color="red">
              {{ conteudo.qtdComentariosNaoLidos }}
            </q-chip>
            <q-tooltip :offset="[10, 10]">
              Ver e Responder Comentários
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="!conteudo.editaConteudo"
            icon="edit"
            color="primary"
            push
            class="q-ml-sm"
            @click.stop="onClickBtnEditaConteudo()">
            <q-tooltip :offset="[10, 10]">
              <strong>Editar Conteúdo</strong>
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="conteudo.editaConteudo"
            icon="save"
            color="positive"
            push
            class="q-ml-sm"
            @click.stop="saveConteudo()">
            <q-tooltip :offset="[10, 10]">
              <strong>Salvar Alteração</strong>
            </q-tooltip>
          </q-btn>
        </q-item-side>
      </template>
      <div v-if="!conteudo.editaConteudo"
           @dblclick="conteudo.editaConteudo = !conteudo.editaConteudo"
           v-html="turma.conteudo"/>
      <q-editor v-if="conteudo.editaConteudo"
                v-model="turma.conteudo"/>
    </q-collapsible>
    <!--endregion-->

    <br>

    <!--region Critérios de Avaliação-->
    <q-collapsible v-model="criteriosAvaliacao.collapsible"
                   class="bg-light q-pa-sm">
      <template slot="header">
        <q-item-main class="q-title">
          4. Padrões e Critérios do Sistema de Avaliação
        </q-item-main>
        <q-item-side slot="right">
          <q-btn push
                 icon="chat"
                 color="primary"
                 @click.stop="showModalComentariosCriterios()">
            <q-chip
              v-if="criteriosAvaliacao.qtdComentariosNaoLidos"
              floating
              color="red">
              {{ criteriosAvaliacao.qtdComentariosNaoLidos }}
            </q-chip>
            <q-tooltip :offset="[10, 10]">
              Ver e Responder Comentários
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="!criteriosAvaliacao.editaCriterios"
            icon="edit"
            color="primary"
            push
            class="q-ml-sm"
            @click.stop="onClickBtnEditaCriterios()">
            <q-tooltip :offset="[10, 10]">
              <strong>Editar Conteúdo</strong>
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="criteriosAvaliacao.editaCriterios"
            icon="save"
            color="positive"
            push
            class="q-ml-sm"
            @click.stop="saveCriteriosAvaliacao()">
            <q-tooltip :offset="[10, 10]">
              <strong>Salvar Alteração</strong>
            </q-tooltip>
          </q-btn>
        </q-item-side>
      </template>
      <div v-if="!criteriosAvaliacao.editaCriterios"
           @dblclick="criteriosAvaliacao.editaCriterios = !criteriosAvaliacao.editaCriterios"
           v-html="turma.criteriosAvaliacao"/>
      <q-editor v-if="criteriosAvaliacao.editaCriterios"
                v-model="turma.criteriosAvaliacao"/>
    </q-collapsible>
    <!--endregion-->

    <br>

    <!--region Bibliografia-->
    <q-collapsible opened
                   class="bg-light q-pa-sm">
      <template slot="header">
        <q-item-main class="q-title">
          5. Bibliografia
        </q-item-main>
      </template>
      <div class="row">
        <div class="col-xs-12 col-md-6">
          <p class="text-weight-bold">
            5.1 Bibliografia Básica
          </p>
          <p v-for="(ref, index) in turma.bibliografiaBasica"
             :key="index">
            {{ ref }}
          </p>
        </div>
        <div class="col-xs-12 col-md-6">
          <p class="text-weight-bold">
            5.1 Bibliografia Complementar
          </p>
          <p v-for="(ref, index) in turma.bibliografiaComplementar"
             :key="index">
            {{ ref }}
          </p>
        </div>
      </div>
    </q-collapsible>
    <!--endregion-->

    <br>

    <!--region Cronograma-->
    <q-collapsible v-model="cronograma.collapsible"
                   class="bg-light q-pa-sm">
      <template slot="header">
        <q-item-main class="q-title">
          6. Cronograma
        </q-item-main>
        <q-item-side slot="right">
          <q-btn push
                 icon="chat"
                 color="primary"
                 @click.stop="showModalComentariosCronograma()">
            <q-chip floating
                    color="red">1
            </q-chip>
            <q-tooltip :offset="[10, 10]">
              <strong>Ver e Responder Comentários</strong>
            </q-tooltip>
          </q-btn>
          <q-btn :icon="cronograma.editaCronograma ? 'check' : 'edit'"
                 :color="cronograma.editaCronograma ? 'positive' : 'primary'"
                 push
                 class="q-ml-sm"
                 @click.stop="onClickBtnEditaCronograma()">
            <q-tooltip :offset="[10, 10]">
              <strong>
                {{ cronograma.editaCronograma ? 'Concluir Alterações' : 'Editar Cronograma' }}
              </strong>
            </q-tooltip>
          </q-btn>
        </q-item-side>
      </template>
      <div class="row">
        <div class="col-xs-12">
          <cronograma :itens="turma.itensCronograma"
                      :edicao="cronograma.editaCronograma"/>
        </div>
      </div>
    </q-collapsible>
    <!--endregion-->

    <!--region Modal Comentários-->
    <q-modal v-model="showModalComentarios"
             :content-css="{minWidth: '600px', minHeight: '500px'}"
             @show="scrollModalMsgToEnd">
      <q-modal-layout>
        <q-toolbar slot="header">
          <q-btn flat
                 round
                 dense
                 icon="close"
                 wait-for-ripple
                 @click="modalComentarios = false"/>
          <q-toolbar-title>
            Comentários
          </q-toolbar-title>
        </q-toolbar>
        <div id="msgContainer"
             class="q-pa-lg">
          <q-chat-message
            v-for="(msg, index) in messages"
            :key="`avatar-${index}`"
            :label="msg.label"
            :sent="msg.sent"
            :text-color="msg.sent ? 'black' : 'white'"
            :bg-color="msg.sent ? 'light' : 'primary'"
            :name="msg.name"
            :text="msg.text"
            :stamp="msg.stamp"
          />
        </div>
        <div slot="footer"
             style="height: 100px;">
          <div class="q-pa-sm">
            <q-input
              :max-height="50"
              v-model="message"
              :after="[
                {
                  icon: 'send'
                }
              ]"
              placeholder="informe um comentário aqui..."
              type="textarea"
            />
          </div>
        </div>
      </q-modal-layout>
    </q-modal>
    <!--endregion-->

    <!--region Menu Fab-->
    <v-speed-dial
      v-model="showMenuFab"
      right
      bottom
      fixed
      direction="top"
      style="margin-bottom: 50px">
      <v-btn
        slot="activator"
        v-model="showMenuFab"
        color="primary"
        dark
        fab>
        <v-icon>settings</v-icon>
        <v-icon>close</v-icon>
      </v-btn>

      <v-btn
        fab
        dark
        small
        color="primary">
        <v-icon>file_copy</v-icon>
        <q-tooltip :offset="[10, 10]"
                   anchor="center left"
                   self="center right">
          <strong>Copiar Plano de Ensino</strong>
        </q-tooltip>
      </v-btn>

      <v-btn
        fab
        dark
        small
        color="blue-grey">
        <v-icon>send</v-icon>
        <q-tooltip :offset="[10, 10]"
                   anchor="center left"
                   self="center right">
          <strong>Enviar para Aprovação</strong>
        </q-tooltip>
      </v-btn>

      <v-btn
        fab
        dark
        small
        color="success">
        <v-icon>check</v-icon>
        <q-tooltip :offset="[10, 10]"
                   anchor="center left"
                   self="center right">
          <strong>Aprovar Plano de Ensino</strong>
        </q-tooltip>
      </v-btn>

      <v-btn
        fab
        dark
        small
        color="error">
        <v-icon>close</v-icon>
        <q-tooltip :offset="[10, 10]"
                   anchor="center left"
                   self="center right">
          <strong>Reprovar Plano de Ensino</strong>
        </q-tooltip>
      </v-btn>
    </v-speed-dial>
    <!--endregion-->
  </div>
</template>

<script>
import {uid}          from 'quasar';
import Cronograma     from './cronograma';
import {TurmaService} from '../turmaService';

export default {
  components: {Cronograma},
  props: {
    id: {
      type: String,
      default: undefined,
      require: true
    }
  },
  data () {
    return {
      contribuicaoFormacao: {
        collapsible: true,
        editaContribuicao: false,
        qtdComentariosNaoLidos: 0
      },
      conteudo: {
        collapsible: true,
        editaConteudo: false,
        qtdComentariosNaoLidos: 0
      },
      criteriosAvaliacao: {
        collapsible: true,
        editaCriterios: false,
        qtdComentariosNaoLidos: 0
      },
      cronograma: {
        collapsible: false,
        editaCronograma: false
      },
      showModalComentarios: false,
      showMenuFab: false,
      showModalCopiar: false,
      showModalAprovacao: false,
      addItemCronograma: false,
      message: '',
      messages: [
        {
          label: 'Quinta-Feira 31/05/2018, 10:00'
        },
        {
          name: 'Stephany',
          text: ['Precisa melhorar o cronograma, as datas estão erradas.'],
          stamp: '13:34'
        },
        {
          name: 'Professor',
          text: ['Ok Stephany. E agora?'],
          sent: true,
          stamp: '18:10'
        },
        {
          name: 'Stephany',
          text: ['Agora ficou legal.'],
          stamp: '18:30'
        },
        {
          label: 'Hoje'
        },
        {
          name: 'Stephany',
          text: ['O conteúdo ficou bom, mas é necessário melhorar a distribuição dele com as datas no cronograma'],
          stamp: '13:55'
        }
      ],
      turma: {
        ementa: '<p>Nenhuma informação encontrada!</p>',
        contribuicaoFormacao: '<p>Nenhuma informação encontrada!</p>',
        conteudo: '<p>Nenhuma informação encontrada!</p>',
        criteriosAvaliacao: '<p>Nenhuma informação encontrada!</p>',
        cargaHorariaTeorica: 60,
        cargaHorariaPratica: 60,
        bibliografiaBasica: [
          'ABREU, A. S. Curso de redação. São Paulo: Editora Ática. 2004. p 168.',
          'MARTINS, D. S.; ZILBERKNOP, L. S. Português instrumental: de acordo com as atuais normas da ABNT. 27 ed. São Paulo: Atlas, 2008.',
          'BECHARA, E. Moderna gramática portuguesa. São Paulo: Editora Nacional. 2001.'
        ],
        bibliografiaComplementar: [
          'ABREU, A. S. Curso de redação. São Paulo: Editora Ática. 2004. p 168.',
          'MARTINS, D. S.; ZILBERKNOP, L. S. Português instrumental: de acordo com as atuais normas da ABNT. 27 ed. São Paulo: Atlas, 2008.',
          'BECHARA, E. Moderna gramática portuguesa. São Paulo: Editora Nacional. 2001.'
        ],
        itensCronograma: [
          {
            uuid: uid(),
            competencias: [
              {
                id: uid(),
                descricao: 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
              },
              {
                id: uid(),
                descricao: 'Diagnosticar e mapear, com base científica, problemas e pontos de melhoria nas organizações, propondo alternativas de soluções baseadas em Tecnologias da Informação.'
              }
            ],
            subItens: [
              {
                id: uid(),
                habilidades: [
                  {
                    id: uid(),
                    descricao: 'Entender problemas e possíveis soluções para integração de ambientes e componentes de hardware e software heterogêneos;'
                  },
                  {
                    id: uid(),
                    descricao: 'Entender problemas e possíveis soluções para integração de ambientes e componentes de hardware e software heterogêneos;'
                  }
                ],
                datas: [
                  {
                    id: uid(),
                    data: ['23/01/17'],
                    conteudos: ['Apresentação do Plano de Ensino.', 'Introdução da disciplina.'],
                    metodologias: ['Aulas expositivas dialogadas com a participação ativa dos alunos.'],
                    recursos: ['Aulas expositivas (utilização de data show e quadro branco).'],
                    avaliacao: []
                  },
                  {
                    id: uid(),
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
                id: uid(),
                descricao: '2. Participar e conduzir processos de negociação.'
              }
            ],
            subItens: [
              {
                id: uid(),
                habilidades: [
                  {
                    id: uid(),
                    descricao: '2.1 Desenvolver características funcionais de ambientes de trabalho em equipe, incluindo comunicação e compromisso;'
                  }
                ],
                datas: [
                  {
                    id: uid(),
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
        ]
      }
    };
  },
  computed: {
    turmas () {
      return this.$store.getters['turmas/getData'].map(turma => {
        return {
          label: `${turma.semestre} - ${turma.disciplina} - ${turma.codInterno}`,
          sublabel: `${turma.professor} - ${turma.curso}`,
          value: turma
        };
      });
    },
    semestres () {
      return [
        {
          label: '2018/1',
          value: '2018/1'
        }, {
          label: '2017/2',
          value: '2017/2'
        }
      ];
    }
  },
  mounted () {
    if (this.uuid) {
      TurmaService.getPlanoTurmaByUUID(this.id)
      .then(data => {
        if (!data) {
          this.$router.push({path: '/pages/disciplinas'});
          this.$q.notify({
            type: 'warning',
            position: 'top',
            message: 'Disciplina não encontrada!'
          });
        } else {
          this.disciplina = data;
          this.cursos.items.push(this.disciplina.curso);
        }
        this.$q.loading.hide();
      });
    } else {
      this.$q.loading.hide();
    }
  },
  methods: {
    saveContribuicao () {
      console.log('Salvando contribuição');
      this.contribuicaoFormacao.editaContribuicao = false;
      this.$q.notify({
        message: 'Alterações Salvas com Sucesso',
        type: 'positive',
        position: 'top'
      });
    },
    saveConteudo () {
      console.log('Salvando conteúdo');
      this.conteudo.editaConteudo = false;
      this.$q.notify({
        message: 'Alterações Salvas com Sucesso',
        type: 'positive',
        position: 'top'
      });
    },
    saveCriteriosAvaliacao () {
      console.log('Salvando critérios de avaliação');
      this.criteriosAvaliacao.editaCriterios = false;
      this.$q.notify({
        message: 'Alterações Salvas com Sucesso',
        type: 'positive',
        position: 'top'
      });
    },
    showModalComentariosConteudo () {
      this.showModalComentarios = true;
    },
    showModalComentariosContribuicao () {
      this.showModalComentarios = true;
    },
    showModalComentariosCriterios () {
      this.showModalComentarios = true;
    },
    showModalComentariosCronograma () {
      this.showModalComentarios = true;
    },
    copiaDadosDeOutroPlano () {
      this.$q.notify({
        type: 'positive',
        position: 'top',
        message: `Dados copiados com sucesso!`
      });
    },
    abreVisualizacaoTurma () {
      const route = this.$router.resolve('/planoensino/3');
      window.window.open(route.href, '_blank');
    },
    scrollModalMsgToEnd () {
      const container     = document.querySelector('#msgContainer').parentElement;
      container.scrollTop = container.scrollHeight;
    },
    onClickBtnEditaContribuicao () {
      this.contribuicaoFormacao.collapsible       = true;
      this.contribuicaoFormacao.editaContribuicao = true;
    },
    onClickBtnEditaConteudo () {
      this.conteudo.collapsible   = true;
      this.conteudo.editaConteudo = true;
    },
    onClickBtnEditaCriterios () {
      this.criteriosAvaliacao.collapsible    = true;
      this.criteriosAvaliacao.editaCriterios = true;
    },
    onClickBtnEditaCronograma () {
      this.cronograma.collapsible     = true;
      this.cronograma.editaCronograma = !this.cronograma.editaCronograma;
    }
  }
};
</script>

<style lang="stylus">
  .q-card .q-card-main p
    font-size 16px
</style>
