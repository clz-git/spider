package com.clz.spider.serivce;

import com.baomidou.mybatisplus.extension.service.IService;
import com.clz.spider.dao.CourseInfoDao;
import com.clz.spider.entity.CourseInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CourseInfoService extends IService<CourseInfo> {

    public int getFilterCount(String dates, String week, String subject, String grade);

    public List<CourseInfo> getInfo(String date, String week, String subject, String grade);

}
