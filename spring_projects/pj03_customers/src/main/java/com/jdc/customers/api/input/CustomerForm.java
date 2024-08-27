package com.jdc.customers.api.input;

import java.time.LocalDate;
import java.time.LocalDateTime;

import com.jdc.customers.domain.entity.Customer;
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

	public Customer entity() {
		var entity = new Customer();
		entity.setName(name);
		entity.setPhone(phone);
		entity.setGender(gender);
		entity.setDob(dob);
		entity.setRegistAt(LocalDateTime.now());
		return entity;
	}
	
	public void update(Customer entity) {
		entity.setName(name);
		entity.setPhone(phone);
		entity.setGender(gender);
		entity.setDob(dob);
	}
}
