import axios              from 'axios';
import {segurancaService} from './securityService';
import {LocalStorage}     from 'quasar';

export const httpService = (() => {
  const baseUrl = () => {
    let appContextPath = process.env.SGPE_CONTEXTO;

    if (appContextPath && appContextPath !== '/') appContextPath = `${appContextPath}/`;
    else appContextPath = '/';

    return `${(process.env.NODE_ENV !== 'production') ? 'http://localhost:8080' : ''}${appContextPath}`;
  };

  const axiosClient = axios.create({baseURL: baseUrl()});

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
        segurancaService.atualizaTokenDeAcesso().then(() => {
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
  });

  return {
    baseUrl,
    get (url, params = {}, options = {}) {
      return axiosClient.request({
        url: url,
        params: params,
        ...options
      });
    },
    post (url, data, params = {}, options = {}) {
      return axiosClient.request({
        url: url,
        method: 'post',
        data: data,
        params: params,
        ...options
      });
    },
    patch (url, data, params = {}, options = {}) {
      return axiosClient.request({
        url: url,
        method: 'patch',
        data: data,
        params: params,
        ...options
      });
    },
    put (url, data, params = {}, options = {}) {
      return axiosClient.request({
        url: url,
        method: 'put',
        data: data,
        params: params,
        ...options
      });
    },
    delete (url, params = {}, options = {}) {
      return axiosClient.request({
        url: url,
        method: 'delete',
        params: params,
        ...options
      });
    }
  };
})();
