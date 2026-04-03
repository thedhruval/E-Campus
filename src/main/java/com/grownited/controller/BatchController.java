package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.CourseEntity;
import com.grownited.entity.SubjectEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.SubjectRepository;
import com.grownited.repository.UserRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class BatchController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	CourseRepository courseRepository;
	
	@Autowired
	SubjectRepository subjectRepository;
	
	@Autowired
	BatchRepository batchRepository;
	
	@GetMapping("/newBatch")
	public String newBatch(Model model) {
		
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);
		
		List<UserEntity> facultyList = userRepository.findByRole("FACULTY");
		model.addAttribute("facultyList", facultyList);
		
		List<SubjectEntity> subjectList = subjectRepository.findAll();
		model.addAttribute("subjectList", subjectList);
		
		return("NewBatch");
		
	}
	
	@PostMapping("/saveBatch")
	public String saveBatch(BatchEntity batchEntity) {
		
		batchRepository.save(batchEntity);
		return "redirect:/listBatch";
	}
	
	@GetMapping("/listBatch")
	public String listBatch(Model model) {
		
		List<BatchEntity> batchList = batchRepository.findAll();
		model.addAttribute("batchList",batchList);
		
		return "ListBatch";
	}
	
	@GetMapping("/deleteBatch")
	public String deleteBatch(Integer batchId) {
		batchRepository.deleteById(batchId);
		return "redirect:/listBatch";
	}
	
	@GetMapping("/editBatch")
	public String editBatch(Integer batchId, Model model) {
	    Optional<BatchEntity> batch = batchRepository.findById(batchId);
	    if (batch.isPresent()) {
	        model.addAttribute("batch", batch.get());
	        model.addAttribute("facultyList", userRepository.findAll());
	        model.addAttribute("courseList", courseRepository.findAll());
	        model.addAttribute("subjectList", subjectRepository.findAll());
	        return "EditBatch";
	    } else {
	        return "redirect:/listBatch";
	    }
	}

	@PostMapping("/updateBatch")
	public String updateBatch(BatchEntity newBatchEntity) {
	    Optional<BatchEntity> batch = batchRepository.findById(newBatchEntity.getBatchId());
	    if (batch.isPresent()) {
	        BatchEntity dbBatch = batch.get();
	        dbBatch.setBatchName(newBatchEntity.getBatchName());
	        dbBatch.setBatchStatus(newBatchEntity.getBatchStatus());
	        dbBatch.setBatchType(newBatchEntity.getBatchType());
	        dbBatch.setDescription(newBatchEntity.getDescription());
	        dbBatch.setStartDate(newBatchEntity.getStartDate());
	        dbBatch.setEndDate(newBatchEntity.getEndDate());
	        dbBatch.setFacultyId(newBatchEntity.getFacultyId());
	        dbBatch.setReporterId(newBatchEntity.getReporterId());
	        dbBatch.setStatus(newBatchEntity.getStatus());
	        dbBatch.setCourseId(newBatchEntity.getCourseId());
	        dbBatch.setSubjectId(newBatchEntity.getSubjectId());

	        batchRepository.save(dbBatch);
	    }
	    return "redirect:/listBatch";
	}


}
