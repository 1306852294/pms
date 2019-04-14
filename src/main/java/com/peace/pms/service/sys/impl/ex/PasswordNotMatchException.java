package com.peace.pms.service.sys.impl.ex;

public class PasswordNotMatchException extends RuntimeException {

	private static final long serialVersionUID = 3263965660645728579L;

	public PasswordNotMatchException() {
	}

	public PasswordNotMatchException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public PasswordNotMatchException(String message, Throwable cause) {
		super(message, cause);
	}

	public PasswordNotMatchException(String message) {
		super(message);
	}

	public PasswordNotMatchException(Throwable cause) {
		super(cause);
	}

}
