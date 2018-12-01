<template>
  <div>
    <!--region Identificação da Turma-->
    <q-card class="bg-light">
      <div class="row q-pa-md">
        <div :class="{'col-xs-12 q-title': true, 'col-lg-6': showBtnEdicao || showBtnAprovarReprovar}"
             style="line-height: 36px;">
          {{ plano.turma.nome }} - {{ plano.turma.disciplina.nome }}
        </div>
        <div
          v-if="showBtnEdicao || showBtnAprovarReprovar"
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
          <div>
            <q-btn
              push
              icon="print"
              label="Imprimir"
              title="Imprimir plano de ensino"
              @click="onClickBtnImprimir"/>
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
        <q-item-side slot="right">
          <q-btn push
                 icon="chat"
                 color="primary"
                 @click.stop="showModalComentariosEmenta()">
            <q-chip v-if="ementa.comentarios.qtdNaoLidos"
                    floating
                    color="red">
              {{ ementa.comentarios.qtdNaoLidos }}
            </q-chip>
            <q-tooltip :offset="[10, 10]">
              Ver e Responder Comentários
            </q-tooltip>
          </q-btn>
        </q-item-side>
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
        <q-item-side slot="right">
          <q-btn push
                 icon="chat"
                 color="primary"
                 @click.stop="showModalComentariosBibliografia()">
            <q-chip v-if="bibliografia.comentarios.qtdNaoLidos"
                    floating
                    color="red">
              {{ bibliografia.comentarios.qtdNaoLidos }}
            </q-chip>
            <q-tooltip :offset="[10, 10]">
              Ver e Responder Comentários
            </q-tooltip>
          </q-btn>
        </q-item-side>
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
    <q-collapsible
      v-model="cronograma.collapsible"
      :duration="500"
      class="bg-light q-pa-sm"
      @show="onOpenCronograma">
      <template slot="header">
        <q-item-main class="q-title">
          6. Cronograma
        </q-item-main>
        <q-item-side slot="right">
          <q-btn push
                 icon="chat"
                 color="primary"
                 @click.stop="showModalComentariosCronograma()">
            <q-chip v-if="cronograma.comentarios.qtdNaoLidos"
                    floating
                    color="red">
              {{ cronograma.comentarios.qtdNaoLidos }}
            </q-chip>
            <q-tooltip :offset="[10, 10]">
              <strong>Ver e Responder Comentários</strong>
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="showBtnEdicao"
            icon="add"
            color="primary"
            push
            class="q-ml-sm"
            @click.stop="onClickBtnAddItemCronograma()">
            <q-tooltip :offset="[10, 10]">
              <strong>Adicionar Competência</strong>
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="showBtnEdicao && !cronograma.editaCronograma"
            icon="edit"
            color="primary"
            push
            class="q-ml-sm"
            @click.stop="onClickBtnEditaCronograma()">
            <q-tooltip :offset="[10, 10]">
              <strong>Editar Cronograma</strong>
            </q-tooltip>
          </q-btn>
          <q-btn
            v-if="showBtnEdicao && cronograma.editaCronograma"
            icon="check"
            color="positive"
            push
            class="q-ml-sm"
            @click.stop="cronograma.editaCronograma = false">
            <q-tooltip :offset="[10, 10]">
              <strong>Concluir Alterações</strong>
            </q-tooltip>
          </q-btn>
        </q-item-side>
      </template>
      <div class="row animate-scale">
        <div id="col-cronograma"
             class="col-xs-12">
          <div v-if="plano.itensCronograma && plano.itensCronograma.length > 0">
            <cronograma
              :itens="plano.itensCronograma"
              :edicao="cronograma.editaCronograma"
              @addHabilidade="onClickBtnAddSubItemCronograma"
              @removeItem="onRemoveItem"
              @removeCompetencia="onRemoveCompetencia"/>
          </div>
          <q-spinner
            v-if="cronograma.loadingItensCronograma"
            :size="50"
            color="primary"/>
        </div>
      </div>
    </q-collapsible>
    <!--endregion-->

    <!--region Modal Comentários-->
    <modal-comentario
      id="modalComentarioEmenta"
      :show-modal="ementa.comentarios.showModal"
      :messages="ementa.comentarios.data"
      @onSaveNewMessage="registraComentarioEmenta"
      @onHideModal="ementa.comentarios.showModal = false"/>
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
    <modal-comentario
      id="modalComentarioBibliografia"
      :show-modal="bibliografia.comentarios.showModal"
      :messages="bibliografia.comentarios.data"
      @onSaveNewMessage="registraComentarioBibliografia"
      @onHideModal="bibliografia.comentarios.showModal = false"/>
    <modal-comentario
      id="modalComentarioCronograma"
      :show-modal="cronograma.comentarios.showModal"
      :messages="cronograma.comentarios.data"
      @onSaveNewMessage="registraComentarioCronograma"
      @onHideModal="cronograma.comentarios.showModal = false"/>
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

    <!--region Modais do Cronograma-->
    <modal-competencia
      :show-modal="cronograma.showModalCompetencia"
      @hideModal="cronograma.showModalCompetencia = false"
      @addCompetencia="onAddCompetencia"/>

    <modal-habilidade
      :show-modal="cronograma.showModalHabilidade"
      :item="cronograma.itemSelecionado"
      @hideModal="cronograma.showModalHabilidade = false"
      @addHabilidade="onAddHabilidade"/>
    <!--endregion-->
  </div>
