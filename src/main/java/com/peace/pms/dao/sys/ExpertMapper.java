package com.peace.pms.dao.sys;

import com.peace.pms.entity.sys.Expert;
import com.peace.pms.entity.sys.Pro_exper_com;
import com.peace.pms.entity.sys.Pro_file;


import java.util.List;

public interface ExpertMapper {
    int deleteByPrimaryKey(Integer eid);

    /**
     * 插入专家信息
     * @param record
     * @return
     */
    int insert(Expert record);

    int insertSelective(Expert record);

    /**
     * 通过
     * @param eid
     * @return
     */
    Expert selectByPrimaryKey(Integer eid);



    int updateByPrimaryKey(Expert record);

    /**
     * 更新专家信息
     * @param record
     * @return
     */

    int updateByPrimaryKeySelective(Expert record);


    /**
     *   根据 省，市，县，学历，研究方向，来匹配专家信息

     * @return
     */
    List<Expert> selectjudge(Expert expert);

    //通过邮箱寻找用户
    Expert selectByEmail(String email);




}