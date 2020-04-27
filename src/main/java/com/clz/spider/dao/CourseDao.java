package com.clz.spider.dao;

import org.apache.ibatis.annotations.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.clz.spider.entity.Course;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CourseDao extends BaseMapper<Course> {

    @Select("SELECT * FROM course WHERE course_id NOT IN (SELECT course_id FROM course_info)")
    public List<Course> getFilterList();
}
