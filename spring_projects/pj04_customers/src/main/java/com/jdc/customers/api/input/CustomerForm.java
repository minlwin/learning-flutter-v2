package com.jdc.customers.api.input;

import java.time.LocalDate;

import org.springframework.web.multipart.MultipartFile;

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
		@NotNull(message = "Select customer profile image")
		MultipartFile profile) {
}
