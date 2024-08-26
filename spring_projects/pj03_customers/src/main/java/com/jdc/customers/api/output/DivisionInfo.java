package com.jdc.customers.api.output;

import com.jdc.customers.domain.entity.District_;
import com.jdc.customers.domain.entity.Division;
import com.jdc.customers.domain.entity.Division_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Root;

public record DivisionInfo(int id, String name, long districts) {
	
	public static DivisionInfo from(Division entity) {
		return new DivisionInfo(entity.getId(), entity.getName(), entity.getDistrict().size());
	}

	public static void select(CriteriaBuilder cb, CriteriaQuery<DivisionInfo> cq, Root<Division> root) {
		var district = root.join(Division_.district, JoinType.LEFT);
		
		cq.multiselect(
			root.get(Division_.id),
			root.get(Division_.name),
			cb.count(district.get(District_.id))
		);
		
		cq.groupBy(
			root.get(Division_.id),
			root.get(Division_.name)
		);
		
		cq.orderBy(cb.asc(root.get(Division_.id)));
	}
}
