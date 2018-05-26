<template>
  <q-layout view="Lhh lpr lFf">
    <!--region Header Toolbar-->
    <q-layout-header reveal>
      <q-toolbar style="height: 60px;">
        <!--<q-btn flat dense v-go-back.single="pageMeta.backRoute" class="cordova-only electron-only">-->
        <q-btn flat dense class="cordova-only electron-only">
          <q-icon name="arrow_back"/>
        </q-btn>
        <q-btn flat round dense class="within-iframe-hide" @click="drawerState = !drawerState" icon="fa-bars"/>
        <q-toolbar-title>
          {{ pageTitle }}
        </q-toolbar-title>
        <q-btn flat class="q-mr-sm text-primary bg-white" icon="beenhere" label="Semestre 2018/2">
          <q-popover class="q-mt-sm">
            <q-list>
              <q-item link>
                <q-item-side icon="beenhere"/>
                <q-item-main label="Semestre 2017/02"/>
              </q-item>
              <q-item-separator/>
              <q-item link>
                <q-item-side icon="beenhere"/>
                <q-item-main label="Semestre 2017/01"/>
              </q-item>
              <q-item-separator/>
              <q-item link>
                <q-item-side icon="beenhere"/>
                <q-item-main label="Semestre 2016/02"/>
              </q-item>
              <q-item-separator/>
              <q-item link>
                <q-item-side icon="beenhere"/>
                <q-item-main label="Semestre 2016/01"/>
              </q-item>
              <q-item-separator/>
              <q-item link>
                <q-item-side icon="beenhere"/>
                <q-item-main label="Semestre 2015/02"/>
              </q-item>
            </q-list>
          </q-popover>
        </q-btn>
        <q-btn flat class="q-mr-sm text-primary bg-white" icon="person" :label="usuarioLogado.nome">
          <q-popover class="q-mt-sm" style="width: 350px;">
            <q-list>
              <q-item>
                <q-item-side inverted icon="person" color="primary"/>
                <q-item-main :label="usuarioLogado.nome" :sublabel="usuarioLogado.email"/>
              </q-item>
              <q-item-separator/>
              <q-item v-close-overlay link to="/seguranca/usuarios/meuperfil">
                <q-item-side icon="person"/>
                <q-item-main label="Minha Conta"/>
              </q-item>
              <q-item link tag="label" @click.native="onClickBtnSair">
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
          Sistema de Gerenciamento de Planos de Ensino | Católica do Tocantins | v2018.05.01
        </q-toolbar-title>
      </q-toolbar>
    </q-layout-footer>
    <!--endregion-->
    <!--region Sidebar Direita-->
    <q-layout-drawer v-model="drawerState">
      <q-scroll-area style="width: 100%; height: 100%;" :class="$q.theme === 'mat' ? 'bg-light text-primary' : null">
        <div class="row flex-center" style="height: 100px">
          <img src="http://www.catolica-to.edu.br/portal/portal/media/img/logo_catolica_azul.png" width="60%">
        </div>
        <q-list no-border>
          <template v-for="item in menu" v-if="$can(item.permissionRequired)">
            <q-list-header :key="`header-${item.title}`">
              {{ item.title }}
            </q-list-header>
            <q-item v-for="subItem in item.children" :key="subItem.slug"
                    v-if="$can(subItem.permissionRequired)"
                    :to="`${subItem.route}`" :replace="!item.extract">
              <q-item-side :icon="subItem.icon" color="primary"/>
              <q-item-main :label="subItem.title"/>
              <q-item-side right v-if="subItem.status">
                <q-chip small color="secondary">{{ subItem.status }}</q-chip>
              </q-item-side>
            </q-item>
            <q-item-separator :key="`separator-${item.title}`"/>
          </template>
        </q-list>
      </q-scroll-area>
    </q-layout-drawer>
    <!--endregion-->
    <q-page-container>
      <transition enter-active-class="animated fadeIn" leave-active-class="animated fadeOut" mode="out-in"
                  :duration="300" @leave="resetScroll">
        <router-view/>
      </transition>
    </q-page-container>
  </q-layout>
</template>

<script>
import menu from '../statics/menu';
import {getItemFromLocalStorage} from '../services/core/storageUtils';
import profiles from '../services/core/securityPermissions';

export default {
  data () {
    return {
      drawerState: true,
      menu: menu,
      profile: profiles
    };
  },
  computed: {
    usuarioLogado () {
      return getItemFromLocalStorage('usuario');
    },
    pageTitle () {
      return this.$route.meta.title;
    }
  },
  methods: {
    onClickBtnSair () {
      this.$store.dispatch('contexto/logout').then(() => {
        this.$router.replace('/login');
      });
    },
    resetScroll (el, done) {
      document.documentElement.scrollTop = 0;
      document.body.scrollTop = 0;
      done();
    }
  }
};
</script>
