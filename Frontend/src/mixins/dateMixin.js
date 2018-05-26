import * as DateTimeOperators from '../services/core/dateTimeOperators';

export default {
  filters: {
    dateTimeShort: (dateTime) => {
      return DateTimeOperators.dateTimeShort(dateTime);
    },
    dateShort: (date) => {
      return DateTimeOperators.dateShort(date);
    }
  },
  methods: {
    dateIsValid (date) {
      return DateTimeOperators.dateIsValid(date);
    },
    formatDateToISO (date) {
      return DateTimeOperators.formatDateToISO(date);
    },
    formatISODateToUserPattern (date) {
      return DateTimeOperators.formatISODateToUserPattern(date);
    },
    parseUTCToTimezoneOffset (dateInUTC, timezoneOffset) {
      return DateTimeOperators.parseUTCToTimezoneOffset(dateInUTC, timezoneOffset);
    }
  }
};
