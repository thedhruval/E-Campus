package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.BatchSessionEntity;
import com.grownited.entity.BatchTimeEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.BatchSessionRepository;
import com.grownited.repository.UserRepository;

@Controller
public class BatchSessionController {
	
	@Autowired
	BatchSessionRepository batchSessionRepository;
	
	@Autowired
	BatchRepository batchRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/newBatchSession")
	public String newBatchSession(Model model) {
		
		List<BatchEntity> batchList = batchRepository.findAll();
		model.addAttribute("batchList", batchList);
		
		List<UserEntity> facultyList = userRepository.findByRole("FACULTY");
		model.addAttribute("facultyList", facultyList);
		return "NewBatchSession";
	}
	
	@GetMapping("/listBatchSession")
	public String ListBatchSession(Model model) {
		List<BatchSessionEntity> batchSession = batchSessionRepository.findAll();
        model.addAttribute("batchSessions", batchSession);
        return "ListBatchSession";
	}
	
	@PostMapping("/saveBatchSession")
	public String SaveBatchSession(BatchSessionEntity batchSessionEntity) {
		batchSessionRepository.save(batchSessionEntity);
		return "redirect:/listBatchSession";
	}
	
	@GetMapping("/editBatchSession")
	public String editBatchSession(Integer batchSessionId, Model model) {
	    Optional<BatchSessionEntity> session = batchSessionRepository.findById(batchSessionId);
	    if (session.isPresent()) {
	        model.addAttribute("batchSession", session.get());
	        model.addAttribute("batchList", batchRepository.findAll());
	        model.addAttribute("facultyList", userRepository.findAll());
	        return "EditBatchSession";
	    } else {
	        return "redirect:/listBatchSession";
	    }
	}

	@PostMapping("/updateBatchSession")
	public String updateBatchSession(BatchSessionEntity newSessionEntity) {
	    Optional<BatchSessionEntity> session = batchSessionRepository.findById(newSessionEntity.getBatchSessionId());
	    if (session.isPresent()) {
	        BatchSessionEntity dbSession = session.get();
	        dbSession.setSessionDate(newSessionEntity.getSessionDate());
	        dbSession.setSessionDay(newSessionEntity.getSessionDay());
	        dbSession.setSessionStartTime(newSessionEntity.getSessionStartTime());
	        dbSession.setSessionEndTime(newSessionEntity.getSessionEndTime());
	        dbSession.setSessionDurationMinutes(newSessionEntity.getSessionDurationMinutes());
	        dbSession.setReportingDateTime(newSessionEntity.getReportingDateTime());
	        dbSession.setTopic(newSessionEntity.getTopic());
	        dbSession.setNotes(newSessionEntity.getNotes());
	        dbSession.setPresentOffline(newSessionEntity.getPresentOffline());
	        dbSession.setPresentOnline(newSessionEntity.getPresentOnline());
	        dbSession.setAbsent(newSessionEntity.getAbsent());
	        dbSession.setLate(newSessionEntity.getLate());
	        dbSession.setExcuse(newSessionEntity.getExcuse());
	        dbSession.setCancel(newSessionEntity.getCancel());
	        dbSession.setNa(newSessionEntity.getNa());
	        dbSession.setTotalStudent(newSessionEntity.getTotalStudent());
	        dbSession.setStatus(newSessionEntity.getStatus());
	        dbSession.setBatchId(newSessionEntity.getBatchId());
	        dbSession.setFacultyId(newSessionEntity.getFacultyId());

	        batchSessionRepository.save(dbSession);
	    }
	    return "redirect:/listBatchSession";
	}


}
