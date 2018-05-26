import Vue from 'vue';
import Vuex from 'vuex';

import contexto from './modules/contexto';
import turmas from './modules/turmas';
import cursos from './modules/cursos';
import disciplinas from './modules/disciplinas';
import professores from './modules/professores';
import competencias from './modules/competencias';
import habilidades from './modules/habilidades';

Vue.use(Vuex);

const store = new Vuex.Store({
  modules: {
    contexto,
    turmas,
    cursos,
    disciplinas,
    professores,
    competencias,
    habilidades
  }
});

export default store;
