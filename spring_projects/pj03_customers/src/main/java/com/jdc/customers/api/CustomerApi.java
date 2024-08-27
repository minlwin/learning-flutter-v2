package com.jdc.customers.api;

import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jdc.customers.api.input.CustomerForm;
import com.jdc.customers.api.input.CustomerSearch;
import com.jdc.customers.api.output.CustomerInfo;
import com.jdc.customers.domain.PageInfo;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("customers")
public class CustomerApi {

	@GetMapping
	PageInfo<CustomerInfo> search(CustomerSearch search, 
			@RequestParam(required = false, defaultValue = "0") int page, 
			@RequestParam(required = false, defaultValue = "10") int size) {
		return null;
	}
	
	@PostMapping
	CustomerInfo create(@Validated @RequestBody CustomerForm form, BindingResult result) {
		return null;
	}
	
	@GetMapping("{id}")
	CustomerInfo findById(@PathVariable String id) {
		return null;
	}
	
	@PutMapping("{id}")
	CustomerInfo update(@PathVariable String id,
			@Validated @RequestBody CustomerForm form, BindingResult result) {
		return null;
	}
	
}
