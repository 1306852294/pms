package com.peace.pms.dao.sys;

import com.peace.pms.entity.sys.Pro_man;

import java.util.List;

public interface Pro_manMapper {

    int insertSelective(Pro_man record);

    /**
     *  插入一条 项目-管理者对应的数据
     * @param record
     * @return
     */
    int insert(Pro_man record);

    /**
     *  根据管理者的id 来查找匹配的项目 ID
     * @return
     */
    List<Pro_man> selectByMid(Integer Mid);

}