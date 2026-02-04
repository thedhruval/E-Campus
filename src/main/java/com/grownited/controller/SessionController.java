package com.grownited.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;

@Controller
public class SessionController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	UserDetailRepository userDetailRepository;
	
	
	
	@GetMapping("/signup")
	public String openSignupPage() {
		return "Signup"; //jsp name
		
	}
	
	@GetMapping("/login")
	public String openLoginPage() {
		return "Login"; //jsp name
		
	}
	
	
	
	@GetMapping("/forgotpassword")
	public String openForgotPasswordPage() {
		return "ForgotPassword"; //jsp name
		
	}
	
	@PostMapping("/register")
	public String register(UserEntity userEntity, UserDetailEntity userDetailEntity ) {
		System.out.println(userEntity.getFirstName());
		System.out.println(userDetailEntity.getCity());
		
		
		userEntity.setRole("STUDENT");
		userEntity.setActive(true);
		userEntity.setCreatedAt(LocalDate.now());
		
		
		userRepository.save(userEntity);
		userDetailRepository.save(userDetailEntity);
		
		return "Login";
	}
	
	
	
	
	
	

}