</template>

<script>
import {LocalStorage}                      from 'quasar';
import Cronograma                          from './cronograma-edicao';
import {statusPlanoEnsino, tipoComentario} from '../../../utils/constants';
import {planoEnsinoService}                from './planoEnsinoService';
import ModalComentario                     from './modal-comentario';
import {notificationService}               from '../../../utils/notificationService';
import ModalCompetencia                    from './modal-competencia';
import {comentarioService}                 from './comentarioService';
import ModalHabilidade                     from './modal-habilidade';

const NO_CONTENT_MESSAGE = 'Nenhuma informação encontrada!';

export default {
  name: 'DetalhesPlanoEnsino',
  components: {ModalHabilidade, ModalCompetencia, ModalComentario, Cronograma},
  props: {
    uuid: {
      type: String,
      default: undefined,
      require: true
    }
  },
  data () {
    return {
      ementa: {
        comentarios: {
          data: [
            {
              label: 'Nenhum comentário encontrado'
            }
          ],
          showModal: false,
          qtdNaoLidos: 0
        }
      },
      bibliografia: {
        comentarios: {
          data: [
            {
              label: 'Nenhum comentário encontrado'
            }
          ],
          showModal: false,
          qtdNaoLidos: 0
        }
      },
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
          qtdNaoLidos: 0
        },
        collapsible: true,
        editaContribuicao: false
      },
      conteudo: {
        comentarios: {
          data: [
            {
              label: 'Nenhum comentário encontrado'
            }
          ],
          showModal: false,
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
              label: 'Nenhum comentário encontrado'
            }
          ],
          showModal: false,
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
              label: 'Nenhum comentário encontrado'
            }
          ],
          showModal: false,
          qtdNaoLidos: 0
        },
        collapsible: false,
        editaCronograma: false,
        showModalCompetencia: false,
        loadingItensCronograma: false,
        itemSelecionado: undefined,
        showModalHabilidade: false
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
        itensCronograma: [],
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
          notificationService.warning('Disciplina não encontrada!');
        } else {
          this.plano                  = {
            ...this.plano,
            ...data
          };
          this.showBtnAprovarReprovar = this.isShowBtnAprovarReprovar();
          this.showBtnEdicao          = this.isShowBtnEdicao();
        }
      })
      .catch(() => {
        this.$router.push({path: '/pages/turmas'});
        notificationService.error('Erro ao buscar informações!');
      })
      .finally(() => {
        this.$q.loading.hide();
      });
    }
  },
  methods: {
    // region EMENTA
    registraComentarioEmenta (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      comentarioService.registraComentario(this.plano.uuid, {
        descricao: descricao,
        tipo: tipoComentario.EMENTA
      })
      .then(coment => {
        notificationService.success('Comentário registrado com sucesso!');
        this.bibliografia.comentarios.data.push(coment);
      })
      .catch(() => {
        notificationService.errorOnSave();
      })
      .finally(() => this.$q.loading.hide());
    },
    showModalComentariosEmenta () {
      this.bibliografia.comentarios.showModal = true;
    },
    // endregion

    // region CARGA HORARIA
    saveCargaHoraria () {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.updateCargaHoraria(this.plano.uuid, this.cargaHoraria.teorica, this.cargaHoraria.pratica)
      .then(() => {
        notificationService.success('Carga horária alterada com sucesso!');
        this.plano.qtdHorasTeorica = this.cargaHoraria.teorica;
        this.plano.qtdHorasPratica = this.cargaHoraria.pratica;
        this.showModalCargaHoraria = false;
      }).catch(() => {
        notificationService.errorOnSave();
      }).finally(() => this.$q.loading.hide());
    },
    onShowModalCargaHoraria () {
      this.cargaHoraria.teorica  = this.plano.qtdHorasTeorica;
      this.cargaHoraria.pratica  = this.plano.qtdHorasPratica;
      this.showModalCargaHoraria = true;
    },
    // endregion

    // region CONTRIBUIÇÂO FORMAÇÂO
    onClickBtnEditaContribuicao () {
      this.contribuicaoFormacao.collapsible       = true;
      this.contribuicaoFormacao.editaContribuicao = true;
    },
    saveContribuicao () {
      this.$q.loading.show({message: 'Salvando Informações!'});
      planoEnsinoService.updateContribuicaoFormacao(this.plano.uuid, this.plano.contribuicaoFormacao)
      .then(() => {
        notificationService.success('Contribuição atualizada com sucesso!');
        this.contribuicaoFormacao.editaContribuicao = false;
      }).catch(() => {
        notificationService.errorOnSave();
      }).finally(() => this.$q.loading.hide());
    },
    showModalComentariosContribuicao () {
      this.contribuicaoFormacao.comentarios.showModal = true;
    },
    registraComentarioContribuicao (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.registraComentario(this.plano.uuid, {
        descricao: descricao,
        tipo: tipoComentario.CONTRIBUICAO_FORMACAO
      })
      .then(coment => {
        notificationService.success('Comentário registrado com sucesso!');
        this.contribuicaoFormacao.comentarios.data.push(coment);
      })
      .catch(() => {
        notificationService.errorOnSave();
      })
      .finally(() => this.$q.loading.hide());
    },
    // endregion

    // region CONTEUDO
    onClickBtnEditaConteudo () {
      this.conteudo.collapsible   = true;
      this.conteudo.editaConteudo = true;
    },
    saveConteudo () {
      this.$q.loading.show({message: 'Salvando Informações!'});
      planoEnsinoService.updateConteudo(this.plano.uuid, this.plano.conteudo)
      .then(() => {
        notificationService.success('Conteúdo atualizado com sucesso!');
        this.conteudo.editaConteudo = false;
      }).catch(() => {
        notificationService.errorOnSave();
      }).finally(() => this.$q.loading.hide());
    },
    showModalComentariosConteudo () {
      this.conteudo.comentarios.showModal = true;
    },
    registraComentarioConteudo (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.registraComentario(this.plano.uuid, {
        descricao: descricao,
        tipo: tipoComentario.CONTEUDO
      })
      .then(coment => {
        notificationService.success('Comentário registrado com sucesso!');
        this.conteudo.comentarios.data.push(coment);
      })
      .catch(() => {
        notificationService.errorOnSave();
      })
      .finally(() => this.$q.loading.hide());
    },
    // endregion

    // region CRITERIOS AVALIACAO
    onClickBtnEditaCriterios () {
      this.criteriosAvaliacao.collapsible    = true;
      this.criteriosAvaliacao.editaCriterios = true;
    },
    saveCriteriosAvaliacao () {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.updateCriteriosAvaliacao(this.plano.uuid, this.plano.criteriosAvaliacao)
      .then(() => {
        notificationService.success('Critérios atualizados com sucesso!');
        this.criteriosAvaliacao.editaCriterios = false;
      }).catch(() => {
        notificationService.errorOnSave();
      }).finally(() => this.$q.loading.hide());
    },
    showModalComentariosCriterios () {
      this.criteriosAvaliacao.comentarios.showModal = true;
    },
    registraComentarioCriterios (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.registraComentario(this.plano.uuid, {
        descricao: descricao,
        tipo: tipoComentario.CRITERIOS_AVALIACAO
      })
      .then(coment => {
        notificationService.success('Comentário registrado com sucesso!');
        this.criteriosAvaliacao.comentarios.data.push(coment);
      })
      .catch(() => {
        notificationService.errorOnSave();
      })
      .finally(() => this.$q.loading.hide());
    },
    // endregion

    // region BIBLIOGRAFIA
    registraComentarioBibliografia (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.registraComentario(this.plano.uuid, {
        descricao: descricao,
        tipo: tipoComentario.BIBLIOGRAFIA
      })
      .then(coment => {
        notificationService.success('Comentário registrado com sucesso!');
        this.bibliografia.comentarios.data.push(coment);
      })
      .catch(() => {
        notificationService.errorOnSave();
      })
      .finally(() => this.$q.loading.hide());
    },
    showModalComentariosBibliografia () {
      this.bibliografia.comentarios.showModal = true;
    },
    // endregion

    // region CRONOGRAMA
    onOpenCronograma () {
      this.cronograma.loadingItensCronograma = true;
      planoEnsinoService.getItensCronogramaBy(this.plano.uuid)
      .then(data => {
        this.plano.itensCronograma = data;
      })
      .finally(() => {
        this.cronograma.loadingItensCronograma = false;
      });
    },
    registraComentarioCronograma (descricao) {
      this.$q.loading.show({message: 'Salvando Informações'});
      planoEnsinoService.registraComentario(this.plano.uuid, {
        descricao: descricao,
        tipo: tipoComentario.CRONOGRAMA
      })
      .then(coment => {
        notificationService.success('Comentário registrado com sucesso!');
        this.cronograma.comentarios.data.push(coment);
      })
      .catch(() => {
        notificationService.errorOnSave();
      })
      .finally(() => this.$q.loading.hide());
    },
    onClickBtnEditaCronograma () {
      this.cronograma.collapsible     = true;
      this.cronograma.editaCronograma = !this.cronograma.editaCronograma;
    },
    showModalComentariosCronograma () {
      this.cronograma.comentarios.showModal = true;
    },
    onClickBtnAddItemCronograma () {
      this.cronograma.showModalCompetencia = true;
    },
    onRemoveItem (item) {
      let confirm = window.confirm('Deseja realmente remover o item do cronograma');
      if (confirm) {
        alert('Item removido com sucesso!');
      }
    },
    onRemoveCompetencia (item) {
      planoEnsinoService.updateItemCronograma(item)
      .then(res => {
        if (res) {
          this.$notify.success('Item atualizado com sucesso!');
        }
      }).catch(err => this.$notify.error(err && err.descrition ? err.descrition : 'Erro ao tentar atualizar o item!'));
    },
    onAddCompetencia (competencias) {
      planoEnsinoService.saveNewItemCronograma(this.plano.uuid, competencias)
      .then(res => {
        if (res) {
          this.onOpenCronograma();
          this.$notify.success('Item do cronograma inserido com sucesso!');
          this.cronograma.showModalCompetencia = false;
        }
      });
    },
    onClickBtnAddSubItemCronograma (item) {
      this.cronograma.itemSelecionado     = item;
      this.cronograma.showModalHabilidade = true;
    },
    onAddHabilidade (subItem) {
      planoEnsinoService.saveNewSubItemCronograma(subItem)
      .then(res => {
        if (res) {
          this.onOpenCronograma();
          this.$notify.success('Item do cronograma inserido com sucesso!');
          this.cronograma.showModalHabilidade = false;
        }
      });
    },
    // endregion

    onClickBtnImprimir () {
      this.$router.push(`/planoensino/${this.plano.turma.uuid}`);
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
    isShowBtnEdicao () {
      const usuarioLogado = LocalStorage.get.item('contexto').usuarioLogado;
      return (
        this.plano.turma.statusPlanoEnsino === statusPlanoEnsino.AGUARDANDO_PRODUCAO ||
        this.plano.turma.statusPlanoEnsino === statusPlanoEnsino.EM_PRODUCAO ||
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
