package com.grownited.controller;

import java.time.LocalDate;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.UserDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserDetailRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

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
		userDetailEntity.setUserId(userEntity.getUserId());
		userDetailRepository.save(userDetailEntity);
		
		
		return "Login";
	}
	
	@PostMapping("/authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session) {
		
		Optional<UserEntity> op = userRepository.findByEmail(email);
		
		if(op.isPresent()) {
			
			UserEntity dbUser = op.get();
			session.setAttribute("user", dbUser);
			
			if(dbUser.getPassword().equals(password)) {
				
				if(dbUser.getRole().equals("ADMIN")) {
					return"redirect:/admin-dashboard";
				}else if(dbUser.getRole().equals("FACULTY")) {
					return"redirect:/faculty-dashboard";
				}else if(dbUser.getRole().equals("STUDENT")) {
					return"redirect:/student-dashboard";
				}
			}
		}
		
		model.addAttribute("error","Invalid Credentials");
		return"Login";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "Login";
	}

}
