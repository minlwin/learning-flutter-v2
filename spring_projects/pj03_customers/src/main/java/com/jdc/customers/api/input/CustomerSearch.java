package com.jdc.customers.api.input;

public record CustomerSearch(
		Integer divisionId,
		Integer districtId,
		Integer townshipId,
		String keyword) {

}
