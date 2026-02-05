package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.EnrollmentEntity;
import com.grownited.repository.EnrollmentRepository;

@Controller
public class EnrollmentController {
	
	@Autowired
	EnrollmentRepository enrollmentRepository;
	
	@GetMapping("/addenrollment")
	public String AddEnrollment() {
		
		return "AddEnrollment";
	}
	
	@PostMapping("/saveenrollment")
	public String SaveEnrollment(EnrollmentEntity enrollmentEntity) {
		
		enrollmentRepository.save(enrollmentEntity);
		return "AdminDashboard";
	}

}
