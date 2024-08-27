package com.jdc.customers.domain.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.UUID)
	private UUID id;
	
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private String phone;
	@Column(nullable = false)
	private Gender gender;
	@Column(nullable = false)
	private LocalDate dob;

	@Column(nullable = false)
	private LocalDateTime registAt;
	
	@OneToMany(mappedBy = "customer")
	private List<Address> address;
	
	public enum Gender {
		Male, Female
	}
	
}
