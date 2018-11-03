import axios          from 'axios';
import {httpService}  from './httpService';
import {LocalStorage} from 'quasar';

export const segurancaService = (() => {
  const credenciaisBasicas = `Basic ${btoa('frontendsgpe:frontendsgpepassword')}`;
  const apiUrl             = 'api/seguranca';
  const loginUrl           = `${httpService.baseUrl()}oauth/token`;
  return {
    autenticaUsuario: (pUsuario) => {
      return new Promise((resolve, reject) => {
        const authenticationData = new FormData();
        authenticationData.append('grant_type', 'password');
        authenticationData.append('username', pUsuario.matricula);
        authenticationData.append('password', encodeURIComponent(pUsuario.password));
        axios.request({
          method: 'post',
          url: loginUrl,
          headers: {'Authorization': credenciaisBasicas},
          data: authenticationData
        }).then(({data}) => {
          const tokens = data;
          axios.request({
            url: `${httpService.baseUrl()}${apiUrl}/contexto`,
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
    },
    atualizaTokenDeAcesso: () => {
      return new Promise((resolve, reject) => {
        const token = LocalStorage.get.item('contexto').refreshToken;
        if (token) {
          const dadosAutenticacao = new FormData();
          dadosAutenticacao.append('grant_type', 'refresh_token');
          dadosAutenticacao.append('refresh_token', token);
          axios.request({
            method: 'post',
            url: loginUrl,
            headers: {'Authorization': credenciaisBasicas},
            data: dadosAutenticacao
          }).then(({data}) => {
            const tokens = data;
            axios.request({
              url: `${httpService.baseUrl()}${apiUrl}/contexto`,
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
    },
    atualizaPeriodoNoContexto: (periodoUUID) => {
      console.log(periodoUUID);
      return httpService.put({
        method: 'put',
        url: `${apiUrl}/contexto/periodo/${periodoUUID}`,
        params: {uuid: periodoUUID}
      });
    }
  };
})();
