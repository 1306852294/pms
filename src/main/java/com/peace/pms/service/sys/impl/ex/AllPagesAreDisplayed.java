package com.peace.pms.service.sys.impl.ex;

public class AllPagesAreDisplayed extends RuntimeException {

	private static final long serialVersionUID = -4935176530358134224L;

	public AllPagesAreDisplayed() {
	}

	public AllPagesAreDisplayed(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public AllPagesAreDisplayed(String message, Throwable cause) {
		super(message, cause);
	}

	public AllPagesAreDisplayed(String message) {
		super(message);
	}

	public AllPagesAreDisplayed(Throwable cause) {
		super(cause);
	}
	
}
