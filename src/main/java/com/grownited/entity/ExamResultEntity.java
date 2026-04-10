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
@Table(name = "exam_results")
public class ExamResultEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long examResultId;

    private Long examId;       // foreign key reference to Exam
    private Double obtainMarks;
    private Double percentage;
    private String resultStatus; // ABSENT, FAIL, PASS
    private Integer studentId;    // foreign key reference to User
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "studentId", referencedColumnName = "userId", insertable = false, updatable = false)
    private UserEntity student;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "examId", referencedColumnName = "examId", insertable = false, updatable = false)
    private ExamEntity exam;

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
	public Integer getStudentId() {
		return studentId;
	}
	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}
	public UserEntity getStudent() {
		return student;
	}
	public void setStudent(UserEntity student) {
		this.student = student;
	}
	public ExamEntity getExam() {
		return exam;
	}
	public void setExam(ExamEntity exam) {
		this.exam = exam;
	}
	
	
    
}
