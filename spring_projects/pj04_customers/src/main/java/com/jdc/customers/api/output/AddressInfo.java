package com.jdc.customers.api.output;

import com.jdc.customers.domain.entity.Address;

public record AddressInfo(String building, String street, String quarter, TownshipInfo township) {

	public static AddressInfo from(Address entity) {
		return new AddressInfo(entity.getBuilding(), entity.getStreet(), entity.getQuarter(), TownshipInfo.from(entity.getTownship()));
	}

}
