package com.jdc.customers.exceptions;

import java.util.List;

public class ValidationException extends AbstractApiException {

	private static final long serialVersionUID = 1L;

	public ValidationException(List<String> messages) {
		super(messages);
	}

}
