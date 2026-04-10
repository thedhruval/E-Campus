package com.grownited.controller.Student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.ExamEntity;
import com.grownited.repository.ExamRepository;

@Controller
@RequestMapping("/student")
public class StudentExamController {
	
	@Autowired
	ExamRepository examRepository;
	
	@GetMapping("/viewExams")
	public String viewExams(@RequestParam("batchId") Integer batchId, Model model) {
	    List<ExamEntity> exams = examRepository.findByBatchId(batchId);
	    model.addAttribute("exams", exams);
	    return "Student/ListExam";
	}

}
