package com.grownited.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.ExamEntity;

public interface ExamRepository extends JpaRepository<ExamEntity, Long>{
	
	List<ExamEntity> findByBatchIdAndExamDateBefore(Long batchId, LocalDate date);
    List<ExamEntity> findByBatchIdAndExamDateAfter(Long batchId, LocalDate date);
	List<ExamEntity> findByBatchId(Integer batchId);

}
