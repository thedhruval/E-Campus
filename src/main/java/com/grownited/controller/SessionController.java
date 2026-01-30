package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;

@Controller
public class SessionController {
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
	public String register(UserEntity userEntity) {
		System.out.println(userEntity.firstName);
		System.out.println(userEntity.lastName);
		System.out.println(userEntity.email);
		System.out.println(userEntity.password);
		return "Login";
	}

}
