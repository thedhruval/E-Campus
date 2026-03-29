package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.UserRepository;


@Controller
public class AdminController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	CourseRepository courseRepository;
	
	@GetMapping(value = {"/admin-dashboard", "/"})
	public String openAdminDashboard(Model model) {
		
		Long studentCount = userRepository.countByRole("STUDENT");
		model.addAttribute("studentCount", studentCount);
		
		Long facultyCount = userRepository.countByRole("FACULTY");
		model.addAttribute("facultyCount", facultyCount);
		
		Long adminCount = userRepository.countByRole("ADMIN");
		model.addAttribute("adminCount", adminCount);
		
		Long courseCount = courseRepository.count();
		model.addAttribute("courseCount", courseCount);
		
		return "AdminDashboard"; //jsp name
		
	}
	
	@PostMapping(value = "/admin-dashboard")
	public String openAdminDashboardpost(Model model) {
		
		Long studentCount = userRepository.countByRole("STUDENT");
		model.addAttribute("studentCount", studentCount);
		
		Long facultyCount = userRepository.countByRole("FACULTY");
		model.addAttribute("facultyCount", facultyCount);
		
		Long adminCount = userRepository.countByRole("ADMIN");
		model.addAttribute("adminCount", adminCount);
		
		Long courseCount = courseRepository.count();
		model.addAttribute("courseCount", courseCount);
		
		return "AdminDashboard"; //jsp name
		
	}

}
