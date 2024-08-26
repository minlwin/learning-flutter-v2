package com.jdc.customers.domain.entity;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class District {

	@Id
	private int id;
	
	@Column(nullable = false)
	private String name;
	
	@ManyToOne(optional = false)
	private Division division;
	
	@OneToMany(mappedBy = "district")
	private List<Township> township;
}
