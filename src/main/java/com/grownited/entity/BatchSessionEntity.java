package com.grownited.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "batch_sessions")
public class BatchSessionEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer batchSessionId;

    private Integer absent;
    private Integer cancel;
    private Integer excuse;
    private Integer late;
    private Integer na;
    private String notes;
    private Integer presentOffline;
    private Integer presentOnline;
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
    private Long facultyId;    // foreign key reference to User

    // Getters and Setters
    public Integer getBatchSessionId() {
        return batchSessionId;
    }
    public void setBatchSessionId(Integer batchSessionId) {
        this.batchSessionId = batchSessionId;
    }

    public Integer getAbsent() {
        return absent;
    }
    public void setAbsent(Integer absent) {
        this.absent = absent;
    }

    public Integer getCancel() {
        return cancel;
    }
    public void setCancel(Integer cancel) {
        this.cancel = cancel;
    }

    public Integer getExcuse() {
        return excuse;
    }
    public void setExcuse(Integer excuse) {
        this.excuse = excuse;
    }

    public Integer getLate() {
        return late;
    }
    public void setLate(Integer late) {
        this.late = late;
    }

    public Integer getNa() {
        return na;
    }
    public void setNa(Integer na) {
        this.na = na;
    }

    public String getNotes() {
        return notes;
    }
    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Integer getPresentOffline() {
        return presentOffline;
    }
    public void setPresentOffline(Integer presentOffline) {
        this.presentOffline = presentOffline;
    }

    public Integer getPresentOnline() {
        return presentOnline;
    }
    public void setPresentOnline(Integer presentOnline) {
        this.presentOnline = presentOnline;
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

    public Long getFacultyId() {
        return facultyId;
    }
    public void setFacultyId(Long facultyId) {
        this.facultyId = facultyId;
    }
}
