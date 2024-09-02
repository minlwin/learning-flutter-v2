package com.jdc.customers.utils.config;

import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.jdc.customers.domain.BaseRepositoryImpl;

@EnableJpaRepositories(repositoryBaseClass = BaseRepositoryImpl.class)
public class JpaSpecificConfiguration {

}
