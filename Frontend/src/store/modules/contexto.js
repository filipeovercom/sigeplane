import {removeItemFromLocalStorage, setItemToLocalStorage} from '../../services/core/storageUtils';
import profiles from '../../services/core/securityPermissions';

export default {
  namespaced: true,
  state: {
    firstLogin: false
  },
  getters: {
    isFirstLogin (state) {
      return state.firstLogin;
    }
  },
  mutations: {
    SET_FIRST_LOGIN (state, firstLogin) {
      state.firstLogin = firstLogin;
    }
  },
  actions: {
    login ({dispatch}, pUsuario) {
      return new Promise(resolve => {
        let usuario;
        if (pUsuario.matricula.toLowerCase().includes('FC2012'.toLowerCase())) {
          usuario = {
            matricula: pUsuario.matricula,
            nome: 'Prof Exemplo 1',
            titulacao: 'Me.',
            email: 'professorexemplo1@catolica-to.edu.br',
            perfis: [profiles.ADMINISTRADOR]
          };
        } else if (pUsuario.matricula.toLowerCase().includes('FC2013'.toLowerCase())) {
          usuario = {
            matricula: pUsuario.matricula,
            nome: 'Prof Exemplo 2',
            titulacao: 'Esp.',
            email: 'professorexemplo2@catolica-to.edu.br',
            perfis: [profiles.COORDENADOR, profiles.PROFESSOR]
          };
        } else {
          usuario = {
            matricula: pUsuario.matricula,
            nome: 'Prof Exemplo 3',
            titulacao: 'Esp.',
            email: 'professorexemplo3@catolica-to.edu.br',
            perfis: [profiles.PROFESSOR]
          };
        }
        setItemToLocalStorage('usuario', usuario);
        resolve();
      });
    },
    logout () {
      return new Promise(async resolve => {
        await removeItemFromLocalStorage('usuario');
        resolve();
      });
    },
    updateFirstLogin ({commit}, isFirstLogin) {
      commit('SET_FIRST_LOGIN', isFirstLogin);
    }
  }
};
