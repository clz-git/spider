package com.clz.spider.dao;

import org.apache.ibatis.annotations.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.clz.spider.entity.Course;

@Mapper
public interface CourseDao extends BaseMapper<Course> {

}
