package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ExamEntity;
import com.grownited.repository.ExamRepository;

@Controller
public class ExamController {
	
	@Autowired
	ExamRepository examRepository;

	@GetMapping("/newExam")
	public String newExam() {

		return "NewExam";
	}

	@GetMapping("/listExam")
	public String listExam(Model model) {
		
		List<ExamEntity> ExamResult = examRepository.findAll();
		model.addAttribute("ExamResult", ExamResult);
		return "ListExam";
	}

	@PostMapping("/saveExam")
	public String saveExam(ExamEntity examEntity) {
		examRepository.save(examEntity);
		return "redirect:/listExam";
	}

}
