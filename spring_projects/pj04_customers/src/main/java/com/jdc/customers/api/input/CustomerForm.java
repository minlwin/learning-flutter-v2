package com.jdc.customers.api.input;

import java.time.LocalDate;

import org.springframework.web.multipart.MultipartFile;

import com.jdc.customers.domain.entity.Address;
import com.jdc.customers.domain.entity.Customer;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record CustomerForm(
		@NotBlank(message = "Enter customer name")
		String name,
		@NotBlank(message = "Enter customer phone")
		String phone,
		@NotBlank(message = "Enter customer email")
		String email,
		@NotNull(message = "Enter date of birth")
		LocalDate dob,
		@NotNull(message = "Select township")
		Integer township,
		@NotBlank(message = "Enter quarter")
		String quarter,
		@NotBlank(message = "Enter street")
		String street,
		@NotBlank(message = "Enter building")
		String building,
		MultipartFile profile) {

	public Customer entity() {
		
		var entity = new Customer();
		entity.setName(name);
		entity.setPhone(phone);
		entity.setEmail(email);
		entity.setDob(dob);
		
		var address = new Address();
		address.setBuilding(building);
		address.setQuarter(quarter);
		address.setStreet(street);
		
		entity.setAddress(address);
		
		return entity;
	}

	public void update(Customer entity) {
		entity.setName(name);
		entity.setPhone(phone);
		entity.setEmail(email);
		entity.setDob(dob);
		
		var address = entity.getAddress();
		address.setBuilding(building);
		address.setQuarter(quarter);
		address.setStreet(street);
	}
}
