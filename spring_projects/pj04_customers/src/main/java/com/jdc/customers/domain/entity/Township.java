package com.jdc.customers.domain.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class Township {

	@Id
	private int id;
	
	@Column(nullable = false)
	private String name;
	
	@ManyToOne(optional = false)
	private District district;
}
