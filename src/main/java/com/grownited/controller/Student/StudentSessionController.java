package com.grownited.controller.Student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudentSessionController {
	
	@GetMapping("/student/student-dashboard")
	public String openFacultyDashboard() {
		return "Student/StudentDashboard";
	}
	

}
