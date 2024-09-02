package com.jdc.customers.utils.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

import lombok.Data;

@Data
@ConfigurationProperties(prefix = "app")
public class ApplicationProperties {
	
	private Storage storage = new Storage();
	private Profile profile = new Profile();

	@Data
	public static class Storage {
		private String path;
	}
	
	@Data
	public static class Profile {
		private String path;
	}
}
