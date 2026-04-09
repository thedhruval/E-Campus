package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.BatchEntity;
import java.util.List;


@Repository
public interface BatchRepository extends JpaRepository<BatchEntity, Integer> {
	
	List<BatchEntity> findByFacultyId(Long facultyId);

	List<BatchEntity> findByFacultyId(Integer facultyId);
	
	Long countByStatus(String status);
	
	List<BatchEntity> findByBatchIdIn(List<Integer> batchIds);

}
