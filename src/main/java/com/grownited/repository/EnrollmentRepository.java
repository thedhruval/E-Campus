package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.grownited.entity.EnrollmentEntity;
import com.grownited.entity.UserEntity;

@Repository
public interface EnrollmentRepository extends JpaRepository<EnrollmentEntity, Integer>{

	List<EnrollmentEntity> findByUserId(Integer userId);
	
	@Query("SELECT u FROM UserEntity u WHERE u.userId IN " +
	           "(SELECT e.userId FROM EnrollmentEntity e WHERE e.courseId = :courseId) " +
	           "AND u.userId NOT IN (SELECT bs.studentId FROM BatchStudentEntity bs WHERE bs.batchId = :batchId)")
	    List<UserEntity> findEligibleStudentsForBatch(@Param("courseId") Integer courseId, @Param("batchId") Integer batchId);

}
