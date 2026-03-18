package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ExamResultEntity;
import com.grownited.repository.ExamResultRepository;

@Controller
public class ExamResult {
	
	@Autowired
	ExamResultRepository examResultRepository;
	
	@GetMapping("/newExamResult")
	public String newExamResult() {

		return "NewExamResult";
	}

	@GetMapping("/listExamResult")
	public String listExamResult(Model model) {
		List<ExamResultEntity> ExamResult = examResultRepository.findAll();
		model.addAttribute("ExamResult", ExamResult);
		return "ListExamResult";
	}

	@PostMapping("/saveExamResult")
	public String saveExamResult(ExamResultEntity examResultEntity) {
		examResultRepository.save(examResultEntity);
		return "redirect:/listExamResult";
	}

}
