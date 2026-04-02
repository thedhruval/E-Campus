package com.grownited.controller.Faculty;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
@RequestMapping("/faculty")
public class FacultyAttendanceController {

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
        return "Faculty/SelectBatchForAttendance";
    }

    // Step 2: Select Session (only UPCOMMING or ONGOING)
    @GetMapping("/selectSessionForAttendance")
    public String selectSessionForAttendance(@RequestParam("batchId") Integer batchId, Model model) {
        List<BatchSessionEntity> sessions = batchSessionRepository.findByBatchIdAndStatusIn(
                batchId, List.of("UPCOMMING", "ONGOING"));
        model.addAttribute("sessions", sessions);
        model.addAttribute("batchId", batchId);
        return "Faculty/SelectSessionForAttendance";
    }

    // Step 3: Take Attendance Form
    @GetMapping("/takeAttendance")
    public String takeAttendance(@RequestParam("batchId") Integer batchId,
                                 @RequestParam("sessionId") Integer sessionId,
                                 Model model) {
        List<BatchStudentEntity> students = batchStudentRepository.findByBatchId(batchId);

        model.addAttribute("students", students);
        model.addAttribute("batchId", batchId);
        model.addAttribute("sessionId", sessionId);
        return "Faculty/TakeAttendance";
    }

    // Step 4: Save Attendance
    @PostMapping("/saveAttendance")
    public String saveAttendance(@RequestParam("sessionId") Integer sessionId,
                                 @RequestParam Map<String, String> allParams) {

        for (String key : allParams.keySet()) {
            if (key.startsWith("student_")) {
                Integer studentId = Integer.parseInt(key.replace("student_", ""));
                String status = allParams.get(key);

                AttendanceEntity attendance = new AttendanceEntity();
                attendance.setBatchSessionId(sessionId);
                attendance.setStudentId(studentId);
                attendance.setStatus(status);

                attendanceRepository.save(attendance);
            }
        }

        // After saving attendance, mark session as COMPLETED
        BatchSessionEntity session = batchSessionRepository.findById(sessionId).orElse(null);
        if (session != null) {
            session.setStatus("COMPLETED");
            batchSessionRepository.save(session);
        }

        return "redirect:/faculty/faculty-dashboard";
    }
}
