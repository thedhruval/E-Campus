package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name = "batch_students")
public class BatchStudentEntity {
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Integer batchStudentId;
	private Integer studentId; //fk userId
	private Integer batchId; // fk batchId
	public Integer getBatchStudentId() {
		return batchStudentId;
	}
	public void setBatchStudentId(Integer batchStudentId) {
		this.batchStudentId = batchStudentId;
	}
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	public Integer getBatchId() {
		return batchId;
	}
	public void setBatchId(Integer batchId) {
		this.batchId = batchId;
	}
	
	
}
