package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchTimeEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchTimeRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class BatchTimeController {
	
	@Autowired
	BatchRepository batchRepository;
	
	@Autowired
	BatchTimeRepository batchTimeRepository;
	
	@GetMapping("/newBatchTime")
	public String newBatchTime(Model model, HttpSession session) {
		UserEntity loggedinUser = (UserEntity) session.getAttribute("user");
		List<BatchEntity> batches = batchRepository.findAll();
		model.addAttribute("batches", batches);
		return "NewBatchTime";
	}
	
	@GetMapping("/listBatchTime")
	public String ListBatchTime() {
		
		return "ListBatchTime";
	}
	
	@PostMapping("/saveBatchTime")
	public String saveBatchTime(BatchTimeEntity batchTimeEntity) {
		
		batchTimeRepository.save(batchTimeEntity);
		return "redirect:/listBatchTime";
	}

}
