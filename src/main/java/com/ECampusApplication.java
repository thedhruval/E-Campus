package com;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;

@SpringBootApplication
public class ECampusApplication {

	public static void main(String[] args) {
		SpringApplication.run(ECampusApplication.class, args);
	}
	
	@Bean
	PasswordEncoder getPasswordEncoder() {
		
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	Cloudinary getCloudinary() {
		Map<String, String> config = new HashMap<>();
		config.put("cloud_name", "drrnh2ezb");
		config.put("api_key", "777654442382985");
		config.put("api_secret", "ekvNwnGIFrE87A_jDhnI3UcTRfU");
		return new Cloudinary(config);
	}


}
