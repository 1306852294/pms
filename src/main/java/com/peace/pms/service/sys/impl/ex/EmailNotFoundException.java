package com.peace.pms.service.sys.impl.ex;

public class EmailNotFoundException extends RuntimeException {

	private static final long serialVersionUID = -2366193618683814325L;

	public EmailNotFoundException() {
	}

	public EmailNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public EmailNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public EmailNotFoundException(String message) {
		super(message);
	}

	public EmailNotFoundException(Throwable cause) {
		super(cause);
	}

}
