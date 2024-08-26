package com.jdc.customers.domain.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jdc.customers.api.input.DistrictSearch;
import com.jdc.customers.api.input.DivisionSearch;
import com.jdc.customers.api.input.TownshipSearch;
import com.jdc.customers.api.output.DistrictInfo;
import com.jdc.customers.api.output.DivisionInfo;
import com.jdc.customers.api.output.TownshipInfo;
import com.jdc.customers.domain.entity.District;
import com.jdc.customers.domain.entity.Division;
import com.jdc.customers.domain.entity.Township;
import com.jdc.customers.domain.repo.DistrictRepo;
import com.jdc.customers.domain.repo.DivisionRepo;
import com.jdc.customers.domain.repo.TownshipRepo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class LocationService {
	
	private final DivisionRepo divisionRepo;
	private final DistrictRepo districtRepo;
	private final TownshipRepo townshipRepo;

	public List<DivisionInfo> search(DivisionSearch search) {
		return divisionRepo.search(cb -> {
			var cq = cb.createQuery(DivisionInfo.class);
			var root = cq.from(Division.class);
			DivisionInfo.select(cb, cq, root);
			cq.where(search.where(cb, root));
			return cq;
		});
	}

	public List<DistrictInfo> search(DistrictSearch search) {
		return districtRepo.search(cb -> {
			var cq = cb.createQuery(DistrictInfo.class);
			var root = cq.from(District.class);
			DistrictInfo.select(cb, cq, root);
			cq.where(search.where(cb, root));
			return cq;
		});
	}

	public List<TownshipInfo> search(TownshipSearch search) {
		return townshipRepo.search(cb -> {
			var cq = cb.createQuery(TownshipInfo.class);
			var root = cq.from(Township.class);
			TownshipInfo.select(cb, cq, root);
			cq.where(search.where(cb, root));
			return cq;
		});
	}

	public DivisionInfo findDivision(int id) {
		return divisionRepo.findById(id).map(DivisionInfo::from).orElseThrow();
	}

	public DistrictInfo findDistrict(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
