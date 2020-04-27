package com.clz.spider.pipeline;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.dao.CourseContentDao;
import com.clz.spider.dao.CourseDao;
import com.clz.spider.dao.SubjectDao;
import com.clz.spider.entity.Course;
import com.clz.spider.entity.CourseContent;
import com.clz.spider.entity.SpiderCourse;
import com.clz.spider.entity.Subject;
import com.clz.spider.utils.DateUtil;

import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Component
public class CoursePageModelPipeline implements PageModelPipeline<SpiderCourse> {

	@Autowired
	SubjectDao dao;
	
	@Autowired
	CourseContentDao ccd;
	
	@Autowired
	CourseDao cd;
	
	@Override
	public void process(SpiderCourse s, Task task) {
		// TODO Auto-generated method stub
		List<String> sSubjectList = s.getSubjectList();
		List<String> sSubjectUrlList = s.getSubjectUrlList();
		for (int i = 1; i < sSubjectList.size(); i++) {
			Subject subject = new Subject();
			subject.setSubject(sSubjectList.get(i));
			subject.setSubjectUrl("https:"+sSubjectUrlList.get(i));
			subject.setGradeName(s.getGradeName());
			subject.setDate(new Date());
			QueryWrapper<Subject> qw = new QueryWrapper<Subject>();
			qw.eq("subject", subject.getSubject());
			qw.eq("subject_url", subject.getSubjectUrl());
			qw.eq("grade_name", subject.getGradeName());
			List<Subject> l = dao.selectList(qw);
			if(l == null || l.size() == 0) {
				dao.insert(subject);
			}
		}
		
		List<String> courseContentList = s.getCourseContentList();
		for (int i = 0; i < courseContentList.size(); i++) {
			String rightUrl = null;
			if(courseContentList.get(i).indexOf("/subject_system") == -1) {
				String split[] = courseContentList.get(i).split("subject_system");
				rightUrl = split[0]+"/subject_system"+split[1];
			}
			CourseContent cc = new CourseContent();
			cc.setDate(new Date());
			cc.setCourseContentUrl("https:"+(rightUrl == null ? courseContentList.get(i) : rightUrl));
			cc.setGrade(s.getGradeName());
			cc.setSubject(s.getSubjectName());
			QueryWrapper<CourseContent> qw = new QueryWrapper<CourseContent>();
			qw.eq("grade", cc.getGrade());
			qw.eq("subject", cc.getSubject());
			qw.eq("course_content_url", cc.getCourseContentUrl());
			List<CourseContent> l = ccd.selectList(qw);
			if(l == null || l.size() == 0) {
				ccd.insert(cc);
			}
		}
		
		List<String> courseList = s.getCourseList();
		for (int i = 0; i < courseList.size(); i++) {
			Course c = new Course();
			String cid = courseList.get(i).split("course_id=")[1];
			c.setCourseId(cid);
			c.setCourseUrl("https://fudao.qq.com/"+courseList.get(i));
			c.setDate(new Date());
			c.setGrade(s.getGradeName());	
			c.setSubject(s.getSubjectName());
			QueryWrapper<Course> qw = new QueryWrapper<Course>();
			qw.eq("grade", c.getGrade());
			qw.eq("subject", c.getSubject());
			qw.eq("course_id", c.getCourseId());
			List<Course> l = cd.selectList(qw);
			if(l == null || l.size() == 0) {
				cd.insert(c);
			}
		}
	}

}
