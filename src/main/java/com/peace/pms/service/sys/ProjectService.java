package com.peace.pms.service.sys;

import com.peace.pms.entity.sys.Project;

public interface ProjectService {


    /**
     *   新建的一个项目  插入一条项目信息 返回新数据的 id
     * @param project
     * @return
     */
    Integer insert(Project project);


    /**
     * 通过项目id 匹配项目信息
     */
    Project selectByPid(Integer Pid);

    /**
     * 更新项目信息
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Project record);




    //许子昊
    Project findById(Integer pid);

}
