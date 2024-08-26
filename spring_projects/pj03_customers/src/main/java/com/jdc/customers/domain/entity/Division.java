package com.jdc.customers.domain.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class Division {

	@Id
	private int id;
	
	@Column(nullable = false)
	private String name;
	
	@OneToMany(mappedBy = "division")
	private List<District> district;
}
