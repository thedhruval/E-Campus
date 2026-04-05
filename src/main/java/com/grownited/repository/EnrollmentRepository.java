package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.EnrollmentEntity;

@Repository
public interface EnrollmentRepository extends JpaRepository<EnrollmentEntity, Integer>{

	List<EnrollmentEntity> findByUserId(Integer userId);

}
