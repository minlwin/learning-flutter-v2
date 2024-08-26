package com.jdc.customers.api.output;

import com.jdc.customers.domain.entity.District;
import com.jdc.customers.domain.entity.District_;
import com.jdc.customers.domain.entity.Division_;
import com.jdc.customers.domain.entity.Township_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Root;

public record DistrictInfo(int id, String name, int divisionId, String division, long townships) {

	public static void select(CriteriaBuilder cb, CriteriaQuery<DistrictInfo> cq, Root<District> root) {
		var township = root.join(District_.township, JoinType.LEFT);
		var division = root.join(District_.division);
		
		cq.multiselect(
			root.get(District_.id),
			root.get(District_.name),
			division.get(Division_.id),
			division.get(Division_.name),
			cb.count(township.get(Township_.id))
		);
		
		cq.groupBy(
			root.get(District_.id),
			root.get(District_.name),
			division.get(Division_.id),
			division.get(Division_.name)
		);
		
		cq.orderBy(
			cb.asc(root.get(District_.id)),
			cb.asc(division.get(Division_.id))
		);
	}

}
