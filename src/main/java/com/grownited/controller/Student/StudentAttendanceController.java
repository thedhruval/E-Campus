package com.grownited.controller.Student;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.AttendanceEntity;
import com.grownited.entity.BatchSessionEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AttendanceRepository;
import com.grownited.repository.BatchSessionRepository;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/student")
public class StudentAttendanceController {
	
	@Autowired
	BatchSessionRepository batchSessionRepository;
	
	@Autowired
	AttendanceRepository attendanceRepository;
	
	@GetMapping("/viewAttendance")
	public String viewAttendance(@RequestParam("batchId") Integer batchId,
	                             HttpSession session, Model model) {
	    UserEntity user = (UserEntity) session.getAttribute("user");

	    // get all completed sessions of this batch
	    List<BatchSessionEntity> sessions = batchSessionRepository.findByBatchIdAndStatus(batchId, "COMPLETED");

	    List<AttendanceEntity> attendanceList = new ArrayList<>();
	    for (BatchSessionEntity sessionEntity : sessions) {
	        Optional<AttendanceEntity> attendanceOpt =
	                attendanceRepository.findByBatchSessionIdAndStudentId(sessionEntity.getBatchSessionId(), user.getUserId());

	        attendanceOpt.ifPresent(attendanceList::add);
	    }

	    model.addAttribute("attendanceList", attendanceList);
	    return "Student/MyAttendance";
	}

}
