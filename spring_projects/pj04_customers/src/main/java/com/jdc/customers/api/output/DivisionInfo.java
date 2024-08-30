package com.jdc.customers.api.output;

import com.jdc.customers.domain.entity.Division;
import com.jdc.customers.domain.entity.Division_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

public record DivisionInfo(
		int id, 
		String name) {
	
	public static DivisionInfo from(Division entity) {
		return new DivisionInfo(entity.getId(), entity.getName());
	}

	public static void select(CriteriaBuilder cb, CriteriaQuery<DivisionInfo> cq, Root<Division> root) {
		cq.multiselect(
			root.get(Division_.id),
			root.get(Division_.name)
		);
		
		cq.orderBy(cb.asc(root.get(Division_.id)));
	}
}
