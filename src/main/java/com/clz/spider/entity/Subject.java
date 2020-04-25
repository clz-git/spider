package com.clz.spider.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("subject")
public class Subject {

	@TableId(type = IdType.AUTO)
	private Long id;
	
	private String subject;
	
	private String subjectUrl;
	
	private Date date;
	
	private String gradeName;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSubjectUrl() {
		return subjectUrl;
	}

	public void setSubjectUrl(String subjectUrl) {
		this.subjectUrl = subjectUrl;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	@Override
	public String toString() {
		return "Subject [id=" + id + ", subject=" + subject + ", subjectUrl=" + subjectUrl + ", data=" + date
				+ ", gradeName=" + gradeName + "]";
	}

	

	
}
