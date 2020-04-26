package com.clz.spider.entity;

import java.util.List;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@TargetUrl("https://fudao.qq.com/pc/discover/grade/\\w+/subject/\\w+/subject_system/\\w+")
public class SpiderCourseContent implements AfterExtractor {

	@ExtractBy("//li[@class='course-card']/a/@href")
	private List<String> courseList;
	
	private String subjectUrl;

	public List<String> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<String> courseList) {
		this.courseList = courseList;
	}

	public String getSubjectUrl() {
		return subjectUrl;
	}

	public void setSubjectUrl(String subjectUrl) {
		this.subjectUrl = subjectUrl;
	}

	@Override
	public String toString() {
		return "SpiderCourseContent [courseList=" + courseList + ", subjectUrl=" + subjectUrl + "]";
	}

	@Override
	public void afterProcess(Page page) {
		// TODO Auto-generated method stub
		String url = page.getUrl().toString();
		String[] s = url.split("/subject_system");
		this.subjectUrl = s[0];
	}
}
