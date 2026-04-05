package com.grownited.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.CourseEntity;
import com.grownited.repository.CourseRepository;
import com.grownited.service.PaymentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {

    @Autowired
    private CourseRepository courseRepository;

    @Autowired
    private PaymentService paymentService;

    @GetMapping("/charge")
    public String newPayment(@RequestParam("courseId") Integer courseId, Model model) {
        // Just pass courseId forward, don’t expose amount
        model.addAttribute("courseId", courseId);
        return "NewPayment"; // JSP view
    }

    @PostMapping("/charge")
    public String charge(Integer courseId, String creditCardNumber, String expirationDate, HttpSession session) {

        // Look up the course again to get the amount securely
        Optional<CourseEntity> courseOpt = courseRepository.findById(courseId);
        if (courseOpt.isPresent()) {
            CourseEntity courseEntity = courseOpt.get();
            Double amount = courseEntity.getAmountPerStudent().doubleValue();

            // Call your payment service
            paymentService.run(courseId, amount, creditCardNumber, expirationDate, session);
        }

        // Redirect after payment attempt
        return "redirect:/student/myCourse";
    }
}
