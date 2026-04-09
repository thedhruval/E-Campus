package com.grownited.controller.Student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.AttendanceRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentSessionController {
	
	@Autowired
	AttendanceRepository attendanceRepository;
	
	@GetMapping("/student/student-dashboard")
	public String openStudentDashboard(Model model, HttpSession session) {
	    UserEntity studentUser = (UserEntity) session.getAttribute("user");
	    Integer studentId = studentUser.getUserId();

	    long presentCount = attendanceRepository.countByStudentIdAndStatus(studentId, "PRESENT");
	    long absentCount  = attendanceRepository.countByStudentIdAndStatus(studentId, "ABSENT");

	    model.addAttribute("presentCount", presentCount);
	    model.addAttribute("absentCount", absentCount);

	    return "Student/StudentDashboard";
	}

}
