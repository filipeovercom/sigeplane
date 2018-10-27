package br.com.overcom.sgpe.abstracao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoggerWrapper {

	private        Logger        logger;
	private static LoggerWrapper loggerWrapper = new LoggerWrapper();

	private LoggerWrapper() {
	}

	public static LoggerWrapper getLogger(Class classe) {
		loggerWrapper.logger = LoggerFactory.getLogger(classe);
		return loggerWrapper;
	}

	public void info(String message) {
		loggerWrapper.logger.info(message);
	}

	public void debug(String message) {
		loggerWrapper.logger.debug(message);
	}

	public void warn(String message) {
		loggerWrapper.logger.warn(message);
	}

	public void error(String message) {
		loggerWrapper.logger.error(message);
	}
}
