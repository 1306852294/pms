package com.peace.pms.service.sys;

import com.peace.pms.entity.sys.Expert;

import java.util.List;

public interface ExpertService {

    /**
     *   根据 省，市，县，学历，研究方向，来匹配专家信息
     * @param
     * @param
     * @param
     * @param
     * @return
     */
    List<Expert> selectjudge(Expert expert,int n);


    Expert getMessageById(Integer id);

    Expert getMessageByEmail(String email);

    int updateDetails(Expert expert);

    /**
     * 检查登录信息
     * @param expert
     * @return
     */
    Expert checkLogin(Expert expert);


    /**
     *  检查注册
     * @param expert
     * @return
     */
    Expert checkRegister(Expert expert);

    /**
     *  插入一条专家信息，返回 Id
     * @param expert
     * @return
     */
    Integer insert(Expert expert);



}
