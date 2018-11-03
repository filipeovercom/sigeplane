<template>
  <div>
    <!--region Identificação da Turma-->
    <q-card class="bg-light">
      <div class="row q-pa-md">
        <div :class="{'col-xs-12 q-title': true, 'col-lg-6': showBtnEdicao || showBtnEdicao}"
             style="line-height: 36px;">
          {{ plano.turma.nome }} - {{ plano.turma.disciplina.nome }}
        </div>
        <div
          v-if="showBtnEdicao || showBtnEdicao"
          :class="{'col-xs-12 col-md-6':true, 'q-mt-sm': $vuetify.breakpoint.smAndDown, 'text-right': $vuetify.breakpoint.mdAndUp}">
          <div class="gutter-xs d-inline-flex">
            <div>
              <q-btn
                v-if="showBtnEdicao"
                push
                icon="file_copy"
                color="primary"
                label="Copiar"
                title="Copiar dados de outro plano de ensino"
                @click="modalCopiar = !modalCopiar"/>
            </div>
            <div>
              <q-btn
                v-if="showBtnEdicao"
                push
                icon="send"
                label="Enviar"
                title="Enviar plano para aprovação"
                color="blue-grey"/>
            </div>
            <div>
              <q-btn
                v-if="showBtnAprovarReprovar"
                push
                icon="check"
                label="Aprovar"
                title="Aprovar plano de ensino"
                color="positive"/>
            </div>
            <div>
              <q-btn
                v-if="showBtnAprovarReprovar"
                push
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
                v-if="showBtnEdicao"
                flat
                style="height: 32px;margin: 0px;font-weight: normal;text-transform: capitalize"
                @click="onShowModalCargaHoraria()">
                CH Teórica:&nbsp;
                <strong>{{ plano.qtdHorasTeorica }}h</strong>
              </v-btn>
              <span v-if="!showBtnEdicao">
                CH Teórica:&nbsp;
                <strong>{{ plano.qtdHorasTeorica }}h</strong>
              </span>
            </q-chip>
          </div>
          <div>
            <q-chip detail
                    square
                    icon="timer">
              <v-btn
                v-if="showBtnEdicao"
                flat
                style="height: 32px;margin: 0px;font-weight: normal;text-transform: capitalize"
                @click="onShowModalCargaHoraria()">
                CH Prática:&nbsp;
                <strong>{{ plano.qtdHorasPratica }}h</strong>
              </v-btn>
              <span v-if="!showBtnEdicao">
                CH Prática:&nbsp;
                <strong>{{ plano.qtdHorasPratica }}h</strong>
              </span>
            </q-chip>
          </div>
          <div>
            <q-chip detail
                    square
                    icon="dashboard">
              {{ plano.turma.curso.nome }}
            </q-chip>
          </div>
          <div>
            <q-chip detail
                    square
                    icon="person">
              {{ plano.turma.professor.nome }}
            </q-chip>
          </div>
          <div>
            <q-chip
              :color="colorByStatus"
              detail
              square
              icon="bookmark">
              {{ plano.turma.statusPlanoEnsino | statusPlanoEnsino }}
            </q-chip>
          </div>
        </div>
      </q-card-main>
    </q-card>
    <!--endregion-->

    <br>

    <!--region Ementa-->
    <q-collapsible
      opened
      class="q-pa-sm bg-light">
      <template slot="header">
        <q-item-main class="q-title">
          1. Ementa
        </q-item-main>
      </template>
      <div v-html="plano.turma.disciplina.ementa"/>
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
            <q-chip v-if="contribuicaoFormacao.comentarios.qtdNaoLidos"
                    floating
                    color="red">
              {{ contribuicaoFormacao.comentarios.qtdNaoLidos }}
            </q-chip>
            <q-tooltip :offset="[10, 10]">
              Ver e Responder Comentários
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="showBtnEdicao && !contribuicaoFormacao.editaContribuicao"
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
            v-if="showBtnEdicao && contribuicaoFormacao.editaContribuicao"
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
           v-html="plano.contribuicaoFormacao"/>
      <q-editor v-if="contribuicaoFormacao.editaContribuicao"
                v-model="plano.contribuicaoFormacao"/>
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
            v-if="showBtnEdicao && !conteudo.editaConteudo"
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
            v-if="showBtnEdicao && conteudo.editaConteudo"
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
           v-html="plano.conteudo"/>
      <q-editor v-if="conteudo.editaConteudo"
                v-model="plano.conteudo"/>
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
            v-if="showBtnEdicao && !criteriosAvaliacao.editaCriterios"
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
            v-if="showBtnEdicao && criteriosAvaliacao.editaCriterios"
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
           v-html="plano.criteriosAvaliacao"/>
      <q-editor v-if="criteriosAvaliacao.editaCriterios"
                v-model="plano.criteriosAvaliacao"/>
    </q-collapsible>
    <!--endregion-->

    <br>

    <!--region Bibliografia-->
    <q-collapsible
      opened
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
          <p v-for="(ref, index) in plano.turma.disciplina.bibliografiaBasica"
             :key="index">
            {{ ref }}
          </p>
          <p v-if="!plano.turma.disciplina.bibliografiaBasica">
            Nenhuma informação encontrada!
          </p>
        </div>
        <div class="col-xs-12 col-md-6">
          <p class="text-weight-bold">
            5.1 Bibliografia Complementar
          </p>
          <p v-for="(ref, index) in plano.turma.disciplina.bibliografiaComplementar"
             :key="index">
            {{ ref }}
          </p>
          <p v-if="!plano.turma.disciplina.bibliografiaComplementar">
            Nenhuma informação encontrada!
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
          <cronograma :itens="plano.itensCronograma"
                      :edicao="cronograma.editaCronograma"/>
        </div>
      </div>
    </q-collapsible>
    <!--endregion-->

    <!--region Modal Comentários-->
    <modal-comentario
      id="modalComentarioContribuicao"
      :show-modal="contribuicaoFormacao.comentarios.showModal"
      :messages="contribuicaoFormacao.comentarios.data"
      @onSaveNewMessage="registraComentarioContribuicao"
      @onHideModal="contribuicaoFormacao.comentarios.showModal = false"/>
    <modal-comentario
      id="modalComentarioConteudo"
      :show-modal="conteudo.comentarios.showModal"
      :messages="conteudo.comentarios.data"
      @onSaveNewMessage="registraComentarioConteudo"
      @onHideModal="conteudo.comentarios.showModal = false"/>
    <modal-comentario
      id="modalComentarioCriterios"
      :show-modal="criteriosAvaliacao.comentarios.showModal"
      :messages="criteriosAvaliacao.comentarios.data"
      @onSaveNewMessage="registraComentarioCriterios"
      @onHideModal="criteriosAvaliacao.comentarios.showModal = false"/>
    <!--endregion-->

    <!--region Menu Fab-->
    <v-speed-dial
      v-if="showBtnAprovarReprovar || showBtnEdicao"
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
        v-if="showBtnEdicao"
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
        v-if="showBtnEdicao"
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
        v-if="showBtnAprovarReprovar"
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
        v-if="showBtnAprovarReprovar"
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

    <!--region Modal Alteração Carga Horária-->
    <v-dialog v-model="showModalCargaHoraria"
              :fullscreen="$vuetify.breakpoint.smAndDown"
              width="70vw"
              scrollable>
      <v-card tile>
        <v-toolbar card
                   color="light">
          <v-toolbar-title>Alterar Carga Horária</v-toolbar-title>
          <v-spacer/>
          <q-btn push
                 label="Cancelar"
                 icon="close"
                 class="q-mr-sm"
                 @click="showModalCargaHoraria = false"/>
          <q-btn push
                 label="Salvar"
                 icon="save"
                 color="green"
                 @click="saveCargaHoraria()"/>
        </v-toolbar>
        <v-card-text>
          <v-container grid-list-md>
            <v-layout wrap>
              <v-flex xs12>
                <v-text-field
                  v-model="cargaHoraria.teorica"
                  type="number"
                  label="Teórica"
                  placeholder="Informe a carga horária teórica"
                  outline/>
              </v-flex>
              <v-flex xs12>
                <v-text-field
                  v-model="cargaHoraria.pratica"
                  type="number"
                  label="Prática"
                  placeholder="Informe a carga horária prática"
                  outline/>
              </v-flex>
            </v-layout>
          </v-container>
        </v-card-text>
      </v-card>
    </v-dialog>
    <!--endregion-->
  </div>
