import {Notify} from 'quasar';

export const notificationService = (() => {
  const AGUARDE_TENTE_NOVAMENTE = 'Aguarde e tente novamente';
  const DEFAULT_OPTIONS         = {
    timeout: 4000,
    position: 'top'
  };

  return {
    AGUARDE_TENTE_NOVAMENTE,
    info (message, detail = '', options = {}) {
      return Notify.create({
        message,
        detail,
        type: 'info',
        ...DEFAULT_OPTIONS,
        ...options
      });
    },
    warning (message, detail = '', options = {}) {
      return Notify.create({
        message,
        detail,
        type: 'warning',
        ...DEFAULT_OPTIONS,
        ...options
      });
    },
    error (message, detail = AGUARDE_TENTE_NOVAMENTE, options = {}) {
      return Notify.create({
        message,
        detail,
        type: 'negative',
        ...DEFAULT_OPTIONS,
        ...options
      });
    },
    success (message, detail = '', options = {}) {
      return Notify.create({
        message,
        detail,
        type: 'positive',
        ...DEFAULT_OPTIONS,
        ...options
      });
    },
    errorOnSave () {
      return Notify.create({
        message: 'Não foi possível salvar as alterações!',
        detail: AGUARDE_TENTE_NOVAMENTE,
        type: 'negative',
        ...DEFAULT_OPTIONS
      });
    }
  };
})();
