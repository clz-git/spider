package com.clz.spider.serivce.imp;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.clz.spider.dao.SubjectDao;
import com.clz.spider.entity.Subject;
import com.clz.spider.serivce.SubjectService;
import org.springframework.stereotype.Component;

@Component
public class SubjectServiceImp extends ServiceImpl<SubjectDao, Subject> implements SubjectService {
}
