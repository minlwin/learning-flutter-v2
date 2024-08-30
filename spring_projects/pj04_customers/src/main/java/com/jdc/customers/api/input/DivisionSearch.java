package com.jdc.customers.api.input;

import java.util.ArrayList;

import org.springframework.util.StringUtils;

import com.jdc.customers.domain.entity.Division;
import com.jdc.customers.domain.entity.Division_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

public record DivisionSearch(String name) {

	public Predicate[] where(CriteriaBuilder cb, Root<Division> root) {
		var list = new ArrayList<Predicate>();
		
		if(StringUtils.hasLength(name)) {
			list.add(cb.like(cb.lower(root.get(Division_.name)), name.toLowerCase().concat("%")));
		}
		
		return list.toArray(size -> new Predicate[size]);
	}
}
