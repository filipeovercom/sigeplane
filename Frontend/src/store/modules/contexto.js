import {segurancaService} from '../../utils/securityService';
import {LocalStorage}     from 'quasar';

export default {
  namespaced: true,
  state: {
    firstLogin: false,
    userPermissions: undefined
  },
  getters: {
    isFirstLogin (state) {
      return state.firstLogin;
    },
    getUserPermissions (state) {
      return state.userPermissions;
    },
    usuarioLogado () {
      const contexto = LocalStorage.get.item('contexto');
      return contexto ? contexto['usuarioLogado'] : undefined;
    }
  },
  mutations: {
    SET_FIRST_LOGIN (state, firstLogin) {
      state.firstLogin = firstLogin;
    },
    SET_USER_PERMISSIONS (state, permissions) {
      state.userPermissions = permissions;
    }
  },
  actions: {
    setUserPermissions ({commit}, permissions) {
      commit('SET_USER_PERMISSIONS', permissions);
    },
    login ({commit}, pUsuario) {
      commit('SET_FIRST_LOGIN', true);
      return segurancaService.autenticaUsuario(pUsuario);
    },
    atualizarToken: () => {
      return segurancaService.atualizaTokenDeAcesso();
    },
    logout ({commit}) {
      return new Promise(async resolve => {
        await LocalStorage.remove('contexto');
        await commit('SET_USER_PERMISSIONS', undefined);
        resolve();
      });
    }
  }
};
