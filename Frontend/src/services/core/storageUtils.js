const setItemToLocalStorage = (key, value) => {
  const jsonValue = JSON.stringify(value);
  window.localStorage.setItem(key, jsonValue);
};

const removeItemFromLocalStorage = (key) => {
  window.localStorage.removeItem(key);
};

const getItemFromLocalStorage = (key) => {
  let value = window.localStorage.getItem(key);
  if (value !== null && value !== 'undefined' && value !== '') {
    value = JSON.parse(value);
  }
  return value;
};

export {setItemToLocalStorage, removeItemFromLocalStorage, getItemFromLocalStorage};
