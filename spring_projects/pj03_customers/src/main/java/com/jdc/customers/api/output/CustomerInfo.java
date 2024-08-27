package com.jdc.customers.api.output;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.UUID;

import com.jdc.customers.domain.entity.Customer;
import com.jdc.customers.domain.entity.Customer_;
import com.jdc.customers.domain.entity.Customer.Gender;

import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

public record CustomerInfo(
		UUID id,
		String name,
		String phone,
		Gender gender,
		LocalDate dob,
		LocalDateTime registAt) {
	
	public static void select(CriteriaQuery<CustomerInfo> cq, Root<Customer> root) {
		cq.multiselect(
			root.get(Customer_.id),
			root.get(Customer_.name),
			root.get(Customer_.phone),
			root.get(Customer_.gender),
			root.get(Customer_.dob),
			root.get(Customer_.registAt)
		).distinct(true);
	}

	public static CustomerInfo from(Customer entity) {
		return new CustomerInfo(entity.getId(), entity.getName(), entity.getPhone(), entity.getGender(), entity.getDob(), entity.getRegistAt());
	}

}
