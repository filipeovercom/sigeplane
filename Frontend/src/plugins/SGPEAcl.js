import {getItemFromLocalStorage} from '../services/core/storageUtils';

export default ({app, router, store, Vue}) => {
  router.beforeEach((to, from, next) => {
    const usuario = getItemFromLocalStorage('usuario');
    if (to.path === '/login') {
      if (usuario) next('/');
      else next();
    } else {
      const routeRequireLogin = to.meta && to.meta.requiresLogin;
      if (routeRequireLogin && !usuario) {
        next('/login');
      } else if ((routeRequireLogin && to.meta.permissionRequired) || to.meta.permissionRequired) {
        if (checkUserPermissions(to.meta.permissionRequired)) {
          next();
        } else next('/accessError');
      } else {
        next();
      }
    }
  });

  function checkUserPermissions (routePermissions) {
    if (!routePermissions) return true;
    let userPermissions = getItemFromLocalStorage('usuario')['perfis'];
    const intersectedPermissions = routePermissions
      .filter(routePermission => userPermissions.indexOf(routePermission) !== -1);
    return intersectedPermissions.length > 0;
  }

  Vue.prototype.$can = checkUserPermissions;
};
