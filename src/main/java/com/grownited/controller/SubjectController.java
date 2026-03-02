package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.entity.SubjectEntity;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.SubjectRepository;

@Controller
public class SubjectController {
	
	@Autowired
	SubjectRepository subjectRepository;
	
	@Autowired
	CourseRepository courseRepository;
	
	@GetMapping("/newSubject")
	public String newSubject(Model model) {
		
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);
		return "NewSubject";
	}
	
	@PostMapping("/saveSubject")
	public String saveSubject(SubjectEntity subjectEntity) {
		
		subjectRepository.save(subjectEntity);
		return"redirect:/listSubject";
	}
	
	@GetMapping("/listSubject")
	public String listSubject(Model model) {
		List<SubjectEntity> subjectList = subjectRepository.findAll();
		model.addAttribute("subjectList", subjectList);
		return "ListSubject";
	}

}
