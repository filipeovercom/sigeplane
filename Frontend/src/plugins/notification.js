import {notificationService} from '../utils/notificationService';

export default ({app, router, store, Vue}) => {
  Vue.prototype.$notify = notificationService;
};
