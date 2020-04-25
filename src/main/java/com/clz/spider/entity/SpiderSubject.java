package com.clz.spider.entity;

import java.util.List;

import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@TargetUrl("https://fudao.qq.com/grade/\\w+")
public class SpiderSubject {

	@ExtractBy("//li[@class='subject-item']/a/text()")
	private List<String> subject;
	
	@ExtractBy("//li[@class='subject-item']/a/@href")
	private List<String> subjectUrl;
	
	@ExtractBy("//div[@class='grade-filter']/span/text()")
	private String gradeName;

	public List<String> getSubject() {
		return subject;
	}

	public void setSubject(List<String> subject) {
		this.subject = subject;
	}

	public List<String> getSubjectUrl() {
		return subjectUrl;
	}

	public void setSubjectUrl(List<String> subjectUrl) {
		this.subjectUrl = subjectUrl;
	}

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	@Override
	public String toString() {
		return "SpiderSubject [subject=" + subject + ", subjectUrl=" + subjectUrl + ", gradeName=" + gradeName + "]";
	}
	


}
