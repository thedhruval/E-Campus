package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.BatchSessionEntity;

public interface BatchSessionRepository extends JpaRepository<BatchSessionEntity, Integer>{
	
	List<BatchSessionEntity> findByBatchId(Integer batchId);
	
	List<BatchSessionEntity> findByBatchIdAndStatusIn(Integer batchId, List<String> statuses);

	List<BatchSessionEntity> findByStatus(String status);
	
	List<BatchSessionEntity> findByBatchIdAndStatus(Integer batchId, String status);
	
	List<BatchSessionEntity> findByFacultyId(Integer facultyId);

}
