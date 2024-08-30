package com.jdc.customers.api;

import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jdc.customers.api.input.CustomerForm;
import com.jdc.customers.api.input.CustomerSearch;
import com.jdc.customers.api.output.CustomerDetails;
import com.jdc.customers.api.output.CustomerInfo;
import com.jdc.customers.domain.PageInfo;
import com.jdc.customers.domain.service.CustomerService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("customers")
public class CustomerApi {
	
	private final CustomerService service;

	@GetMapping
	PageInfo<CustomerInfo> search(CustomerSearch search, 
			@RequestParam(required = false, defaultValue = "0") int page, 
			@RequestParam(required = false, defaultValue = "10") int size) {
		return service.search(search, page, size);
	}
	
	@PostMapping
	CustomerDetails create(@Validated CustomerForm form, BindingResult result) {
		return service.create(form);
	}
	
	@GetMapping("{id}")
	CustomerDetails findById(@PathVariable String id) {
		return service.findById(id);
	}
	
	@PutMapping("{id}")
	CustomerDetails update(@PathVariable String id,
			@Validated CustomerForm form, BindingResult result) {
		return service.update(id, form);
	}
	
}