</template>

<script>
import {LocalStorage, uid}                 from 'quasar';
import Cronograma                          from './cronograma';
import {statusPlanoEnsino, tipoComentario} from '../../../utils/constants';
import {planoEnsinoService}                from '../planoEnsinoService';
import ModalComentario                     from './modal-comentario';

const NO_CONTENT_MESSAGE = 'Nenhuma informação encontrada!';

export default {
  name: 'DetalhesPlanoEnsino',
  components: {ModalComentario, Cronograma},
  props: {
    uuid: {
      type: String,
      default: undefined,
      require: true
    }
  },
  data () {
    return {
      contribuicaoFormacao: {
        comentarios: {
          data: [
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
            },
            {
              name: 'Stephany',
              text: ['O conteúdo ficou bom, mas é necessário melhorar a distribuição dele com as datas no cronograma'],
              stamp: '13:55'
            },
            {
              name: 'Stephany',
              text: ['O conteúdo ficou bom, mas é necessário melhorar a distribuição dele com as datas no cronograma'],
              stamp: '13:55'
            }
          ],
          showModal: false,
          novoComentario: {descricao: ''},
          qtdNaoLidos: 0
        },
        collapsible: true,
        editaContribuicao: false
      },
      conteudo: {
        comentarios: {
          data: [
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
          showModal: false,
          novoComentario: {descricao: ''},
          qtdNaoLidos: 0
        },
        collapsible: true,
        editaConteudo: false,
        qtdComentariosNaoLidos: 0
      },
      criteriosAvaliacao: {
        comentarios: {
          data: [
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
          showModal: false,
          novoComentario: {descricao: ''},
          qtdNaoLidos: 0
        },
        collapsible: true,
        editaCriterios: false,
        qtdComentariosNaoLidos: 0
      },
      cronograma: {
        comentarios: {
          data: [
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
          showModal: false,
          novoComentario: {descricao: ''},
          qtdNaoLidos: 0
        },
        collapsible: false,
        editaCronograma: false
      },
      cargaHoraria: {
        teorica: undefined,
        pratica: undefined
      },
      showModalCargaHoraria: false,
      showMenuFab: false,
      showModalCopiar: false,
      showModalAprovacao: false,
      showBtnAprovarReprovar: false,
      showBtnEdicao: false,
      addItemCronograma: false,
      plano: {
        id: undefined,
        uuid: undefined,
        contribuicaoFormacao: NO_CONTENT_MESSAGE,
        conteudo: NO_CONTENT_MESSAGE,
        criteriosAvaliacao: NO_CONTENT_MESSAGE,
        qtdHorasPratica: 0,
        qtdHorasTeorica: 0,
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
        ],
        turma: {
          uuid: undefined,
          nome: '',
          statusPlanoEnsino: '',
          disciplina: {
            uuid: undefined,
            nome: '',
            ementa: NO_CONTENT_MESSAGE,
            bibliografiaBasica: [NO_CONTENT_MESSAGE],
            bibliografiaComplementar: [NO_CONTENT_MESSAGE]
          },
          professor: {
            uuid: undefined,
            nome: ''
          },
          curso: {
            uuid: undefined,
            nome: '',
            coordenador: {
              uuid: undefined,
              nome: ''
            }
          }
        }
      }
    };
  },
  computed: {
    colorByStatus () {
      return statusPlanoEnsino.getColorByValue(this.plano.turma.statusPlanoEnsino);
    }
  },
  async created () {
    if (this.uuid) {
      this.$q.loading.show();
      await planoEnsinoService.getPlanoByTurmaUUID(this.uuid)
      .then(data => {
        if (!data) {
          this.$router.push({path: '/pages/turmas'});
          this.$q.notify({
            type: 'warning',
            position: 'top',
            message: 'Disciplina não encontrada!'
          });
        } else {
          this.plano                  = {
            ...this.plano,
            ...data
          };
          this.showBtnAprovarReprovar = this.isShowBtnAprovarReprovar();
          this.showBtnEdicao          = this.isShowBtnEdicao();
          console.log(this.plano);
        }
      })
      .catch(() => {
        this.$router.push({path: '/pages/turmas'});
        this.$q.notify({
          message: `Erro ao buscar informações!`,
          type: 'negative',
          detail: 'Aguarde e tente novamente',
          position: 'top'
        });
      })
      .finally(() => this.$q.loading.hide());
    }
  },
  methods: {
    saveCargaHoraria () {
      this.$q.loading.show();
      planoEnsinoService.updateCargaHoraria(this.plano.id, this.cargaHoraria.teorica, this.cargaHoraria.pratica)
      .then(() => {
        this.$q.notify({
          message: `Carga horária alterada com sucesso!`,
          type: 'positive',
          position: 'top'
        });
        this.plano.qtdHorasTeorica = this.cargaHoraria.teorica;
        this.plano.qtdHorasPratica = this.cargaHoraria.pratica;
        this.showModalCargaHoraria = false;
      }).catch(() => {
        this.$q.notify({
          message: 'Não foi possível salvar as alterações.',
          detail: 'Atualize a página e tente novamente!',
          type: 'warning',
          position: 'top'
        });
      }).finally(() => this.$q.loading.hide());
    },
    onShowModalCargaHoraria () {
      this.cargaHoraria.teorica  = this.plano.qtdHorasTeorica;
      this.cargaHoraria.pratica  = this.plano.qtdHorasPratica;
      this.showModalCargaHoraria = true;
    },
    saveContribuicao () {
      this.$q.loading.show({message: 'Salvando Informações!'});
      planoEnsinoService.updateContribuicaoFormacao(this.plano.id, this.plano.contribuicaoFormacao)
      .then(() => {
        this.$q.notify({
          message: 'Contribuição atualizada com sucesso!',
          type: 'positive',
          position: 'top'
        });
        this.contribuicaoFormacao.editaContribuicao = false;
      }).catch(() => {
        this.$q.notify({
          message: 'Não foi possível salvar as alterações.',
          detail: 'Atualize a página e tente novamente!',
          type: 'warning',
          position: 'top'
        });
      }).finally(() => this.$q.loading.hide());
    },
    saveConteudo () {
      this.$q.loading.show({message: 'Salvando Informações!'});
      planoEnsinoService.updateConteudo(this.plano.id, this.plano.conteudo)
      .then(() => {
        this.$q.notify({
          message: 'Conteúdo atualizado com sucesso!',
          type: 'positive',
          position: 'top'
        });
        this.conteudo.editaConteudo = false;
      }).catch(() => {
        this.$q.notify({
          message: 'Não foi possível salvar as alterações.',
          detail: 'Atualize a página e tente novamente!',
          type: 'warning',
          position: 'top'
        });
      }).finally(() => this.$q.loading.hide());
    },
    saveCriteriosAvaliacao () {
      this.$q.loading.show({message: 'Salvando Informações!'});
      planoEnsinoService.updateCriteriosAvaliacao(this.plano.id, this.plano.criteriosAvaliacao)
      .then(() => {
        this.$q.notify({
          message: 'Padrões e Critérios atualizados com sucesso!',
          type: 'positive',
          position: 'top'
        });
        this.criteriosAvaliacao.editaCriterios = false;
      }).catch(() => {
        this.$q.notify({
          message: 'Não foi possível salvar as alterações.',
          detail: 'Atualize a página e tente novamente!',
          type: 'warning',
          position: 'top'
        });
      }).finally(() => this.$q.loading.hide());
    },
    showModalComentariosConteudo () {
      this.showModalComentarios = true;
    },
    showModalComentariosContribuicao () {
      this.contribuicaoFormacao.comentarios.showModal = true;
    },
    showModalComentariosCriterios () {
      this.showModalComentarios = true;
    },
    showModalComentariosCronograma () {
      this.showModalComentarios = true;
    },
    registraComentarioContribuicao (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.registraComentario(this.plano.id, {
        descricao: descricao,
        tipo: tipoComentario.CONTRIBUICAO_FORMACAO
      })
      .then(coment => {
        this.contribuicaoFormacao.comentarios.data.push(coment);
      })
      .catch(err => {
        console.log(err);
        this.$q.notify({
          message: 'Não foi possível salvar as alterações.',
          detail: 'Atualize a página e tente novamente!',
          type: 'warning',
          position: 'top'
        });
      })
      .finally(() => this.$q.loading.hide());
    },
    registraComentarioConteudo (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.registraComentario(this.plano.id, {
        descricao: descricao,
        tipo: tipoComentario.CONTEUDO
      })
      .then(coment => {
        this.conteudo.comentarios.data.push(coment);
      })
      .catch(err => {
        console.log(err);
        this.$q.notify({
          message: 'Não foi possível salvar as alterações.',
          detail: 'Atualize a página e tente novamente!',
          type: 'warning',
          position: 'top'
        });
      })
      .finally(() => this.$q.loading.hide());
    },
    registraComentarioCriterios (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.registraComentario(this.plano.id, {
        descricao: descricao,
        tipo: tipoComentario.CRITERIOS_AVALIACAO
      })
      .then(coment => {
        this.criteriosAvaliacao.comentarios.data.push(coment);
      })
      .catch(err => {
        console.log(err);
        this.$q.notify({
          message: 'Não foi possível salvar as alterações.',
          detail: 'Atualize a página e tente novamente!',
          type: 'warning',
          position: 'top'
        });
      })
      .finally(() => this.$q.loading.hide());
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
    },
    isShowBtnEdicao () {
      const usuarioLogado = LocalStorage.get.item('contexto').usuarioLogado;
      console.log(this.plano.turma.professor.nome);
      return (this.plano.turma.statusPlanoEnsino === statusPlanoEnsino.EM_PRODUCAO ||
        this.plano.turma.statusPlanoEnsino === statusPlanoEnsino.NECESSITA_ALTERACOES) &&
        this.$can('PROFESSOR') && usuarioLogado.uuid === this.plano.turma.professor.uuid;
    },
    isShowBtnAprovarReprovar () {
      return this.plano.turma.statusPlanoEnsino === statusPlanoEnsino.AGUARDANDO_ANALISE &&
        this.$can('COORDENADOR');
    }
  }
};
</script>

<style lang="stylus">
  .q-card .q-card-main p
    font-size 16px
</style>
