package com.jdc.customers.api.output;

import java.util.UUID;

public record AddressInfo(
		UUID id,
		String building,
		String street,
		String quarter,
		TownshipInfo township) {

}
