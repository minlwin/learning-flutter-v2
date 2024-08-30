package com.jdc.customers.exceptions;

import java.util.List;

public class BusinessException extends AbstractApiException {

	private static final long serialVersionUID = 1L;
	
	public BusinessException(String message) {
		super(List.of(message));
	}

	public BusinessException(List<String> messages) {
		super(messages);
	}

	public BusinessException(List<String> messages, Throwable cause) {
		super(messages, cause);
	}

}
