package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.BatchStudentEntity;

@Repository
public interface BatchStudentRepository extends JpaRepository<BatchStudentEntity, Integer>{
	
	List<BatchStudentEntity> findByBatchId(Integer batchId);

}
