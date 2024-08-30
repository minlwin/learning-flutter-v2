package com.jdc.customers.api.input;

import java.util.ArrayList;

import org.springframework.util.StringUtils;

import com.jdc.customers.domain.entity.District;
import com.jdc.customers.domain.entity.District_;
import com.jdc.customers.domain.entity.Division_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

public record DistrictSearch(
		Integer divisionId,
		String name) {

	public Predicate[] where(CriteriaBuilder cb, Root<District> root) {
		var list = new ArrayList<Predicate>();
		
		if(null != divisionId) {
			list.add(cb.equal(root.get(District_.division).get(Division_.id), divisionId));
		}
		
		if(StringUtils.hasLength(name)) {
			list.add(cb.like(cb.lower(root.get(District_.name)), name.toLowerCase().concat("%")));
		}
		
		return list.toArray(size -> new Predicate[size]);
	}
}
