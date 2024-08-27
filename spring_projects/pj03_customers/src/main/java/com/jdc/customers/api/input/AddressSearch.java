package com.jdc.customers.api.input;

public record AddressSearch(		
		Integer divisionId,
		Integer districtId,
		Integer townshipId,
		String keyword) {

}
