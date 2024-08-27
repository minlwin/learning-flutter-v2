package com.jdc.customers.api.input;

import java.util.ArrayList;

import org.springframework.util.StringUtils;

import com.jdc.customers.domain.entity.Address;
import com.jdc.customers.domain.entity.Address_;
import com.jdc.customers.domain.entity.District_;
import com.jdc.customers.domain.entity.Division_;
import com.jdc.customers.domain.entity.Township_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

public record AddressSearch(		
		Integer divisionId,
		Integer districtId,
		Integer townshipId,
		String keyword) {

	public Predicate[] where(CriteriaBuilder cb, Root<Address> root) {
		
		var list = new ArrayList<Predicate>();
		
		if(null != townshipId) {
			list.add(cb.equal(root.get(Address_.township).get(Township_.id), townshipId));
		} else if (null != districtId) {
			list.add(cb.equal(root.get(Address_.township).get(Township_.district).get(District_.id), districtId));
		} else if (null != divisionId) {
			list.add(cb.equal(root.get(Address_.township).get(Township_.district).get(District_.division).get(Division_.id), districtId));
		}
		
		if(StringUtils.hasLength(keyword)) {
			list.add(cb.or(
				cb.like(cb.lower(root.get(Address_.building)), keyword.toLowerCase().concat("%")),
				cb.like(cb.lower(root.get(Address_.quarter)), keyword.toLowerCase().concat("%")),
				cb.like(cb.lower(root.get(Address_.street)), keyword.toLowerCase().concat("%"))
			));
		}
		
		return list.toArray(size -> new Predicate[size]);
	}
}
