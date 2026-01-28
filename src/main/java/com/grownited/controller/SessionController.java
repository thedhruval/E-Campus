package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	public String register(String firstname, String lastname, String email, String password) {
		System.out.println(firstname);
		System.out.println(lastname);
		System.out.println(email);
		System.out.println(password);
		return "Login";
	}

}
