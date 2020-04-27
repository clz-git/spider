package com.clz.spider.entity;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import com.clz.spider.utils.DateUtil;
import us.codecraft.webmagic.Page;
import us.codecraft.webmagic.model.AfterExtractor;
import us.codecraft.webmagic.model.annotation.ExtractBy;
import us.codecraft.webmagic.model.annotation.TargetUrl;

@TableName("course_info")
@TargetUrl("https://fudao.qq.com//pc/course.html\\?course_id=\\w+")
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

	@TableField(exist=false)
	@ExtractBy("//p[@id='ttTime']/text()")
	private String tDate;

	private Date startDate;

	private Date endDate;

	private String week;


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

	public String gettDate() {
		return tDate;
	}

	public void settDate(String tDate) {
		this.tDate = tDate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	@Override
	public String toString() {
		return "CourseInfo{" +
				"id=" + id +
				", courseId='" + courseId + '\'' +
				", title='" + title + '\'' +
				", teacherList=" + teacherList +
				", teacher='" + teacher + '\'' +
				", price='" + price + '\'' +
				", date=" + date +
				", tDate='" + tDate + '\'' +
				", startDate=" + startDate +
				", endDate=" + endDate +
				", week='" + week + '\'' +
				'}';
	}

	@Override
	public void afterProcess(Page page) {
		// TODO Auto-generated method stub
		String url = page.getUrl().toString();
		String[] s = url.split("course_id=");
		this.courseId = s[1];
		this.date = new Date();
        System.out.println("====="+toString());
		this.teacher = this.teacherList.get(0);
		for (int i = 1; i < (this.teacherList.size()-1); i++) {
			this.teacher += ","+this.teacherList.get(i);
		}
		if(this.teacherList.size() > 1) {
			this.teacher += "," + this.teacherList.get(this.teacherList.size()-1);
		}

		String[] tDate = this.tDate.split(" ");
		String[] d = tDate[0].split("-");
		System.out.println("1=="+this.tDate);
        System.out.println("2=="+tDate[0]);
        System.out.println("3=="+d.length);
		try {
		    if(d[0].indexOf("年") != -1){
                this.startDate = DateUtil.convertStringToDate(d[0].replace("年","-").replace("月","-").replace("日",""));
            }else {
                this.startDate = DateUtil.convertStringToDate(DateUtil.getYear()+"-"
                        +d[0].replace("月","-").replace("日",""));
            }
		    if(d.length > 1){
                if(d[1].indexOf("年") != -1){
                    this.endDate = DateUtil.convertStringToDate(d[1].replace("年","-").replace("月","-").replace("日",""));
                }else {
                    this.endDate = DateUtil.convertStringToDate(DateUtil.getYear()+"-"
                            +d[1].replace("月","-").replace("日",""));
                }
            }else {
                this.endDate = this.startDate;
            }


		} catch (ParseException e) {
			e.printStackTrace();
		}
		if(tDate[1].equals("每天"))
			this.week ="周日,周一,周二,周三,周四,周五,周六";
		else
			this.week = tDate[1];
	}
	
}
