import axios          from 'axios';
import axiosWrapper   from './axiosWrapper';
import {resources}    from './constants';
import {LocalStorage} from 'quasar';

export const autenticaUsuario = (pUsuario) => {
  return new Promise((resolve, reject) => {
    const authenticationData = new FormData();
    authenticationData.append('grant_type', 'password');
    authenticationData.append('username', pUsuario.matricula);
    authenticationData.append('password', encodeURIComponent(pUsuario.password));
    axios.request({
      method: 'post',
      url: `${resources.seguranca.urlLogin}`,
      headers: {'Authorization': resources.seguranca.credenciaisBasicas},
      data: authenticationData
    }).then(({data}) => {
      const tokens = data;
      axios.request({
        url: `${resources.seguranca.contexto.root}`,
        headers: {'Authorization': `Bearer ${tokens['access_token']}`}
      }).then(async ({data}) => {
        data = data.data;
        await LocalStorage.set('contexto', {
          accessToken: tokens['access_token'],
          refreshToken: tokens['refresh_token'],
          usuarioLogado: data['usuario']
        });
        resolve();
      }).catch(error => reject(error));
    }).catch(error => reject(error));
  });
};

export const atualizaTokenDeAcesso = () => {
  return new Promise((resolve, reject) => {
    const token = LocalStorage.get.item('contexto').refreshToken;
    if (token) {
      const dadosAutenticacao = new FormData();
      dadosAutenticacao.append('grant_type', 'refresh_token');
      dadosAutenticacao.append('refresh_token', token);
      axios.request({
        method: 'post',
        url: `${resources.seguranca.urlLogin}`,
        headers: {'Authorization': resources.seguranca.credenciaisBasicas},
        data: dadosAutenticacao
      }).then(({data}) => {
        const tokens = data;
        axios.request({
          url: `${resources.seguranca.contexto.root}`,
          headers: {'Authorization': `Bearer ${tokens['access_token']}`}
        }).then(async ({data}) => {
          data = data.data;
          await LocalStorage.set('contexto', {
            accessToken: tokens['access_token'],
            refreshToken: tokens['refresh_token'],
            usuarioLogado: data['usuario']
          });
          resolve();
        }).catch(erro => reject(erro));
      }).catch(erro => reject(erro));
    } else {
      reject(new Error('O refresh token não foi encontrado.'));
    }
  });
};

export const atualizaPeriodoNoContexto = (periodoUUID) => {
  console.log(periodoUUID);
  return axiosWrapper.request({
    method: 'put',
    url: `${resources.seguranca.contexto.atualizaPeriodo(periodoUUID)}`,
    params: {uuid: periodoUUID}
  });
};

// export const get
