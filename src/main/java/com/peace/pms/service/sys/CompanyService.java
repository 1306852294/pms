package com.peace.pms.service.sys;

import com.peace.pms.entity.sys.Company;
import com.peace.pms.entity.sys.Pro_exper_com;
import com.peace.pms.entity.sys.Project;

import java.util.List;

public interface CompanyService {
	//企业部分
	/**
	 *企业注册
	 * @param company 企业基本信息
	 * @return 企业的ID号
	 */
	Integer register(Company company);

	/**
	 * 检查 注册
	 * @param company
	 * @return
	 */
	Company checkRegister(Company company);
	
	/**
	 * 企业登录
	 * @param email 企业邮箱
	 * @param password 企业密码
	 * @return 成功返回true，否则返回false
	 * @throws EmailNotFoundException 未通过邮箱找到匹配的企业信息
	 * @throws PasswordNotMatchException 密码不匹配
	 */
	boolean login(String email, String password);

	/**
	 *  检查企业登陆
	 * @param company
	 * @return
	 */
	Company checkLogin(Company company);

	 /**
     * 通过企业ID查询信息
     * @param
     * @return 企业基本信息
     */
    Company findCompanyByCid();


    //项目部分
	/**
	 * 显示所有的项目
	 * @return 放项目的集合
	 */
	List<Project> showAllUndeclaredProject();

	/**
     * 通过Pid查询项目
     * @param
     * @return
     */
    List<Project> showProjectByPid();

	/**
     * 通过公司ID找到所有的项目ID
     * @return
     */
    List<Integer> findAllPidByCid(Integer cid);



    //修改部分
    /**
     * 修改密码
     * @param
     * @param newPassword 新密码
     */
    boolean changePassword(String oldPassword, String newPassword);

    /**
     * 修改基本信息
     * @param company
     */
    void changeInformation(Company company);


    //上下载
    /**
	 * 申报上载是否成功
	 * @param procom 申报基本信息
	 * @return 成功返回true
	 */
	boolean declareUpload(Pro_exper_com procom);




	//页面处理
	/**
	 * 获取下一页
	 * @param page 当前页数
	 * @return 对应显示的数据
	 */
	List<Project> nextPage(int page, int limit, List<Project> allProjects);

	/**
	 * 获取上一页
	 * @param page 当前页数
	 * @param allProjects 对应显示的数据
	 * @return
	 */
	List<Project> lastpage(int page, int limit, List<Project> allProjects);

	/**
	 * 查询 已经申报成功得项目
	 * @param
	 * @return
	 */
	List<Project> selectProsucceed();





	//许子昊

	Company getMessageById(Integer id);

	int updateDetails(Company company);

}
