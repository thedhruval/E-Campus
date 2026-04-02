package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.AttendanceEntity;

public interface AttendanceRepository extends JpaRepository<AttendanceEntity, Integer> {

}
