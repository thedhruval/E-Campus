package com.grownited.controller.Faculty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchSessionEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchSessionRepository;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/faculty")
public class FacultyBatchSessionController {

    @Autowired
    private BatchRepository batchRepository;

    @Autowired
    private BatchSessionRepository batchSessionRepository;

    // Step 1: Show form
    @GetMapping("/newBatchSession")
    public String newBatchSession(Model model, HttpSession session) {
        UserEntity loggedInUser = (UserEntity) session.getAttribute("user");

        if (loggedInUser == null || !"FACULTY".equals(loggedInUser.getRole())) {
            return "redirect:/login";
        }

        Integer facultyId = loggedInUser.getUserId();  // <-- correct way

        List<BatchEntity> batchList = batchRepository.findByFacultyId(facultyId);
        model.addAttribute("batchList", batchList);

        return "Faculty/FacultyNewBatchSession";
    }


    // Step 2: Save session
    @PostMapping("/saveBatchSession")
    public String saveBatchSession(BatchSessionEntity batchSessionEntity, HttpSession session) {
        UserEntity loggedInUser = (UserEntity) session.getAttribute("user");

        if (loggedInUser == null || !"FACULTY".equals(loggedInUser.getRole())) {
            return "redirect:/login";
        }

        batchSessionEntity.setFacultyId(loggedInUser.getUserId());

        batchSessionRepository.save(batchSessionEntity);

        return "redirect:/faculty/faculty-dashboard";
    }
}

