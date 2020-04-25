package com.clz.spider.pipeline;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.dao.GradeDao;
import com.clz.spider.entity.Grade;
import com.clz.spider.entity.SpiderGrade;
import com.clz.spider.utils.DateUtil;

import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

@Component
public class GradePageModelPipeline implements PageModelPipeline<SpiderGrade> {

	@Autowired
	private GradeDao dao;
	
	@Override
	public void process(SpiderGrade g, Task task) {
		// TODO Auto-generated method stub
		List<String> sGradeList = g.getGrade();
		List<String> sGradeUrlList = g.getGradeUrl();
		List<Grade> gradeList = new ArrayList<Grade>();
		for (int i = 0; i < sGradeList.size(); i++) {
			Grade grade = new Grade();
			grade.setGrade(sGradeList.get(i));
			grade.setGradeUrl("https:"+sGradeUrlList.get(i));
			grade.setData(new Date());
			gradeList.add(grade);
			QueryWrapper<Grade> qw = new QueryWrapper<Grade>();
			qw.eq("grade_url", grade.getGradeUrl());
			qw.eq("data", DateUtil.getDate());
			List<Grade> l = dao.selectList(qw);
			if(l == null || l.size() == 0) {
				dao.insert(grade);
			}
		}
	}

}
