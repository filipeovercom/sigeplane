import axios                   from 'axios';
import {atualizaTokenDeAcesso} from './securityService';
import {resources}             from './constants';
import {LocalStorage}          from 'quasar';

const axiosClient = axios.create({baseURL: resources.apiUrl});

axiosClient.interceptors.request.use(request => {
  const contextoAplicacao = LocalStorage.get.item('contexto');

  if (contextoAplicacao) {
    if (!request.headers.common['Authorization']) {
      request.headers.common['Authorization'] = `Bearer ${LocalStorage.get.item('contexto').accessToken}`;
    }
  }

  return request;
});

axiosClient.interceptors.response.use(response => {
    if (response.data) return response.data;
    return response;
  }, erro => {
    const originalRequest = erro.config;
    console.log(erro);
    if (!erro.response) {
      return Promise.reject(new Error('Não foi possível conectar-se ao servidor!'));
    } else if (erro.response.status === 401 && originalRequest && !originalRequest._retry) {
      originalRequest._retry = true;
      return new Promise((resolve, reject) => {
        atualizaTokenDeAcesso().then(() => {
          originalRequest.headers['Authorization'] = `Bearer ${LocalStorage.get.item('contexto').accessToken}`;
          return axiosClient(originalRequest);
        }).catch(erro => {
          LocalStorage.remove('contexto');
          window.location.href = '/';
          return reject(erro);
        });
      });
    } else {
      return Promise.reject(erro.response || erro.message);
    }
  }
);

export default axiosClient;
