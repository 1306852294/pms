package com.peace.pms.dao.sys;

import com.peace.pms.entity.sys.Company;
import com.peace.pms.entity.sys.Pro_exper_com;
import com.peace.pms.entity.sys.Project;

import java.util.List;

public interface CompanyMapper {
    int deleteByPrimaryKey(Integer cid);

    int insertSelective(Company record);



    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);


    /**
     * 企业注册
     * @param company 企业基本信息
     */
    void insert(Company company);

    /**
     * 通过企业邮箱查找对应企业信息
     * @param email 企业邮箱
     * @return 企业基本信息
     */
    Company findCompanyByEmail(String email);

    /**
     * 查询项目
     * @return 项目集合
     */
    List<Project> findAllProject();

    /**
     * 通过Pid查询项目
     * @param pid
     * @return
     */
    Project findProjectByPid(Integer pid);

    /**
     * 通过企业ID查询信息
     * @param cid
     * @return 企业基本信息
     */
    Company findCompanyByCid(Integer cid);

    /**
     * 上传申报文件成功，插入信息
     * @param procom 企业-项目表基本信息
     * @return 成功返回1，否则返回0
     */
    Integer upload(Pro_exper_com procom);

    /**
     * 通过公司ID找到所有的项目ID
     * @return
     */
    List<Integer> findAllPidByCid(Integer cid);

    /**
     * 修改密码
     * @param
     * @param
     */
    void changePassword(Company company);

    /**
     * 修改基本信息
     * @param company
     */
    void changeInformation(Company company);


    /**
     * 查找已经 申报成功得项目
     */
    List<Project> selectProBycid(Integer cid);



    //许子昊

    /**
     * 通过id 来匹配公司信息
     * @param cid
     * @return
     */
    Company selectByPrimaryKey(Integer cid);

    //修改详细信息
    int updateDetail(Company record);



}