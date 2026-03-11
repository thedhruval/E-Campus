package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.BatchTimeEntity;

public interface BatchTimeRepository extends JpaRepository<BatchTimeEntity, Long>{
	
	List<BatchTimeEntity> findByBatchIdIn(List<Integer> batchIds);

}
