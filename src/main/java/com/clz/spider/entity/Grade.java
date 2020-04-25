package com.clz.spider.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("grade")
public class Grade {

	@TableId(type = IdType.AUTO)
	private Long id;
	
	private String grade;
	
	private String gradeUrl;
	
	private Date data;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getGradeUrl() {
		return gradeUrl;
	}

	public void setGradeUrl(String gradeUrl) {
		this.gradeUrl = gradeUrl;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Grade [id=" + id + ", grade=" + grade + ", gradeUrl=" + gradeUrl + ", data=" + data + "]";
	}
	
}
