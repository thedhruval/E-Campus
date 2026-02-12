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
public class CourseController {
	
	@Autowired
	CourseRepository courseRepository;
	
	@GetMapping("/newCourse")
	public String newCourse() {
		
		return "NewCourse";
	}
	
	
	@PostMapping("/saveCourse")
	public String saveCourse(CourseEntity courseEntity) {
		
		courseRepository.save(courseEntity);
		
		return "AdminDashboard";
	}
	
	@GetMapping("/listCourse")
	public String listCourse(Model model) {
		
		List<CourseEntity> courseList = courseRepository.findAll();
		
		model.addAttribute("courseList",courseList);
		
		return "ListCourse";
	}
	
	@GetMapping("/deleteCourse")
	public String deleteCourse(Integer courseId) {
		
		courseRepository.deleteById(courseId);
		return "redirect:/listCourse";
	}

}
