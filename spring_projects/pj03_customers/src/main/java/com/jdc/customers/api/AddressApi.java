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

import com.jdc.customers.api.input.AddressForm;
import com.jdc.customers.api.input.AddressSearch;
import com.jdc.customers.api.output.AddressInfo;
import com.jdc.customers.domain.PageInfo;
import com.jdc.customers.domain.service.AddressService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("addresses")
public class AddressApi {
	
	private final AddressService service;

	@GetMapping
	PageInfo<AddressInfo> search(AddressSearch search, 
			@RequestParam(required = false, defaultValue = "0") int page, 
			@RequestParam(required = false, defaultValue = "10") int size) {
		return service.search(search, page, size);
	}
	
	@PostMapping
	AddressInfo create(
			@Validated @RequestBody AddressForm form, BindingResult result) {
		return service.create(form);
	}
	
	@GetMapping("{id}")
	AddressInfo findById(@PathVariable String id) {
		return service.findById(id);
	}
	
	@PutMapping("{id}")
	AddressInfo update(@PathVariable String id,
			@Validated @RequestBody AddressForm form, BindingResult result) {
		return service.update(id, form);
	}
	
}
