package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.SubjectEntity;

@Repository
public interface SubjectRepository extends JpaRepository<SubjectEntity, Integer>{

	List<SubjectEntity> findByCourseId(Integer courseId);

}
