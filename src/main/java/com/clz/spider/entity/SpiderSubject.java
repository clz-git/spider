package com.clz.spider.entity;

import java.util.List;

import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@TargetUrl("https://fudao.qq.com/\\w+")
public class SpiderSubject {

	@ExtractBy("//li[@class='subject-item']/a/text()")
	private List<String> grade;
	
	@ExtractBy("//li[@class='subject-item']/a/@href")
	private List<String> gradeUrl;

	public List<String> getGrade() {
		return grade;
	}

	public void setGrade(List<String> grade) {
		this.grade = grade;
	}

	public List<String> getGradeUrl() {
		return gradeUrl;
	}

	public void setGradeUrl(List<String> gradeUrl) {
		this.gradeUrl = gradeUrl;
	}

	@Override
	public String toString() {
		return "SpiderSubject [grade=" + grade + ", gradeUrl=" + gradeUrl + "]";
	}
}
