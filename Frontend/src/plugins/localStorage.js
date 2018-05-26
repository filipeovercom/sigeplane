const storage = window.localStorage;
const localStorage = {
  setItem (key, value) {
    value = JSON.stringify(value);
    storage.setItem(key, value);
  },
  getItem (key, defaultValue) {
    let value = storage.getItem(key);
    if (value === null || value === 'undefined' || value === '') {
      value = defaultValue;
    } else {
      value = JSON.parse(value);
    }
    return value;
  },
  removeItem (key) {
    storage.removeItem(key);
  }
};

export default ({app, router, Vue}) => {
  Vue.prototype.$localStorage = localStorage;
};
