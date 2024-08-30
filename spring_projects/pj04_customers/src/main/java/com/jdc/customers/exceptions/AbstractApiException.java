package com.jdc.customers.exceptions;

import java.util.List;

public abstract class AbstractApiException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	private List<String> messages;

	public AbstractApiException(List<String> messages) {
		super();
		this.messages = messages;
	}

	public AbstractApiException(List<String> messages, Throwable cause) {
		super(cause);
		this.messages = messages;
	}

	public List<String> getMessages() {
		return messages;
	}
}
