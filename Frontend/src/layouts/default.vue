<template>
  <q-layout view="Lhh lpr lFf">
    <!--region Header Toolbar-->
    <q-layout-header reveal>
      <q-toolbar style="height: 60px;">
        <q-btn flat
               round
               dense
               class="within-iframe-hide"
               icon="menu"
               @click="drawerState = !drawerState"/>
        <q-toolbar-title>
          {{ pageTitle }}
        </q-toolbar-title>
        <div @mouseover="showLabelSemestre = false"
             @mouseleave="showLabelSemestre = true">
          <q-btn :icon="showLabelSemestre ? 'beenhere' : 'edit'"
                 :label="showLabelSemestre ? labelSemestre : 'Alterar Semestre'"
                 flat
                 class="q-mr-sm text-primary bg-white"
                 @click="modalAlterarPeriodoLetivo = true"/>
        </div>
        <q-btn :label="usuarioLogado.nome"
               flat
               class="q-mr-sm text-primary bg-white"
               icon="person">
          <q-popover class="q-mt-sm"
                     style="width: 350px;">
            <q-list>
              <q-item>
                <q-item-side inverted
                             icon="person"
                             color="primary"/>
                <q-item-main :label="usuarioLogado.nome"
                             :sublabel="usuarioLogado.email"/>
              </q-item>
              <q-item-separator/>
              <q-item v-close-overlay
                      link>
                <q-item-side icon="person"/>
                <q-item-main label="Minha Conta"/>
              </q-item>
              <q-item link
                      tag="label"
                      @click.native="onClickBtnSair">
                <q-item-side icon="exit_to_app"/>
                <q-item-main label="Sair"/>
              </q-item>
            </q-list>
          </q-popover>
        </q-btn>
      </q-toolbar>
    </q-layout-header>
    <!--endregion-->
    <!--region Footer-->
    <q-layout-footer reveal>
      <q-toolbar :inverted="$q.theme === 'ios'">
        <q-toolbar-title>
          Sistema de Gerenciamento de Planos de Ensino | Católica do Tocantins | v1.0
        </q-toolbar-title>
      </q-toolbar>
    </q-layout-footer>
    <!--endregion-->
    <!--region Sidebar Direita-->
    <q-layout-drawer v-model="drawerState"
                     show-if-above>
      <q-scroll-area :class="$q.theme === 'mat' ? 'bg-light text-primary' : null"
                     style="width: 100%; height: 100%;">
        <div class="row flex-center"
             style="height: 100px">
          <img src="http://www.catolica-to.edu.br/portal/portal/media/img/logo_catolica_azul.png"
               width="60%">
        </div>
        <q-item-separator class="q-mb-none"/>
        <q-list no-border
                class="q-pt-none">
          <q-item to="/pages"
                  class="q-pa-md"
                  exact>
            <q-item-side icon="home"
                         color="primary"/>
            <q-item-main label="Início"/>
          </q-item>
          <template v-for="(item, index) in menu">
            <div v-if="!item.permissionRequired || hasPermision(item.permissionRequired)"
                 :key="index">
              <q-item v-if="!item.children"
                      :key="index"
                      :to="item.route"
                      class="q-pa-md">
                <q-item-side :icon="item.icon"
                             color="primary"/>
                <q-item-main :label="item.title"/>
                <q-item-side v-if="item.status"
                             right>
                  <q-chip small
                          color="secondary">{{ item.status }}
                  </q-chip>
                </q-item-side>
              </q-item>
              <q-list-header v-if="item.children && item.children.length > 0">
                {{ item.title }}
              </q-list-header>
              <template v-for="(subItem, index2) in item.children">
                <q-item v-if="!subItem.permissionRequired || hasPermision(subItem.permissionRequired)"
                        :key="index2"
                        :to="subItem.route">
                  <q-item-side :icon="subItem.icon"
                               color="primary"/>
                  <q-item-main :label="subItem.title"/>
                  <q-item-side v-if="subItem.status"
                               right>
                    <q-chip small
                            color="secondary">{{ subItem.status }}
                    </q-chip>
                  </q-item-side>
                </q-item>
              </template>
            </div>
          </template>
        </q-list>
      </q-scroll-area>
    </q-layout-drawer>
    <!--endregion-->

    <!--region Modal Alterar Semestre-->
    <v-dialog v-model="modalAlterarPeriodoLetivo"
              :fullscreen="$vuetify.breakpoint.smAndDown"
              width="70vw"
              scrollable>
      <v-card tile>
        <v-toolbar card
                   dark
                   color="primary">
          <v-btn icon
                 dark
                 @click.native="modalAlterarPeriodoLetivo = false">
            <v-icon>close</v-icon>
          </v-btn>
          <v-toolbar-title>Alterar Contexto</v-toolbar-title>
          <v-spacer/>
          <q-btn push
                 label="Salvar"
                 icon="save"
                 color="green"
                 @click="alterarContexto"/>
        </v-toolbar>
        <v-card-text>
          <v-container grid-list-md>
            <v-layout wrap>
              <v-flex xs12>
                <v-autocomplete v-model="periodos.periodoSelecionado"
                                :loading="periodos.isSearching"
                                :items="periodos.items"
                                :search-input.sync="periodos.searchValue"
                                cache-items
                                hide-selected
                                clearable
                                solo
                                hide-details
                                item-text="descricao"
                                item-value="uuid"
                                return-object
                                label="Período Letivo">
                  <template slot="no-data">
                    <v-list-tile>
                      <v-list-tile-title>
                        Nenhum registro encontrado...
                      </v-list-tile-title>
                    </v-list-tile>
                  </template>
                  <template slot="selection"
                            slot-scope="{ item, selected }">
                    {{ item.descricao }}
                  </template>
                  <template slot="item"
                            slot-scope="{ item, tile }">
                    <v-list-tile-content>
                      <v-list-tile-title v-text="item.descricao"/>
                    </v-list-tile-content>
                  </template>
                </v-autocomplete>
              </v-flex>
            </v-layout>
          </v-container>
        </v-card-text>
      </v-card>
    </v-dialog>
    <!--endregion-->

    <q-page-container>
      <transition :duration="300"
                  enter-active-class="animated fadeIn"
                  leave-active-class="animated fadeOut"
                  mode="out-in"
                  @leave="resetScroll">
        <q-page padding>
          <breadcrumb :items="breadcrumbItems"/>
          <router-view/>
        </q-page>
      </transition>
    </q-page-container>
  </q-layout>
