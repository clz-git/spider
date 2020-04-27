package com.clz.spider.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import com.clz.spider.common.ResultDO;
import com.clz.spider.entity.*;
import com.clz.spider.form.InputForm;
import com.clz.spider.form.ListForm;
import com.clz.spider.serivce.CourseContentService;
import com.clz.spider.serivce.CourseInfoService;
import com.clz.spider.serivce.CourseService;
import com.clz.spider.serivce.SubjectService;
import com.clz.spider.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:8080", maxAge = 3600)
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
	public ResultDO getList(@RequestBody InputForm i) throws ParseException {
		System.out.println(i.getDate());
		List<ListForm> list = new ArrayList<ListForm>();
		List<Subject> l = ss.list();
		for (Subject s : l) {
			ListForm f = new ListForm();
			f.setGrade(s.getGradeName());
			f.setSubject(s.getSubject());
			String week = DateUtil.getWeek(i.getDate());
			f.setCount(cis.getFilterCount(DateUtil.getDate(i.getDate()), week, s.getSubject(), s.getGradeName()));
			list.add(f);
		}
		return new ResultDO(list, true, null);
	}

	@PostMapping("getDetil")
	public ResultDO getDetil(@RequestBody InputForm i) throws ParseException {
		String week = DateUtil.getWeek(i.getDate());
		List<CourseInfo> list = cis.getInfo(DateUtil.getDate(i.getDate()), week, i.getSubject(), i.getGrade());
		for (CourseInfo c : list) {
			if(c.getWeek().equals("周日,周一,周二,周三,周四,周五,周六"))
				c.setWeek("每天");
		}
		return new ResultDO(list, true, null);
	}

}
