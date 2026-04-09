package com.grownited.controller.Faculty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/faculty")
public class FacultyBatchController {
	
	@Autowired
	BatchRepository batchRepository;
	
	@GetMapping("/listMyBatch")
	public String listBatch(Model model, HttpSession session) {
		UserEntity faculty = (UserEntity) session.getAttribute("user");
		
		List<BatchEntity> batchList = batchRepository.findByFacultyId(faculty.getUserId());
		model.addAttribute("batchList",batchList);
		
		return "Faculty/ListBatch";
	}

}
