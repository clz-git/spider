package com.clz.spider.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.clz.spider.dao.GradeDao;
import com.clz.spider.entity.Grade;
import com.clz.spider.entity.SpiderGrade;
import com.clz.spider.pipeline.GradePageModelPipeline;

import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.OOSpider;

@RestController
public class test {

	
	@Autowired
	private GradeDao dao;
	
	@Autowired
	GradePageModelPipeline gradePageModelPipeline;
	
	@GetMapping("test")
	public List<Grade> test() {
		 OOSpider.create(Site.me().setSleepTime(1000)
                 , gradePageModelPipeline, SpiderGrade.class)
                 .addUrl("https://fudao.qq.com/").run();
    	 System.out.println("11111");
		return dao.selectList(null);
	}
}
