package com.grownited.controller.Student;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchStudentEntity;
import com.grownited.entity.CourseEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchStudentRepository;
import com.grownited.repository.CourseRepository;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/student")
public class StudentBatchController {
	
	@Autowired
	BatchStudentRepository batchStudentRepository;
	
	@Autowired
	BatchRepository batchRepository;
	
	@Autowired
	CourseRepository courseRepository;
	
	@GetMapping("/listMyBatch")
	public String listMyBatch(HttpSession session, Model model) {
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    List<BatchStudentEntity> batchStudents = batchStudentRepository.findByStudentId(user.getUserId());

	    List<Integer> batchIds = batchStudents.stream()
	            .map(BatchStudentEntity::getBatchId)
	            .collect(Collectors.toList());

	    List<BatchEntity> batches = batchRepository.findByBatchIdIn(batchIds);

	    model.addAttribute("myBatches", batches);
	    return "Student/ListMyBatch";
	}


}
