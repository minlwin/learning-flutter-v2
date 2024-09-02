package com.jdc.customers.domain.service;

import java.util.UUID;
import java.util.function.Function;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdc.customers.api.input.CustomerForm;
import com.jdc.customers.api.input.CustomerSearch;
import com.jdc.customers.api.output.CustomerDetails;
import com.jdc.customers.api.output.CustomerInfo;
import com.jdc.customers.domain.PageInfo;
import com.jdc.customers.domain.entity.Customer;
import com.jdc.customers.domain.entity.Customer_;
import com.jdc.customers.domain.repo.CustomerRepo;
import com.jdc.customers.domain.repo.TownshipRepo;
import com.jdc.customers.exceptions.BusinessException;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CustomerService {
	
	private final CustomerRepo customerRepo;
	private final TownshipRepo townshipRepo;
	private final ImageStorageService storageService;

	@Transactional
	public CustomerDetails create(CustomerForm form) {
		
		var township = townshipRepo.findById(form.township())
				.orElseThrow(() -> new BusinessException("Invalid township id."));
		
		var entity = form.entity();
		entity.getAddress().setTownship(township);
		
		entity = customerRepo.save(entity);
		
		if(null != form.profile()) {
			var profile = storageService.save(entity.getId(), form.profile());
			entity.setProfile(profile);
		}
		
		return CustomerDetails.from(entity);
	}

	@Transactional
	public CustomerDetails update(String id, CustomerForm form) {
		
		var entity = customerRepo.findById(UUID.fromString(id))
				.orElseThrow(() -> new BusinessException("Invalid customer id."));
		
		if(entity.getAddress().getTownship().getId() != form.township()) {
			var township = townshipRepo.findById(form.township())
					.orElseThrow(() -> new BusinessException("Invalid township id."));
			entity.getAddress().setTownship(township);
		}
		
		if(null != form.profile()) {
			var profile = storageService.save(entity.getId(), form.profile());
			entity.setProfile(profile);
		}
		
		form.update(entity);
		
		return CustomerDetails.from(entity);
	}

	public CustomerDetails findById(String id) {
		return customerRepo.findById(UUID.fromString(id))
				.map(CustomerDetails::from)
				.orElseThrow(() -> new BusinessException("Invalid customer id."));
	}

	public PageInfo<CustomerInfo> search(CustomerSearch search, int page, int size) {
		return customerRepo.search(queryFunc(search), countFunc(search), page, size);
	}
	
	private Function<CriteriaBuilder, CriteriaQuery<CustomerInfo>> queryFunc(CustomerSearch search) {
		return cb -> {
			var cq = cb.createQuery(CustomerInfo.class);
			var root = cq.from(Customer.class);
			CustomerInfo.select(cq, root);
			cq.where(search.where(cb, root));
			return cq;
		};
	}
	
	private Function<CriteriaBuilder, CriteriaQuery<Long>> countFunc(CustomerSearch search) {
		return cb -> {
			var cq = cb.createQuery(Long.class);
			var root = cq.from(Customer.class);
			cq.select(cb.count(root.get(Customer_.id)));
			cq.where(search.where(cb, root));
			return cq;
		};
	}
}
