import * as localStorage from './storageUtils';

export const getLoggedTenantID = () => {
  const user = localStorage.getItemFromLocalStorage('usuario');
  return user['tenantsVinculados'][0]['id'];
};

export const getAccessToken = () => localStorage.getItemFromLocalStorage('access_token');
export const updateAccessToken = (accessToken) => localStorage.setItemToLocalStorage('access_token', accessToken);

export const getRefreshToken = () => localStorage.getItemFromLocalStorage('refresh_token');
export const updateRefreshToken = (refreshToken) => localStorage.setItemToLocalStorage('refresh_token', refreshToken);

export const getApiVersion = () => localStorage.getItemFromLocalStorage('apiVersion');
export const updateApiVersion = (apiVersion) => localStorage.setItemToLocalStorage('apiVersion', apiVersion);
