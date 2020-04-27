package com.clz.spider.serivce.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.clz.spider.dao.CourseDao;
import com.clz.spider.entity.Course;
import com.clz.spider.serivce.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CourseServiceImp extends ServiceImpl<CourseDao, Course> implements CourseService {

    @Autowired
    CourseDao dao;

    @Override
    public List<Course> getFilterList() {
        return dao.getFilterList();
    }
}
