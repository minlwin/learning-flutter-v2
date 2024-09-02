package com.jdc.customers.utils.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.jdc.customers.domain.BaseRepositoryImpl;

@Configuration
@EnableJpaRepositories(
		repositoryBaseClass = BaseRepositoryImpl.class, 
		basePackages = "com.jdc.customers.domain.repo")
public class JpaSpecificConfiguration {

}
