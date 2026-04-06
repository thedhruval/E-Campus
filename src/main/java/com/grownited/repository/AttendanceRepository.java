package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.AttendanceEntity;

public interface AttendanceRepository extends JpaRepository<AttendanceEntity, Integer> {

	List<AttendanceEntity> findByBatchSessionId(Integer batchSessionId);

}
