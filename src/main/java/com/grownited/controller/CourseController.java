package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.repository.CourseRepository;


@Controller
public class CourseController {
	
	@Autowired
	CourseRepository courseRepository;
	
	
	@GetMapping("/addcourse")
	public String AddCourse() {
		
		
		
		return "AddCourse";
	}
	
	
	@PostMapping("savecourse")
	public String SaveCourse(CourseEntity courseEntity) {
		
		courseRepository.save(courseEntity);
		
		return "AdminDashboard";
	}
	

}
