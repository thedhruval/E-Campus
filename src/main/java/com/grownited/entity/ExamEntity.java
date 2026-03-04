package com.grownited.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "exams")
public class ExamEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long examId;

    private LocalDateTime createdAt;
    private LocalDate examDate;
    private String examDescription;
    private String examDifficulty; // EASY, HARD, MEDIUM, VERY_HARD
    private String examTitle;
    private Double totalMarks;
    private Long batchId;   // foreign key reference to Batch
    private Long subjectId; // foreign key reference to Subject
    private Long courseId;  // foreign key reference to Course

    // Getters and Setters
    public Long getExamId() {
        return examId;
    }
    public void setExamId(Long examId) {
        this.examId = examId;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDate getExamDate() {
        return examDate;
    }
    public void setExamDate(LocalDate examDate) {
        this.examDate = examDate;
    }

    public String getExamDescription() {
        return examDescription;
    }
    public void setExamDescription(String examDescription) {
        this.examDescription = examDescription;
    }

    public String getExamDifficulty() {
        return examDifficulty;
    }
    public void setExamDifficulty(String examDifficulty) {
        this.examDifficulty = examDifficulty;
    }

    public String getExamTitle() {
        return examTitle;
    }
    public void setExamTitle(String examTitle) {
        this.examTitle = examTitle;
    }

    public Double getTotalMarks() {
        return totalMarks;
    }
    public void setTotalMarks(Double totalMarks) {
        this.totalMarks = totalMarks;
    }

    public Long getBatchId() {
        return batchId;
    }
    public void setBatchId(Long batchId) {
        this.batchId = batchId;
    }

    public Long getSubjectId() {
        return subjectId;
    }
    public void setSubjectId(Long subjectId) {
        this.subjectId = subjectId;
    }

    public Long getCourseId() {
        return courseId;
    }
    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }
}
