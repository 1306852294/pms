package com.peace.pms.dao.sys;

import com.peace.pms.entity.sys.Project;

import java.util.List;

public interface ProjectMapper {
    int deleteByPrimaryKey(Integer pid);



    int updateByPrimaryKey(Project record);


    /**
     *  插入一条项目
     * @param record
     * @return
     */
    int insert(Project record);

    int insertSelective(Project record);

    /**
     *  通过项目id 匹配项目信息
     *
     * @param pid
     * @return
     */
    Project selectByPrimaryKey(Integer pid);

    /**
     * 通过 管理者的Id 匹配 需要评审的项目
     * @param id
     * @return
     */
    List<Project> selectJudgeProByMid(Integer id);

    /**
     *  更新项目信息
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Project record);


    //许子昊

    //条件查找项目集合
    List<Project> findAll(List<Integer> pid);






}