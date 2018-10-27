import Vuetify from 'vuetify';

// leave the export, even if you don't use it
export default ({app, router, Vue}) => {
  Vue.use(Vuetify, {
    theme: {
      primary: '#273c75',
      secondary: '#f7f1e3',
      accent: '#05c46b',
      error: '#ff3f34'
    }
  });
};
