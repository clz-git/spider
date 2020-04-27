package com.clz.spider.scheduled;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.clz.spider.entity.*;
import com.clz.spider.pipeline.CourseContentPageModelPipeline;
import com.clz.spider.pipeline.CourseInfoPageModelPipeline;
import com.clz.spider.pipeline.CoursePageModelPipeline;
import com.clz.spider.serivce.CourseContentService;
import com.clz.spider.serivce.CourseService;
import com.clz.spider.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import us.codecraft.webmagic.Site;
import us.codecraft.webmagic.model.OOSpider;

import java.util.List;

@Component
public class SpiderScheduledTask {

    @Autowired
    CourseContentService ccs;

    @Autowired
    CourseService cs;

    @Autowired
    CoursePageModelPipeline coursePageModelPipeline;

    @Autowired
    CourseContentPageModelPipeline courseContentPageModelPipeline;

    @Autowired
    CourseInfoPageModelPipeline courseInfoPageModelPipeline;


    @Scheduled(cron = "0 0 1,12,22 * * ?")
    public void spider(){
        OOSpider.create(Site.me().setSleepTime(1000)
                , coursePageModelPipeline, SpiderCourse.class)
                .addUrl("https://fudao.qq.com").run();
        QueryWrapper<CourseContent> qw = new QueryWrapper<CourseContent>();
        qw.eq("date", DateUtil.getDate());
        List<CourseContent> l = ccs.list();
        for (CourseContent cc : l) {
            OOSpider.create(Site.me().setSleepTime(1000)
                    , courseContentPageModelPipeline, SpiderCourseContent.class)
                    .addUrl(cc.getCourseContentUrl()).run();
        }
        List<Course> list = cs.getFilterList();
        for (Course course : list) {
            OOSpider.create(Site.me().setSleepTime(1000)
                    , courseInfoPageModelPipeline, CourseInfo.class)
                    .addUrl(course.getCourseUrl()).run();
        }
    }
}
