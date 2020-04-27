package com.clz.spider.form;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class InputForm {

	@JsonFormat(pattern="yyyy-MM-dd")
	private Date date;
	private String subject;
	private String grade;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "InputForm [date=" + date + ", subject=" + subject + ", grade=" + grade + "]";
	}
	
}
