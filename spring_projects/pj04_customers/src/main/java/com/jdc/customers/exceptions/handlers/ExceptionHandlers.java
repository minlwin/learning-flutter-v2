package com.jdc.customers.exceptions.handlers;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.jdc.customers.exceptions.AbstractApiException;
import com.jdc.customers.exceptions.BusinessException;
import com.jdc.customers.exceptions.ValidationException;

@RestControllerAdvice
public class ExceptionHandlers {

	@ExceptionHandler({
		ValidationException.class,
		BusinessException.class
	})
	@ResponseStatus(HttpStatus.BAD_REQUEST)
	List<String> handle(AbstractApiException e) {
		return e.getMessages();
	}
	
	@ExceptionHandler
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	void handle(Throwable e) {
	}
}
