package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.ExamEntity;

public interface ExamRepository extends JpaRepository<ExamEntity, Long>{

}
