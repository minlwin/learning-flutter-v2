package com.jdc.customers.api;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jdc.customers.api.input.DistrictSearch;
import com.jdc.customers.api.input.DivisionSearch;
import com.jdc.customers.api.input.TownshipSearch;
import com.jdc.customers.api.output.DistrictInfo;
import com.jdc.customers.api.output.DivisionInfo;
import com.jdc.customers.api.output.TownshipInfo;
import com.jdc.customers.domain.service.LocationService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("locations")
public class LocationApi {

	private final LocationService service;
	
	@GetMapping("divisions")
	List<DivisionInfo> divisions(DivisionSearch search) {
		return service.search(search);
	}

	@GetMapping("districts")
	List<DistrictInfo> districts(DistrictSearch search) {
		return service.search(search);
	}

	@GetMapping("townships")
	List<TownshipInfo> townships(TownshipSearch search) {
		return service.search(search);
	}
}
