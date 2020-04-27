package com.clz.spider.pipeline;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.dao.CourseInfoDao;
import com.clz.spider.entity.Course;
import com.clz.spider.entity.CourseInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Task;
import us.codecraft.webmagic.pipeline.PageModelPipeline;

import java.util.List;

@Component
public class CourseInfoPageModelPipeline implements PageModelPipeline<CourseInfo> {

    @Autowired
    CourseInfoDao d;

    @Override
    public void process(CourseInfo c, Task task) {
        QueryWrapper<CourseInfo> cqw = new QueryWrapper<CourseInfo>();
        cqw.eq("course_id", c.getCourseId());
        List<CourseInfo> l = d.selectList(cqw);
        if(l == null || l.size() == 0){
            d.insert(c);
        }
    }
}
