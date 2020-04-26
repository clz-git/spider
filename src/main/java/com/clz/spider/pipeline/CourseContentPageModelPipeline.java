package com.clz.spider.pipeline;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.dao.CourseDao;
import com.clz.spider.dao.SubjectDao;
import com.clz.spider.entity.Course;
import com.clz.spider.entity.SpiderCourseContent;
import com.clz.spider.entity.Subject;
import com.clz.spider.utils.DateUtil;

import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Component
public class CourseContentPageModelPipeline implements PageModelPipeline<SpiderCourseContent>{

	@Autowired
	SubjectDao dao;
	
	@Autowired
	CourseDao cd;
	
	@Override
	public void process(SpiderCourseContent s, Task task) {
		// TODO Auto-generated method stub
		QueryWrapper<Subject> qw = new QueryWrapper<Subject>();
		qw.like("subject_url", s.getSubjectUrl().split("pc/discover")[1]);
		qw.eq("date", DateUtil.getDate());
		List<Subject> l = dao.selectList(qw);
		if(l != null && l.size() != 0) {
			Subject subject = l.get(0);
			List<String> list = s.getCourseList();
			for (int i = 0; i < list.size(); i++) {
				String cid = list.get(i).split("course_id=")[1];
				Course c = new Course();
				c.setGrade(subject.getGradeName());
				c.setCourse_url(list.get(i));
				c.setCourse_id(cid);
				c.setDate(new Date());
				c.setSubject(subject.getSubject());
				QueryWrapper<Course> cqw = new QueryWrapper<Course>();
				cqw.eq("date", DateUtil.getDate());
				cqw.eq("grade", c.getGrade());
				cqw.eq("subject", c.getSubject());
				cqw.eq("course_id", c.getCourse_id());
				List<Course> ll = cd.selectList(cqw);
				if(ll == null || ll.size() == 0) {
					cd.insert(c);
				}
			}
			
			
		}
	}

}
