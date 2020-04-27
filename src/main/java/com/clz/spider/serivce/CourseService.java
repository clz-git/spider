package com.clz.spider.serivce;

import com.baomidou.mybatisplus.extension.service.IService;
import com.clz.spider.entity.Course;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CourseService extends IService<Course> {
    public List<Course> getFilterList();
}
