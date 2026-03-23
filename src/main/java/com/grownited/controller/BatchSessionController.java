package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchSessionEntity;
import com.grownited.entity.BatchTimeEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchSessionRepository;
import com.grownited.repository.UserRepository;

@Controller
public class BatchSessionController {
	
	@Autowired
	BatchSessionRepository batchSessionRepository;
	
	@Autowired
	BatchRepository batchRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/newBatchSession")
	public String newBatchSession(Model model) {
		
		List<BatchEntity> batchList = batchRepository.findAll();
		model.addAttribute("batchList", batchList);
		
		List<UserEntity> facultyList = userRepository.findByRole("FACULTY");
		model.addAttribute("facultyList", facultyList);
		return "NewBatchSession";
	}
	
	@GetMapping("/listBatchSession")
	public String ListBatchSession(Model model) {
		List<BatchSessionEntity> batchSession = batchSessionRepository.findAll();
        model.addAttribute("batchTimes", batchSession);
        return "ListBatchSession";
	}
	
	@PostMapping("/saveBatchSession")
	public String SaveBatchSession(BatchSessionEntity batchSessionEntity) {
		batchSessionRepository.save(batchSessionEntity);
		return "redirect:/listBatchSession";
	}

}
