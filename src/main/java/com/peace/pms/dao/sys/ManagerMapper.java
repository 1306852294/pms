package com.peace.pms.dao.sys;

import com.peace.pms.entity.sys.Manager;
import com.peace.pms.entity.sys.Pro_exper_com;


import java.util.List;

public interface ManagerMapper {
    int deleteByPrimaryKey(Integer mid);



    int insertSelective(Manager record);

    int updateByPrimaryKey(Manager record);


    /**
     * 通过 Email 来匹配  Manager的信息
     * @param Email
     * @return
     */
    Manager selectByEmail(String Email);

    /**
     * 通过  id 来匹配  Manager的信息
     * @param mid
     * @return
     */
    Manager selectByPrimaryKey(Integer mid);

    /**
     *  插入一条 Manager的信息
     * @param record
     * @return
     */
    int insert(Manager record);

    /**
     *   按 主要关键字选择更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Manager record);





}