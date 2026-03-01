package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.CourseEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.UserRepository;

@Controller
public class BatchController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	CourseRepository courseRepository;
	
	@Autowired
	BatchRepository batchRepository;
	
	@GetMapping("/newBatch")
	public String newBatch(Model model) {
		
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);
		
		List<UserEntity> facultyList = userRepository.findByRole("FACULTY");
		model.addAttribute("facultyList", facultyList);
		
		return("NewBatch");
		
	}
	
	@PostMapping("/saveBatch")
	public String saveBatch(BatchEntity batchEntity) {
		
		batchRepository.save(batchEntity);
		return "admin-dashboard";
	}

}
