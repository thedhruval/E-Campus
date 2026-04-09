package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.ExamResultEntity;

public interface ExamResultRepository extends JpaRepository<ExamResultEntity, Long>{
	
	List<ExamResultEntity> findByExamIdAndStudentId(Long examId, Long studentId);

}
