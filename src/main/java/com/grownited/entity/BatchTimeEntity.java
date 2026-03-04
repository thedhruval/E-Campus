package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "batch_timings")
public class BatchTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long batchTimeId;
    private String time;
    private String day;
    private Integer batchId; // foreign key reference, handled in controller/service

    // Getters and Setters
    public Long getBatchTimeId() {
        return batchTimeId;
    }
    public void setBatchTimeId(Long batchTimeId) {
        this.batchTimeId = batchTimeId;
    }

    public String getTime() {
        return time;
    }
    public void setTime(String time) {
        this.time = time;
    }

    public String getDay() {
        return day;
    }
    public void setDay(String day) {
        this.day = day;
    }

    public Integer getBatchId() {
        return batchId;
    }
    public void setBatchId(Integer batchId) {
        this.batchId = batchId;
    }
}
