package com.clz.spider.serivce.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.clz.spider.dao.CourseInfoDao;
import com.clz.spider.entity.CourseInfo;
import com.clz.spider.serivce.CourseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CourseInfoServiceImp extends ServiceImpl<CourseInfoDao, CourseInfo> implements CourseInfoService {

    @Autowired
    CourseInfoDao dao;

    @Override
    public int getFilterCount(String date, String week, String subject, String grade) {
        return dao.getFilterCount(date, week, subject, grade);
    }

    @Override
    public List<CourseInfo> getInfo(String date, String week, String subject, String grade) {
        return dao.getInfo(date, week, subject, grade);
    }
}
