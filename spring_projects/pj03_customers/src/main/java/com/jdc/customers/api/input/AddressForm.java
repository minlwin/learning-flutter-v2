package com.jdc.customers.api.input;

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

}
