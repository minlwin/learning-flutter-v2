package com.jdc.customers.domain.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private UUID id;
	
	@Column(nullable = false)
	private String name;
	
	private String profile;
	
	@Column(nullable = false)
	private String phone;
	
	@Column(nullable = false)
	private String email;
	
	@Column(nullable = false)
	private LocalDate dob;

	@Column(nullable = false)
	private LocalDateTime registAt;
	
	@Embedded
	private Address address;
	
}
