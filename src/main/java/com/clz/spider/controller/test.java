package com.clz.spider.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.common.ResultDO;
import com.clz.spider.entity.*;
import com.clz.spider.form.DetilForm;
import com.clz.spider.form.ListForm;
import com.clz.spider.pipeline.CourseInfoPageModelPipeline;
import com.clz.spider.serivce.CourseContentService;
import com.clz.spider.serivce.CourseInfoService;
import com.clz.spider.serivce.CourseService;
import com.clz.spider.serivce.SubjectService;
import com.clz.spider.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.clz.spider.dao.CourseContentDao;
import com.clz.spider.pipeline.CourseContentPageModelPipeline;
import com.clz.spider.pipeline.CoursePageModelPipeline;

import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.ConsolePageModelPipeline;
import us.codecraft.webmagic.model.OOSpider;

@RestController
public class test {

	@Autowired
	SubjectService ss;
	
	@Autowired
	CourseContentService ccs;

	@Autowired
	CourseService cs;

	@Autowired
	CourseInfoService cis;
	
	@PostMapping("getList")
	public ResultDO getList(String date) throws ParseException {
		List<ListForm> list = new ArrayList<ListForm>();
		List<Subject> l = ss.list();
		for (Subject s : l) {
			ListForm f = new ListForm();
			f.setGrade(s.getGradeName());
			f.setSubject(s.getSubject());
			String week = DateUtil.getWeek(DateUtil.convertStringToDate(date));
			f.setCount(cis.getFilterCount(date, week, s.getSubject(), s.getGradeName()));
			list.add(f);
		}
		return new ResultDO(list, true, null);
	}

	@PostMapping("getDetil")
	public ResultDO getDetil(String date, String subject, String grade) throws ParseException {
		String week = DateUtil.getWeek(DateUtil.convertStringToDate(date));
		List<CourseInfo> list = cis.getInfo(date, week, subject, grade);
		for (CourseInfo c : list) {
			if(c.getWeek().equals("周日,周一,周二,周三,周四,周五,周六"))
				c.setWeek("每天");
		}
		return new ResultDO(list, true, null);
	}

}
