package com.grownited.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "batch_sessions")
public class BatchSessionEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer batchSessionId;
    private String notes;
    private LocalDateTime reportingDateTime;
    private LocalDate sessionDate;
    private String sessionDay;
    private Integer sessionDurationMinutes;
    private String sessionEndTime;
    private String sessionStartTime;
    private String status;
    private String topic;
    private Integer totalStudent;
    private Integer batchId;   // foreign key reference to Batch
    private Integer facultyId;    // foreign key reference to User
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "batchId", referencedColumnName = "batchId", insertable = false, updatable = false)
    private BatchEntity batch;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "facultyId", referencedColumnName = "userId", insertable = false, updatable = false)
    private UserEntity faculty;


    // Getters and Setters
    public Integer getBatchSessionId() {
        return batchSessionId;
    }
    public void setBatchSessionId(Integer batchSessionId) {
        this.batchSessionId = batchSessionId;
    }

    

    public String getNotes() {
        return notes;
    }
    public void setNotes(String notes) {
        this.notes = notes;
    }

    public LocalDateTime getReportingDateTime() {
        return reportingDateTime;
    }
    public void setReportingDateTime(LocalDateTime reportingDateTime) {
        this.reportingDateTime = reportingDateTime;
    }

    public LocalDate getSessionDate() {
        return sessionDate;
    }
    public void setSessionDate(LocalDate sessionDate) {
        this.sessionDate = sessionDate;
    }

    public String getSessionDay() {
        return sessionDay;
    }
    public void setSessionDay(String sessionDay) {
        this.sessionDay = sessionDay;
    }

    public Integer getSessionDurationMinutes() {
        return sessionDurationMinutes;
    }
    public void setSessionDurationMinutes(Integer sessionDurationMinutes) {
        this.sessionDurationMinutes = sessionDurationMinutes;
    }

    public String getSessionEndTime() {
        return sessionEndTime;
    }
    public void setSessionEndTime(String sessionEndTime) {
        this.sessionEndTime = sessionEndTime;
    }

    public String getSessionStartTime() {
        return sessionStartTime;
    }
    public void setSessionStartTime(String sessionStartTime) {
        this.sessionStartTime = sessionStartTime;
    }

    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }

    public String getTopic() {
        return topic;
    }
    public void setTopic(String topic) {
        this.topic = topic;
    }

    public Integer getTotalStudent() {
        return totalStudent;
    }
    public void setTotalStudent(Integer totalStudent) {
        this.totalStudent = totalStudent;
    }

    public Integer getBatchId() {
        return batchId;
    }
    public void setBatchId(Integer batchId) {
        this.batchId = batchId;
    }

	public Integer getFacultyId() {
		return facultyId;
	}
	public void setFacultyId(Integer facultyId) {
		this.facultyId = facultyId;
	}
	public BatchEntity getBatch() {
		return batch;
	}
	public void setBatch(BatchEntity batch) {
		this.batch = batch;
	}
	public UserEntity getFaculty() {
		return faculty;
	}
	public void setFaculty(UserEntity faculty) {
		this.faculty = faculty;
	}
    
}
