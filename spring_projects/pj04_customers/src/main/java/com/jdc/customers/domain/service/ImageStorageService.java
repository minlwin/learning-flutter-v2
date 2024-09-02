package com.jdc.customers.domain.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jdc.customers.exceptions.BusinessException;

@Service
public class ImageStorageService {
	
	@Value("${app.storage.path}")
	private String storage;
	
	public String save(UUID id, MultipartFile profile) {
		
		var extension = extension(profile.getOriginalFilename());
		var fileName = "%s.%s".formatted(id.toString(), extension);
		
		var path = Path.of(storage, fileName);
		try {
			Files.copy(profile.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
		} catch (IOException e) {
			throw new BusinessException(List.of("Fails on saving profile image."), e);
		}
		
		return fileName;
	}

	private String extension(String fileName) {
		
		var array = fileName.split("\\.");
		
		if(array.length > 0) {
			return array[array.length - 1];
		}
		
		return null;
	}

}
