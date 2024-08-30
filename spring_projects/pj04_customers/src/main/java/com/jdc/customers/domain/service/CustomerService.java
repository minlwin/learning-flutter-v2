package com.jdc.customers.domain.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdc.customers.api.input.CustomerForm;
import com.jdc.customers.api.input.CustomerSearch;
import com.jdc.customers.api.output.CustomerDetails;
import com.jdc.customers.api.output.CustomerInfo;
import com.jdc.customers.domain.PageInfo;
import com.jdc.customers.domain.repo.CustomerRepo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CustomerService {
	
	private final CustomerRepo repo;

	public PageInfo<CustomerInfo> search(CustomerSearch search, int page, int size) {
		// TODO Auto-generated method stub
		return null;
	}

	public CustomerDetails create(CustomerForm form) {
		// TODO Auto-generated method stub
		return null;
	}

	public CustomerDetails findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public CustomerDetails update(String id, CustomerForm form) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
