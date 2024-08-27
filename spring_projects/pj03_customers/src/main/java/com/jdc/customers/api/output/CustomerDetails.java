package com.jdc.customers.api.output;

import java.util.List;

public record CustomerDetails(
		CustomerInfo info,
		List<AddressInfo> addresses) {

}
