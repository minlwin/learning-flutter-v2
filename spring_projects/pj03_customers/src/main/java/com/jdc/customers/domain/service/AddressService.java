package com.jdc.customers.domain.service;

import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdc.customers.api.input.AddressForm;
import com.jdc.customers.api.input.AddressSearch;
import com.jdc.customers.api.output.AddressInfo;
import com.jdc.customers.domain.PageInfo;
import com.jdc.customers.domain.repo.AddressRepo;
import com.jdc.customers.domain.repo.CustomerRepo;
import com.jdc.customers.domain.repo.TownshipRepo;
import com.jdc.customers.exceptions.BusinessException;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class AddressService {
	
	private final TownshipRepo townshipRepo;
	private final AddressRepo addressRepo;
	private final CustomerRepo customerRepo;

	@Transactional
	public AddressInfo create(AddressForm form) {
		
		var township = townshipRepo.findById(form.township())
				.orElseThrow(() -> new BusinessException("Invalid township id."));
		
		var customer = customerRepo.findById(UUID.fromString(form.customerId()))
				.orElseThrow(() -> new BusinessException("Invalid customer id."));
		
		var entity = addressRepo.save(form.entity(township, customer));
		
		return AddressInfo.from(entity);
	}

	@Transactional
	public AddressInfo update(String id, AddressForm form) {
		
		var entity = addressRepo.findById(UUID.fromString(id))
				.orElseThrow(() -> new BusinessException("Invalid address id."));
		var township = townshipRepo.findById(form.township())
				.orElseThrow(() -> new BusinessException("Invalid township id."));

		entity.setTownship(township);
		entity.setQuarter(form.quarter());
		entity.setStreet(form.street());
		entity.setBuilding(form.building());
		
		return AddressInfo.from(entity);
	}

	public AddressInfo findById(String id) {
		return addressRepo.findById(UUID.fromString(id))
				.map(AddressInfo::from)
				.orElseThrow(() -> new BusinessException("Invalid address id."));
	}

	public PageInfo<AddressInfo> search(AddressSearch search, int page, int size) {
		// TODO Auto-generated method stub
		return null;
	}

}
