import {httpService}          from '../utils/httpService';
import {LocalStorage, Notify} from 'quasar';

export default ({app, router, store, Vue}) => {
  router.beforeEach(async (to, from, next) => {
    const hasContexto = LocalStorage.has('contexto');

    if (to.path === '/login') {
      if (hasContexto) next('/');
      else next();
    } else {
      const userPermissions   = store.getters['contexto/getUserPermissions'];
      const routeRequireLogin = to.meta && to.meta.requiresLogin;

      if (hasContexto && !userPermissions) {
        await getUserPermissions().catch((error) => {
          Notify.create({
            message: error.message,
            position: 'top'
          });
          LocalStorage.remove('contexto');
          next('/login');
        });
      }

      if ((routeRequireLogin && !hasContexto) || !hasContexto) {
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

  const getUserPermissions = () => {
    return httpService.get('/api/seguranca/perfis')
    .then(({data}) => {
      return store.dispatch('contexto/setUserPermissions', data);
    });
  };

  const checkUserPermissions = (requiredPermissions) => {
    let result          = false;
    let userPermissions = store.getters['contexto/getUserPermissions'];

    if (userPermissions) {
      if (userPermissions.indexOf('SYS_ADMIN') !== -1) {
        result = true;
      } else {
        const intersectedPermissions = requiredPermissions.filter(p => userPermissions.indexOf(p) !== -1);
        result                       = intersectedPermissions.length > 0;
      }
    }

    return result;
  };

  Vue.prototype.$can = (permissions) => {
    if (typeof permissions === 'string') {
      permissions = [...permissions.split(',')];
    }
    return checkUserPermissions(permissions);
  };
};
