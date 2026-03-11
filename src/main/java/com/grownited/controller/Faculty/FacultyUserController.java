package com.grownited.controller.Faculty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class FacultyUserController {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/facultyNewUser")
	public String facultyNewUser(Model model) {
		List<UserEntity> students = userRepository.findByRole("STUDENT");
		model.addAttribute("students", students);
		return "FacultyNewUser";
	}
	
	@GetMapping("/facultyListUser")
	public String facultyListUser(Model model) {
		
		List<UserEntity> students = userRepository.findByRole("STUDENT");
		model.addAttribute("students", students);
		return "FacultyListUser";
	}

}
