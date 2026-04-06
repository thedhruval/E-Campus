package com.grownited.controller.Faculty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchStudentEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchStudentRepository;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.EnrollmentRepository;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/faculty")
public class FacultyBatchStudentController {

    @Autowired
    private BatchRepository batchRepository;

    @Autowired
    private EnrollmentRepository enrollmentRepository;

    @Autowired
    private BatchStudentRepository batchStudentRepository;

    @Autowired
    private CourseRepository courseRepository;

    // Step 1: Faculty selects batch
    @GetMapping("/selectBatchToAddStudent")
    public String selectBatchToAddStudent(HttpSession session, Model model) {
        UserEntity faculty = (UserEntity) session.getAttribute("user");
        List<BatchEntity> batches = batchRepository.findByFacultyId(faculty.getUserId());
        model.addAttribute("batches", batches);
        return "Faculty/SelectBatchToAddStudent";
    }

    // Step 2: Show students eligible for batch
    @PostMapping("/addStudentToBatch")
    public String addStudentToBatch(@RequestParam Integer batchId, Model model) {
        BatchEntity batch = batchRepository.findById(batchId).orElse(null);
        if (batch == null) return "redirect:/faculty/selectBatchToAddStudent";

        // Find enrolled students in the course but not yet in any batch
        List<UserEntity> eligibleStudents = enrollmentRepository.findEligibleStudentsForBatch(batch.getCourseId(), batchId);

        model.addAttribute("batch", batch);
        model.addAttribute("students", eligibleStudents);
        return "Faculty/AddStudentToBatch";
    }

    // Step 3: Save student to batch
    @PostMapping("/saveBatchStudent")
    public String saveBatchStudent(@RequestParam Integer batchId, @RequestParam Integer studentId) {
        BatchStudentEntity bs = new BatchStudentEntity();
        bs.setBatchId(batchId);
        bs.setStudentId(studentId);
        batchStudentRepository.save(bs);

        return "redirect:/faculty/selectBatchToAddStudent";
    }
}
