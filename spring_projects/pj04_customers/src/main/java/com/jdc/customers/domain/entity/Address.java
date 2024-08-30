package com.jdc.customers.domain.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Embeddable
public class Address {

	@ManyToOne(optional = false)
	private Township township;
	
	@Column(nullable = false)
	private String building;
	@Column(nullable = false)
	private String street;
	@Column(nullable = false)
	private String quarter;
}
