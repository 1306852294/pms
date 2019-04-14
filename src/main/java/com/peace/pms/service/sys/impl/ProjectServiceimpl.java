package com.peace.pms.service.sys.impl;

import com.peace.pms.dao.sys.ProjectMapper;
import com.peace.pms.entity.sys.Project;
import com.peace.pms.service.sys.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceimpl implements ProjectService {

    @Autowired
    ProjectMapper projectMapper;

    @Override
    public Integer insert(Project project) {
      projectMapper.insertSelective(project);
      return project.getPid();
    }

    @Override
    public Project selectByPid(Integer Pid) {
        return projectMapper.selectByPrimaryKey(Pid);
    }

    @Override
    public int updateByPrimaryKeySelective(Project record) {
        projectMapper.updateByPrimaryKeySelective(record);
        return 0;
    }

    //

    @Override
    public Project findById(Integer pid) {
        return projectMapper.selectByPrimaryKey(pid);
    }

}
