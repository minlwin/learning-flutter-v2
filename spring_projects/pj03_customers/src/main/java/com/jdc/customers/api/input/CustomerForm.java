package com.jdc.customers.api.input;

import java.time.LocalDate;

import com.jdc.customers.domain.entity.Customer.Gender;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record CustomerForm(
		@NotBlank(message = "Enter customer name")
		String name,
		@NotBlank(message = "Enter customer phone")
		String phone,
		@NotNull(message = "Select gender")
		Gender gender,
		@NotNull(message = "Enter date of birth")
		LocalDate dob
		) {

}
