import Vue  from 'vue';
import Vuex from 'vuex';

import contexto     from './modules/contexto';
import competencias from './modules/competencias';
import habilidades  from './modules/habilidades';
import conteudos    from './modules/conteudos';
import metodologias from './modules/metodologias';
import recursos     from './modules/recursos';

Vue.use(Vuex);

const store = new Vuex.Store({
  modules: {
    contexto,
    competencias,
    habilidades,
    conteudos,
    metodologias,
    recursos
  }
});

export default store;
