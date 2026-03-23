package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchTimeEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchTimeRepository;

@Controller
public class BatchTimeController {

    @Autowired
    BatchTimeRepository batchTimeRepository;

    @Autowired
    BatchRepository batchRepository;

    // Show form to create new Batch Time
    @GetMapping("/newBatchTime")
    public String newBatchTime(Model model) {
        List<BatchEntity> batches = batchRepository.findAll();
        model.addAttribute("batches", batches);
        return "NewBatchTime";
    }

    // Show list of Batch Times
    @GetMapping("/listBatchTime")
    public String listBatchTime(Model model) {
        List<BatchTimeEntity> batchTimes = batchTimeRepository.findAll();
        model.addAttribute("batchTimes", batchTimes);
        return "ListBatchTime";
    }

    // Save Batch Time
    @PostMapping("/saveBatchTime")
    public String saveBatchTime(BatchTimeEntity batchTimeEntity) {
        batchTimeRepository.save(batchTimeEntity);
        return "redirect:/listBatchTime";
    }
}
