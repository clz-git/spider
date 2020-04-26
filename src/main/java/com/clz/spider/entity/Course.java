package com.clz.spider.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("course")
public class Course {

	@TableId(type = IdType.AUTO)
	private Long id;
	
	private String course_id;
	
	private String course_url;
	
	private String grade;
	
	private String subject;
	
	private Date date;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCourse_id() {
		return course_id;
	}

	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}

	public String getCourse_url() {
		return course_url;
	}

	public void setCourse_url(String course_url) {
		this.course_url = course_url;
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
		return "Course [id=" + id + ", course_id=" + course_id + ", course_url=" + course_url + ", grade=" + grade
				+ ", subject=" + subject + ", date=" + date + "]";
	}
}
