package com.grownited.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.AttendanceEntity;
import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchSessionEntity;
import com.grownited.entity.BatchStudentEntity;
import com.grownited.repository.AttendanceRepository;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchSessionRepository;
import com.grownited.repository.BatchStudentRepository;

@Controller
public class AttendanceController {
	@Autowired
	private BatchRepository batchRepository;

	@Autowired
	private BatchSessionRepository batchSessionRepository;

	@Autowired
	private BatchStudentRepository batchStudentRepository;

	@Autowired
	private AttendanceRepository attendanceRepository;

	// Step 1: Select Batch
	@GetMapping("/selectBatchForAttendance")
	public String selectBatchForAttendance(Model model) {
		List<BatchEntity> batches = batchRepository.findAll();
		model.addAttribute("batches", batches);
		return "SelectBatchForAttendance";
	}

	// Step 2: Select Session (only UPCOMMING or ONGOING)
	@GetMapping("/selectSessionForAttendance")
	public String selectSessionForAttendance(@RequestParam("batchId") Integer batchId, Model model) {
		List<BatchSessionEntity> sessions = batchSessionRepository.findByBatchIdAndStatusIn(batchId,
				List.of("UPCOMMING", "ONGOING"));
		model.addAttribute("sessions", sessions);
		model.addAttribute("batchId", batchId);
		return "SelectSessionForAttendance";
	}

	// Step 3: Take Attendance Form
	@GetMapping("/takeAttendance")
	public String takeAttendance(@RequestParam("batchId") Integer batchId, @RequestParam("sessionId") Integer sessionId,
			Model model) {
		List<BatchStudentEntity> students = batchStudentRepository.findByBatchId(batchId);

		model.addAttribute("students", students);
		model.addAttribute("batchId", batchId);
		model.addAttribute("sessionId", sessionId);
		return "TakeAttendance";
	}

	// Step 4: Save Attendance
	@PostMapping("/saveAttendance")
	public String saveAttendance(@RequestParam("sessionId") Integer sessionId,
			@RequestParam Map<String, String> allParams) {

		BatchSessionEntity currentSession = batchSessionRepository.findById(sessionId).orElse(null);
		if (currentSession == null) {
			return "redirect:/admin-dashboard";
		}

		// Counters
		int totalStudents = 0;
		int presentOfflineCount = 0;
		int presentOnlineCount = 0;
		int absentCount = 0;
		int lateCount = 0;
		int excusedCount = 0;
		int naCount = 0;

		// Save each student's attendance
		for (String key : allParams.keySet()) {
			if (key.startsWith("student_")) {
				Integer studentId = Integer.parseInt(key.replace("student_", ""));
				String status = allParams.get(key);

				AttendanceEntity attendance = new AttendanceEntity();
				attendance.setBatchSessionId(sessionId);
				attendance.setStudentId(studentId);
				attendance.setStatus(status);

				// Capture notes for this student
				String notesKey = "notes_" + studentId;
				if (allParams.containsKey(notesKey)) {
					attendance.setNotes(allParams.get(notesKey));
				}

				attendanceRepository.save(attendance);

				// Count totals
				totalStudents++;
				switch (status) {
				case "PRESENT_OFFLINE":
					presentOfflineCount++;
					break;
				case "PRESENT_ONLINE":
					presentOnlineCount++;
					break;
				case "ABSENT":
					absentCount++;
					break;
				case "LATE":
					lateCount++;
					break;
				case "EXCUSED":
					excusedCount++;
					break;
				case "NA":
					naCount++;
					break;
				}
			}
		}

		// Update session totals and mark as COMPLETED
		currentSession.setTotalStudent(totalStudents);
		currentSession.setPresentOffline(presentOfflineCount);
		currentSession.setPresentOnline(presentOnlineCount);
		currentSession.setAbsent(absentCount);
		currentSession.setLate(lateCount);
		currentSession.setExcuse(excusedCount);
		currentSession.setNa(naCount);
		currentSession.setStatus("COMPLETED");

		batchSessionRepository.save(currentSession);

		return "redirect:/admin-dashboard";
	}

}
