package com.grownited.controller.Faculty;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.repository.AttendanceRepository;
import com.grownited.repository.BatchRepository;

@Controller
public class FacultySessionController {
	
	@Autowired
	private AttendanceRepository attendanceRepository;

	@Autowired
	private BatchRepository batchRepository;
	
	@GetMapping("/faculty/faculty-dashboard")
	public String openFacultyDashboard(Model model, Integer facultyId) {
		return "Faculty/FacultyDashboard";
	}
	

}
