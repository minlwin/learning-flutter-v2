package com.jdc.customers.domain;

import java.util.List;

public record PageInfo<T>(
		List<T> contents,
		long count,
		int page,
		int size
		) {
	
	public long getTotalPages() {
		var result = count / size;
		return count % size > 0 ? result + 1 : result;
	}
}