</template>

<script>
import menu                        from '../statics/menu';
import profiles                    from '../utils/securityPermissions';
import {PeriodoService}            from '../utils/periodoService';
import {atualizaPeriodoNoContexto} from '../utils/securityService';
import Breadcrumb                  from '../components/breadcrumb';

export default {
  components: {Breadcrumb},
  data () {
    return {
      showLabelSemestre: true,
      modalAlterarPeriodoLetivo: false,
      drawerState: true,
      periodos: {
        periodoSelecionado: undefined,
        isSearching: false,
        items: [],
        searchValue: ''
      },
      periodoLetivoAtual: '',
      menu: menu,
      profile: profiles
    };
  },
  computed: {
    labelSemestre () {
      if (!this.periodoLetivoAtual) {
        const usuarioLogado = this.$q.localStorage.get.item('contexto')['usuarioLogado'];
        const periodoLetivo = usuarioLogado.preferenciaUsuario.periodoSelecionado;
        return periodoLetivo ? periodoLetivo.descricao : '';
      }
      return this.periodoLetivoAtual;
    },
    usuarioLogado () {
      return this.$q.localStorage.get.item('contexto')['usuarioLogado'];
    },
    pageTitle () {
      return this.$route.meta.title;
    },
    breadcrumbItems () {
      return this.$route.meta ? this.$route.meta.breadcrumb : [];
    }
  },
  watch: {
    'periodos.searchValue' (value) {
      const valueAtual = value;
      if (valueAtual && valueAtual.length > 2) {
        setTimeout(async () => {
          if (valueAtual === this.periodos.searchValue) {
            this.periodos.isSearching = true;
            await PeriodoService.getPeriodosByNome(valueAtual)
            .then(({content}) => {
              this.periodos.items = content || [];
            }).catch(() => this.$q.notify({
              message: `Ooops! Estamos com problemas`,
              type: 'negative',
              detail: 'Aguarde e tente novamente',
              position: 'top'
            })).finally(() => {
              this.periodos.isSearching = false;
            });
          }
        }, 500);
      }
    }
  },
  methods: {
    alterarContexto () {
      console.log(this.periodos.periodoSelecionado);
      atualizaPeriodoNoContexto(this.periodos.periodoSelecionado.uuid)
      .then(({data}) => {
        const contexto         = this.$q.localStorage.get.item('contexto');
        contexto.usuarioLogado = data;
        this.$q.localStorage.set('contexto', contexto);
        this.periodoLetivoAtual = this.periodos.periodoSelecionado.descricao;
        this.$root.$emit('contextoAlterado');
        this.$q.notify({
          message: 'Período alterado com sucesso!',
          type: 'positive',
          position: 'top'
        });
      })
      .catch(err => {
        console.log(err);
        this.$q.notify({
          message: 'Oops, não foi possível alterar o contexto!',
          detail: 'Atualize a página e tente novamente.',
          type: 'negative',
          position: 'top'
        });
      });
    },
    hasPermision (array) {
      return this.$can(array);
    },
    onClickBtnSair () {
      this.$store.dispatch('contexto/logout').then(() => {
        this.$router.push('/login');
      });
    },
    resetScroll (el, done) {
      document.documentElement.scrollTop = 0;
      document.body.scrollTop            = 0;
      done();
    }
  }
};
</script>
