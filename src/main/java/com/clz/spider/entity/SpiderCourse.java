package com.clz.spider.entity;

import java.util.List;

import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@TargetUrl("https://fudao.qq.com/grade/\\w+/subject/\\w+")
public class SpiderCourse {

	@ExtractBy("//li[@class='subject-item']/a/text()")
	private List<String> subjectList;
	
	@ExtractBy("//li[@class='subject-item']/a/@href")
	private List<String> subjectUrlList;
	
	@ExtractBy("//div[@class='grade-filter']/span/text()")
	private String gradeName;
	
	@ExtractBy("//li[@class='subject-item']/a[@class='selected']/text()")
	private String subjectName;
	
	@ExtractBy("//li[@class='courseGroup-card--wrapper']/a/@href")
	private List<String> courseContentList;
	
	@ExtractBy("//li[@class='course-card']/a/@href")
	private List<String> courseList;

	public List<String> getSubjectList() {
		return subjectList;
	}

	public void setSubjectList(List<String> subjectList) {
		this.subjectList = subjectList;
	}

	public List<String> getSubjectUrlList() {
		return subjectUrlList;
	}

	public void setSubjectUrlList(List<String> subjectUrlList) {
		this.subjectUrlList = subjectUrlList;
	}

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public List<String> getCourseContentList() {
		return courseContentList;
	}

	public void setCourseContentList(List<String> courseContentList) {
		this.courseContentList = courseContentList;
	}

	public List<String> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<String> courseList) {
		this.courseList = courseList;
	}

	@Override
	public String toString() {
		return "SpiderCourse [subjectList=" + subjectList + ", subjectUrlList=" + subjectUrlList + ", gradeName="
				+ gradeName + ", subjectName=" + subjectName + ", courseContentList=" + courseContentList
				+ ", courseList=" + courseList + "]";
	}
}
