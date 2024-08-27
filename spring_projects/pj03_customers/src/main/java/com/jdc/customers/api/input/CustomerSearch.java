package com.jdc.customers.api.input;

import java.util.ArrayList;

import org.springframework.util.StringUtils;

import com.jdc.customers.domain.entity.Address_;
import com.jdc.customers.domain.entity.Customer;
import com.jdc.customers.domain.entity.Customer_;
import com.jdc.customers.domain.entity.District_;
import com.jdc.customers.domain.entity.Division_;
import com.jdc.customers.domain.entity.Township_;

import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;

public record CustomerSearch(
		Integer divisionId,
		Integer districtId,
		Integer townshipId,
		String keyword) {

	public Predicate[] where(CriteriaBuilder cb, Root<Customer> root) {
		
		var list = new ArrayList<Predicate>();
		
		if(null != townshipId) {
			var township = root.join(Customer_.address, JoinType.LEFT)
					.join(Address_.township, JoinType.LEFT);
			list.add(cb.equal(township.get(Township_.id), townshipId));
		} else if (null != districtId) {
			var district = root.join(Customer_.address, JoinType.LEFT)
					.join(Address_.township, JoinType.LEFT)
					.join(Township_.district, JoinType.LEFT);
			list.add(cb.equal(district.get(District_.id), districtId));
		} else if (null != divisionId) {
			var division = root.join(Customer_.address, JoinType.LEFT)
					.join(Address_.township, JoinType.LEFT)
					.join(Township_.district, JoinType.LEFT).join(District_.division, JoinType.LEFT);
			list.add(cb.equal(division.get(Division_.id), divisionId));
		}
		
		if(StringUtils.hasLength(keyword)) {
			list.add(cb.like(cb.lower(root.get(Customer_.name)), keyword.toLowerCase().concat("%")));
		}
		
		return list.toArray(size -> new Predicate[size]);
	}
}
