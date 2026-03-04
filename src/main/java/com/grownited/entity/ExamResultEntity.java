package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "exam_results")
public class ExamResultEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long examResultId;

    private Long examId;       // foreign key reference to Exam
    private Double obtainMarks;
    private Double percentage;
    private String resultStatus; // ABSENT, FAIL, PASS
    private Long studentId;    // foreign key reference to User

    // Getters and Setters
    public Long getExamResultId() {
        return examResultId;
    }
    public void setExamResultId(Long examResultId) {
        this.examResultId = examResultId;
    }

    public Long getExamId() {
        return examId;
    }
    public void setExamId(Long examId) {
        this.examId = examId;
    }

    public Double getObtainMarks() {
        return obtainMarks;
    }
    public void setObtainMarks(Double obtainMarks) {
        this.obtainMarks = obtainMarks;
    }

    public Double getPercentage() {
        return percentage;
    }
    public void setPercentage(Double percentage) {
        this.percentage = percentage;
    }

    public String getResultStatus() {
        return resultStatus;
    }
    public void setResultStatus(String resultStatus) {
        this.resultStatus = resultStatus;
    }

    public Long getStudentId() {
        return studentId;
    }
    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }
}
