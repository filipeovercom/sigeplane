import {statusPlanoEnsino} from '../utils/constants';

export default ({app, router, Vue}) => {
  Vue.filter('statusPlanoEnsino', status => statusPlanoEnsino.getTextByValue(status));
};
