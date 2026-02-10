package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.EnrollmentEntity;
import com.grownited.repository.EnrollmentRepository;
import com.grownited.repository.UserRepository;

@Controller
public class EnrollmentController {
	
	@Autowired
	EnrollmentRepository enrollmentRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/newEnrollment")
	public String newEnrollment() {
		
		return "NewEnrollment";
	}
	
	@PostMapping("/saveEnrollment")
	public String saveEnrollment(EnrollmentEntity enrollmentEntity) {
		
		enrollmentRepository.save(enrollmentEntity);
		return "AdminDashboard";
	}

}
