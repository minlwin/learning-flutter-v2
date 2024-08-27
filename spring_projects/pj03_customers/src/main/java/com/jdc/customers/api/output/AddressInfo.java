package com.jdc.customers.api.output;

import java.util.List;
import java.util.UUID;

import com.jdc.customers.domain.entity.Address;
import com.jdc.customers.domain.entity.Address_;
import com.jdc.customers.domain.entity.District_;
import com.jdc.customers.domain.entity.Division_;
import com.jdc.customers.domain.entity.Township_;

import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

public record AddressInfo(
		UUID id,
		String building,
		String street,
		String quarter,
		int townshipId,
		String township,
		int districtId,
		String district,
		int divisionId,
		String division) {
	
	public static void select(CriteriaQuery<AddressInfo> cq, Root<Address> root) {
		
		var township = root.join(Address_.township);
		var district = township.join(Township_.district);
		var division = district.join(District_.division);
		
		cq.multiselect(
			root.get(Address_.id),
			root.get(Address_.building),
			root.get(Address_.street),
			root.get(Address_.quarter),
			township.get(Township_.id),
			township.get(Township_.name),
			district.get(District_.id),
			district.get(District_.name),
			division.get(Division_.id),
			division.get(Division_.name)
		).distinct(true);
	}

	public static List<AddressInfo> list(List<Address> list) {
		
		if(null != list) {
			return list.stream().map(AddressInfo::from).toList();
		}
		
		return null;
	}

	public static AddressInfo from(Address entity) {
		var township = entity.getTownship();
		var district = township.getDistrict();
		var division = district.getDivision();
		return new AddressInfo(entity.getId(), 
				entity.getBuilding(), 
				entity.getStreet(), 
				entity.getQuarter(), 
				township.getId(),
				township.getName(),
				district.getId(),
				district.getName(),
				division.getId(),
				division.getName());
	}
}
