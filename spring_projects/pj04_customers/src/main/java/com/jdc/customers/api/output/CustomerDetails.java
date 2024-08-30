package com.jdc.customers.api.output;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.UUID;

import com.jdc.customers.domain.entity.Customer;

public record CustomerDetails(
		UUID id,
		String name,
		String profile,
		String phone,
		String email,
		LocalDate dob,
		LocalDateTime registAt,
		AddressInfo addresses) {

	public static CustomerDetails from(Customer entity) {
		return new CustomerDetails(
			entity.getId(),
			entity.getName(),
			entity.getProfile(),
			entity.getPhone(),
			entity.getEmail(),
			entity.getDob(),
			entity.getRegistAt(),
			AddressInfo.from(entity.getAddress())
		);
	}

}
