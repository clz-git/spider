package com.clz.spider.entity;

import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@TableName("course_info")
@TargetUrl("https://fudao.qq.com/pc/course.html\\?course_id=\\w+")
public class CourseInfo implements AfterExtractor{
	
	@TableId(type = IdType.AUTO)
	private Long id;

	private String courseId;
	
	@ExtractBy("//span[@class='tt-word']/text()")
	private String title;

	@TableField(exist=false)
	@ExtractBy("//div[@class='teacherContent']/div[@class='caption']/p/text()" )
	private List<String> teacherList;
	
	private String teacher;


	@ExtractBy("//span[@class='tt-info-item tt-price-free' or @class='tt-info-item tt-price-integer']/text()")
	private String price;
	
	private Date date;

	

	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getCourseId() {
		return courseId;
	}



	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public List<String> getTeacherList() {
		return teacherList;
	}



	public void setTeacherList(List<String> teacherList) {
		this.teacherList = teacherList;
	}



	public String getTeacher() {
		return teacher;
	}



	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	@Override
	public String toString() {
		return "CourseInfo [id=" + id + ", courseId=" + courseId + ", title=" + title + ", teacherList=" + teacherList
				+ ", teacher=" + teacher + ", price=" + price + ", date=" + date + "]";
	}



	@Override
	public void afterProcess(Page page) {
		// TODO Auto-generated method stub
		String url = page.getUrl().toString();
		String[] s = url.split("course_id=");
		this.courseId = s[1];
		this.date = new Date();
		this.teacher = this.teacherList.get(0);
		for (int i = 1; i < (this.teacherList.size()-1); i++) {
			this.teacher += ","+this.teacherList.get(i);
		}
		if(this.teacherList.size() > 1) {
			this.teacher += this.teacherList.get(this.teacherList.size());
		}
	}
	
}
