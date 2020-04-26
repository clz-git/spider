package com.clz.spider.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("course_content")
public class CourseContent {

	@TableId(type = IdType.AUTO)
	private Long id;
	
	private String courseContentUrl;
	
	private String grade;
	
	private String subject;
	
	private Date date;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCourseContentUrl() {
		return courseContentUrl;
	}

	public void setCourseContentUrl(String courseContentUrl) {
		this.courseContentUrl = courseContentUrl;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "CourseContent [id=" + id + ", courseContentUrl=" + courseContentUrl + ", grade=" + grade + ", subject="
				+ subject + ", date=" + date + "]";
	}
}
