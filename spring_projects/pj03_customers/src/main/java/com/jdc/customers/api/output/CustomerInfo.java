package com.jdc.customers.api.output;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.UUID;

import com.jdc.customers.domain.entity.Customer.Gender;

public record CustomerInfo(
		UUID id,
		String name,
		String phone,
		Gender gender,
		LocalDate dob,
		LocalDateTime registAt) {

}
