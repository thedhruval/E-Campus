package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.AttendanceEntity;

public interface AttendanceRepository extends JpaRepository<AttendanceEntity, Integer> {

	List<AttendanceEntity> findByBatchSessionId(Integer batchSessionId);
	
	long countByBatchSessionIdAndStatus(Integer batchSessionId, String status);
	
    // All attendance records for a student across all sessions
    List<AttendanceEntity> findByStudentId(Integer studentId);

    // Count how many times a student had a given status
    long countByStudentIdAndStatus(Integer studentId, String status);

    // Attendance records for a student in a specific session
    Optional<AttendanceEntity> findByBatchSessionIdAndStudentId(Integer batchSessionId, Integer studentId);

    // Count all attendance records for a student in a batch (if you want batch-level stats)
    long countByStudentIdAndBatchSessionId(Integer studentId, Integer batchSessionId);

}
