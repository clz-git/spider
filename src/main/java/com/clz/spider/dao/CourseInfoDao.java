package com.clz.spider.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.clz.spider.entity.CourseInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CourseInfoDao extends BaseMapper<CourseInfo> {

    @Select("SELECT COUNT(1) FROM course_info ci LEFT JOIN course c ON ci.course_id = c.course_id WHERE ci.start_date <= #{date} AND ci.end_date >= #{date} AND ci.week LIKE '%${week}%' AND c.subject = #{subject} AND c.grade = #{grade}")
    public int getFilterCount(String date, String week, String subject, String grade);

    @Select("SELECT * FROM course_info ci LEFT JOIN course c ON ci.course_id = c.course_id WHERE ci.start_date <= #{date} AND ci.end_date >= #{date} AND ci.week LIKE '%${week}%' AND c.subject = #{subject} AND c.grade = #{grade}")
    public List<CourseInfo> getInfo(String date, String week, String subject, String grade);
}
