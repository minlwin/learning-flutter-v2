package com.jdc.customers.api.output;

import com.jdc.customers.domain.entity.District_;
import com.jdc.customers.domain.entity.Division_;
import com.jdc.customers.domain.entity.Township;
import com.jdc.customers.domain.entity.Township_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

public record TownshipInfo(int id, 
		String name, 
		DistrictInfo district) {
	
	public TownshipInfo(int id, String name, int districtId, String districtName, int divisionId, String divisionName) {
		this(id, name, new DistrictInfo(districtId, districtName, divisionId, divisionName));
	}

	public static void select(CriteriaBuilder cb, CriteriaQuery<TownshipInfo> cq, Root<Township> root) {
		var district = root.join(Township_.district);
		var division = district.join(District_.division);
		
		cq.multiselect(
			root.get(Township_.id),
			root.get(Township_.name),
			district.get(District_.id),
			district.get(District_.name),
			division.get(Division_.id),
			division.get(Division_.name)
		);
		
		cq.orderBy(
			cb.asc(root.get(Township_.id)),
			cb.asc(district.get(District_.id)),
			cb.asc(division.get(Division_.id))
		);
	}

	public static TownshipInfo from(Township entity) {
		return new TownshipInfo(
				entity.getId(), entity.getName(), DistrictInfo.from(entity.getDistrict()));
	}
}
