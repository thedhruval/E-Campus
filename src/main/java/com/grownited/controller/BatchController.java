package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.repository.CourseRepository;

@Controller
public class BatchController {
	
	@Autowired
	CourseRepository courseRepository;
	
	@GetMapping("/newBatch")
	public String newBatch(Model model) {
		
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);
		
		return("NewBatch");
		
	}

}
