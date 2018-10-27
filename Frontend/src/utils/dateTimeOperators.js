import Vue from 'vue';

// const user = Vue.$localStorage.getItem('usuario')
// const userLocale = user ? user['preferenciaUsuario'].locale : 'pt-BR'

const dateTimeShort = (dateTime) => {
  if (dateTime) return dateTime.toLocaleString(Vue.$dateTime.DATETIME_SHORT);
  else return '';
};

const dateShort = (date) => {
  if (date) return Vue.$dateTime.fromISO(date).toLocaleString(Vue.$dateTime.DATE_SHORT);
  else return '';
};

const dateIsValid = (date) => {
  if (!date) return false;
  const format = date.lastIndexOf('/') >= 0 ? 'dd/MM/yyyy' : 'ddMMyyyy';
  // TODO -> Trocar padrão estático por padrão escolhido pelo usuário
  return Vue.$dateTime.fromFormat(date, format).isValid;
};

const formatDateToISO = (date) => {
  if (!date) {
    return null;
  }
  // TODO -> Trocar padrão estático por padrão escolhido pelo usuário
  const userDate = Vue.$dateTime.fromFormat(date, 'dd/MM/yyyy');
  if (userDate.isValid) {
    return userDate.toFormat('yyyy-MM-dd');
  } else return null;
};

const formatISODateToUserPattern = (date) => {
  if (!date) {
    return null;
  }
  return Vue.$dateTime.fromISO(date)
    .toFormat('dd/MM/yyyy');
};

const parseUTCToTimezoneOffset = (dateInUTC, timezoneOffset) => {
  if (!dateInUTC || !timezoneOffset) {
    return null;
  }
  return Vue.$dateTime.fromISO(dateInUTC, {zone: 'UTC'}).setZone(timezoneOffset);
};

export {
  parseUTCToTimezoneOffset,
  formatISODateToUserPattern,
  formatDateToISO,
  dateIsValid,
  dateShort,
  dateTimeShort
};
