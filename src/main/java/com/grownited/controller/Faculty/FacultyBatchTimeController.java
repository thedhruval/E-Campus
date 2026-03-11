package com.grownited.controller.Faculty;

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
public class FacultyBatchTimeController {
	
	@Autowired
	BatchRepository batchRepository;
	
	@Autowired
	BatchTimeRepository batchTimeRepository;
	
	@GetMapping("/faculty/facultyNewBatchTime")
	public String newBatchTime(Model model, HttpSession session) {
		UserEntity loggedinUser = (UserEntity) session.getAttribute("user");
		List<BatchEntity> batches = batchRepository.findByFacultyId(loggedinUser.getUserId().longValue());
		model.addAttribute("batches", batches);
		return "Faculty/FacultyNewBatchTime";
	}
	
	@GetMapping("/faculty/facultyListBatchTime")
	public String ListBatchTime(HttpSession session, Model model) {
		UserEntity loggedinUser = (UserEntity) session.getAttribute("user");
		List<BatchTimeEntity> batchTimes = batchTimeRepository.findByBatchIdIn(
			    batchRepository.findByFacultyId(loggedinUser.getUserId().longValue())
			                   .stream()
			                   .map(BatchEntity::getBatchId)
			                   .toList()
			);

		model.addAttribute("batchTimes", batchTimes);
		return "Faculty/FacultyListBatchTime";
	}
	
	@PostMapping("/faculty/facultySaveBatchTime")
	public String saveBatchTime(BatchTimeEntity batchTimeEntity) {
		
		batchTimeRepository.save(batchTimeEntity);
		return "redirect:/faculty/facultyListBatchTime";
	}

}
