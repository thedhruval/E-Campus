package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class AttendanceEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer attendanceId;

    private Integer batchSessionId; // FK to BatchSession
    private Integer studentId;      // FK to User/BatchStudent
    private String status;          // PRESENT, ABSENT, LATE, EXCUSED, NA
    private String notes;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "batchSessionId", referencedColumnName = "batchSessionId", insertable = false, updatable = false)
    private BatchSessionEntity batchSession;
	public Integer getAttendanceId() {
		return attendanceId;
	}
	public void setAttendanceId(Integer attendanceId) {
		this.attendanceId = attendanceId;
	}
	public Integer getBatchSessionId() {
		return batchSessionId;
	}
	public void setBatchSessionId(Integer batchSessionId) {
		this.batchSessionId = batchSessionId;
	}
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	public BatchSessionEntity getBatchSession() {
		return batchSession;
	}
	public void setBatchSession(BatchSessionEntity batchSession) {
		this.batchSession = batchSession;
	}
	
    
}
