package com.grownited.controller.Student;

import java.time.LocalDate;
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
	
	// View Exams Done
	@GetMapping("/viewExamsDone")
	public String viewExamsDone(@RequestParam("batchId") Long batchId, Model model) {
	    LocalDate today = LocalDate.now();
	    List<ExamEntity> examsDone = examRepository.findByBatchIdAndExamDateBefore(batchId, today);
	    model.addAttribute("examsDone", examsDone);
	    return "student-examsDone";
	}

	// View Upcoming Exams
	@GetMapping("/viewExamsUpcoming")
	public String viewExamsUpcoming(@RequestParam("batchId") Long batchId, Model model) {
	    LocalDate today = LocalDate.now();
	    List<ExamEntity> examsUpcoming = examRepository.findByBatchIdAndExamDateAfter(batchId, today);
	    model.addAttribute("examsUpcoming", examsUpcoming);
	    return "student-examsUpcoming";
	}


}
