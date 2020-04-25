package com.clz.spider.pipeline;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.dao.SubjectDao;
import com.clz.spider.entity.SpiderSubject;
import com.clz.spider.entity.Subject;
import com.clz.spider.utils.DateUtil;

import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Component
public class SubjectPageModelPieline implements PageModelPipeline<SpiderSubject> {

	@Autowired
	SubjectDao dao;
	
	@Override
	public void process(SpiderSubject s, Task task) {
		// TODO Auto-generated method stub
		List<String> sSubjectList = s.getSubject();
		List<String> sSubjectUrlList = s.getSubjectUrl();
		List<Subject> list = new ArrayList<Subject>();
		for (int i = 1; i < sSubjectList.size(); i++) {
			Subject subject = new Subject();
			subject.setSubject(sSubjectList.get(i));
			subject.setSubjectUrl("https:"+sSubjectUrlList.get(i));
			subject.setGradeName(s.getGradeName());
			subject.setDate(new Date());
			QueryWrapper<Subject> qw = new QueryWrapper<Subject>();
			qw.eq("subject", subject.getSubject());
			qw.eq("subject_url", subject.getSubjectUrl());
			qw.eq("date", DateUtil.getDate());
			qw.eq("grade_name", subject.getGradeName());
			List<Subject> l = dao.selectList(qw);
			if(l == null || l.size() == 0) {
				dao.insert(subject);
			}
		}
	}
	
	public static void main(String[] arg) {
		System.out.println(new Date());
	}

}
