package com.grownited.controller.Student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.BatchSessionEntity;
import com.grownited.repository.BatchSessionRepository;

@Controller
@RequestMapping("/student")
public class StudentBatchSessionController {
	
	@Autowired
	BatchSessionRepository batchSessionRepository;
	
	 @GetMapping("/viewUpcomingSessions")
	    public String viewUpcomingSessions(@RequestParam("batchId") Integer batchId, Model model) {
	        List<BatchSessionEntity> upcomingSessions = batchSessionRepository.findByBatchIdAndStatus(batchId, "UPCOMING");
	        model.addAttribute("upcomingSessions", upcomingSessions);
	        return "Student/UpcomingSessions";
	    }

}
