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
@Table(name="exams")
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

    // Raw foreign keys
    private Integer batchId;
    private Integer subjectId;
    private Integer courseId;

    // Relationships (read-only, navigable)
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "batchId", referencedColumnName = "batchId", insertable = false, updatable = false)
    private BatchEntity batch;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "courseId", referencedColumnName = "courseId", insertable = false, updatable = false)
    private CourseEntity course;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "subjectId", referencedColumnName = "subjectId", insertable = false, updatable = false)
    private SubjectEntity subject;

    // getters and setters
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
	public Integer getBatchId() {
		return batchId;
	}
	public void setBatchId(Integer batchId) {
		this.batchId = batchId;
	}
	public Integer getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	public BatchEntity getBatch() {
		return batch;
	}
	public void setBatch(BatchEntity batch) {
		this.batch = batch;
	}
	public CourseEntity getCourse() {
		return course;
	}
	public void setCourse(CourseEntity course) {
		this.course = course;
	}
	public SubjectEntity getSubject() {
		return subject;
	}
	public void setSubject(SubjectEntity subject) {
		this.subject = subject;
	}
    
}
