package com.jdc.customers.api.output;

import java.util.List;

import com.jdc.customers.domain.entity.Customer;

public record CustomerDetails(
		CustomerInfo info,
		List<AddressInfo> addresses) {

	public static CustomerDetails from(Customer entity) {
		return new CustomerDetails(CustomerInfo.from(entity), AddressInfo.list(entity.getAddress()));
	}

}
