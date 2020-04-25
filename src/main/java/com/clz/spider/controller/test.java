package com.clz.spider.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.dao.GradeDao;
import com.clz.spider.dao.SubjectDao;
import com.clz.spider.entity.Grade;
import com.clz.spider.entity.SpiderGrade;
import com.clz.spider.entity.SpiderSubject;
import com.clz.spider.entity.Subject;
import com.clz.spider.pipeline.GradePageModelPipeline;
import com.clz.spider.pipeline.SubjectPageModelPieline;
import com.clz.spider.utils.DateUtil;

import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.ConsolePageModelPipeline;
import us.codecraft.webmagic.model.OOSpider;

@RestController
public class test {

	
	@Autowired
	private GradeDao dao;
	
	@Autowired
	private SubjectDao sdao;
	
	@Autowired
	GradePageModelPipeline gradePageModelPipeline;
	
	@Autowired
	SubjectPageModelPieline subjectPageModelPieline;
	
	@GetMapping("test")
	public List<Subject> test() {
		OOSpider.create(Site.me().setSleepTime(1000)
                 , gradePageModelPipeline, SpiderGrade.class)
                 .addUrl("https://fudao.qq.com/").run();
		QueryWrapper<Grade> qw = new QueryWrapper<Grade>();
		qw.eq("data", DateUtil.getDate());
		List<Grade> l = dao.selectList(qw);
			OOSpider.create(Site.me().setSleepTime(1000)
	                 , subjectPageModelPieline, SpiderSubject.class)
	                 .addUrl(l.get(0).getGradeUrl()).run();
    	System.out.println("11111");
		return sdao.selectList(null);
	}
}
