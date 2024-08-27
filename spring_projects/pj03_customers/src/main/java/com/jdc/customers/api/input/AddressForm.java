package com.jdc.customers.api.input;

import com.jdc.customers.domain.entity.Address;
import com.jdc.customers.domain.entity.Customer;
import com.jdc.customers.domain.entity.Township;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record AddressForm(
		@NotBlank(message = "Select customer")
		String customerId,
		@NotNull(message = "Select township")
		Integer township,
		@NotBlank(message = "Enter quarter")
		String quarter,
		@NotBlank(message = "Enter street")
		String street,
		@NotBlank(message = "Enter building")
		String building) {

	public Address entity(Township township, Customer customer) {
		
		var entity = new Address();
		entity.setCustomer(customer);
		entity.setTownship(township);
		entity.setQuarter(quarter);
		entity.setStreet(street);
		entity.setBuilding(building);
		
		return entity;
	}

}
