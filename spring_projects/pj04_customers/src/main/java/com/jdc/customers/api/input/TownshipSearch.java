package com.jdc.customers.api.input;

import java.util.ArrayList;

import org.springframework.util.StringUtils;

import com.jdc.customers.domain.entity.District_;
import com.jdc.customers.domain.entity.Division_;
import com.jdc.customers.domain.entity.Township;
import com.jdc.customers.domain.entity.Township_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

public record TownshipSearch(Integer divisionId, Integer districtId, String name) {

	public Predicate[] where(CriteriaBuilder cb, Root<Township> root) {
		var list = new ArrayList<Predicate>();
		
		if(null != divisionId) {
			list.add(cb.equal(root.get(Township_.district).get(District_.division).get(Division_.id), divisionId));
		} else if (null != districtId) {
			list.add(cb.equal(root.get(Township_.district).get(District_.id), districtId));
		}
		
		if(StringUtils.hasLength(name)) {
			list.add(cb.like(cb.lower(root.get(Township_.name)), name.toLowerCase().concat("%")));
		}
		
		return list.toArray(size -> new Predicate[size]);
	}
}
