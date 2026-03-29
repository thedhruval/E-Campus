package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchStudentEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchStudentRepository;
import com.grownited.repository.UserRepository;

@Controller
public class BatchStudentController {
	@Autowired
	BatchStudentRepository batchStudentRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	BatchRepository batchRepository;

	@GetMapping("/newBatchStudent")
	public String newBatchStudent(Model model) {
		List<UserEntity> studentList = userRepository.findByRole("STUDENT");
		model.addAttribute("studentList", studentList);
		List<BatchEntity> batchList = batchRepository.findAll();
		model.addAttribute("batchList", batchList);
		return "NewBatchStudent";
	}

	@PostMapping("/saveBatchStudent")
	public String saveBatchStudent(BatchStudentEntity batchStudentEntity) {

		batchStudentRepository.save(batchStudentEntity);

		return "redirect:/listBatchStudent";
	}

	@GetMapping("/listBatchStudent")
	public String listBatchStudent(Model model) {

		List<BatchStudentEntity> batchStudentList = batchStudentRepository.findAll();

		model.addAttribute("batchStudentList", batchStudentList);

		return "ListBatchStudent";
	}

	@GetMapping("/deleteBatchStudent")
	public String deleteBatchStudent(Integer batchStudentId) {

		batchStudentRepository.deleteById(batchStudentId);
		return "redirect:/listBatchStudent";
	}

}
