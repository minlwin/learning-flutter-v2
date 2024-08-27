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
import com.jdc.customers.exceptions.BusinessException;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CustomerService {
	
	private final CustomerRepo repo;

	@Transactional
	public CustomerDetails create(CustomerForm form) {
		var entity = repo.save(form.entity());
		return CustomerDetails.from(entity);
	}

	@Transactional
	public CustomerDetails update(String id, CustomerForm form) {
		return repo.findById(UUID.fromString(id))
				.stream().peek(form::update).findAny()
				.map(CustomerDetails::from)
				.orElseThrow(() -> new BusinessException("Invalid customer id."));		
	}

	public CustomerDetails findById(String id) {
		return repo.findById(UUID.fromString(id))
				.map(CustomerDetails::from)
				.orElseThrow(() -> new BusinessException("Invalid customer id."));
	}

	public PageInfo<CustomerInfo> search(CustomerSearch search, int page, int size) {
		return repo.search(queryFunc(search), countFunc(search), page, size);
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
