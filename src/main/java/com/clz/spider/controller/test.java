package com.clz.spider.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.dao.CourseContentDao;
import com.clz.spider.dao.SubjectDao;
import com.clz.spider.entity.CourseContent;
import com.clz.spider.entity.CourseInfo;
import com.clz.spider.entity.Grade;
import com.clz.spider.entity.SpiderCourse;
import com.clz.spider.entity.SpiderCourseContent;
import com.clz.spider.entity.SpiderGrade;
import com.clz.spider.entity.SpiderSubject;
import com.clz.spider.entity.Subject;
import com.clz.spider.pipeline.CourseContentPageModelPipeline;
import com.clz.spider.pipeline.CoursePageModelPipeline;
import com.clz.spider.pipeline.SubjectPageModelPieline;
import com.clz.spider.utils.DateUtil;

import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.ConsolePageModelPipeline;
import us.codecraft.webmagic.model.OOSpider;

@RestController
public class test {

	
	@Autowired
	CourseContentDao ccd;
	
	@Autowired
	CoursePageModelPipeline coursePageModelPipeline;
	
	@Autowired
	CourseContentPageModelPipeline courseContentPageModelPipeline;
	
	@GetMapping("test")
	public List<Subject> test() {
//		OOSpider.create(Site.me().setSleepTime(1000)
//	                 , coursePageModelPipeline, SpiderCourse.class)
//	                 .addUrl("https://fudao.qq.com").run();
//		QueryWrapper<CourseContent> qw = new QueryWrapper<CourseContent>();
//		qw.eq("date", DateUtil.getDate());
//		List<CourseContent> l = ccd.selectList(qw);
//		for (CourseContent cc : l) {
//			OOSpider.create(Site.me().setSleepTime(1000)
//	                 , courseContentPageModelPipeline, SpiderCourseContent.class)
//	                 .addUrl(cc.getCourseContentUrl()).run();
//		}
		OOSpider.create(Site.me().setSleepTime(1000)
                , new ConsolePageModelPipeline(), CourseInfo.class)
                .addUrl("https://fudao.qq.com/pc/course.html?course_id=132424").run();
    	System.out.println("11111");
		return null;
	}
}
