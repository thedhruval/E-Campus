package com.grownited.controller.Faculty;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FacultySessionController {
	
	@GetMapping("/faculty/faculty-dashboard")
	public String openFacultyDashboard() {
		return "Faculty/FacultyDashboard";
	}
	

}
