package com.clz.spider.serivce.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.clz.spider.dao.CourseContentDao;
import com.clz.spider.entity.CourseContent;
import com.clz.spider.serivce.CourseContentService;
import org.springframework.stereotype.Component;

@Component
public class CourseContentServiceImp extends ServiceImpl<CourseContentDao, CourseContent> implements CourseContentService {

}
