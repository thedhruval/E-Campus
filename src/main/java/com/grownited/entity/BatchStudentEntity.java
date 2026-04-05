package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table (name = "batch_students")
public class BatchStudentEntity {
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Integer batchStudentId;
	private Integer studentId; //fk userId
	private Integer batchId; // fk batchId
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "studentId", referencedColumnName = "userId", insertable = false, updatable = false)
    private UserEntity user;

    // getters and setters
    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
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
