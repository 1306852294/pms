package com.peace.pms.service.sys;

import com.peace.pms.entity.sys.*;

import java.util.List;

public interface ManagerService {
    /**
     *  通过 Id 匹配管理者信息， 若没有匹配信息，返回 null
     * @param id
     * @return
     */
    Manager findManagerById(Integer id);
    /**
     *  通过  邮箱匹配管理者信息， 若没有匹配信息，返回 null
     * @param Email
     * @return
     */
    Manager findManagerByEmail(String Email);

    /**
     *         检查登录,成功则返回完整信息,失败：用户名，或者密码错误，会抛错误信息
     * @param manager
     * @return
     */
    Manager checkLogin(Manager manager);

    /**
     *    检查注册，成功则返回完整的信息，是失败：用户已被注册，密码确认错误
     * @param manager
     *
     * @return
     */
    Manager checkRegister(Manager manager);

    /**
     *   插入一条管理者数据 ，返回新数据的id
     * @param manager
     * @return
     */
    Integer insert(Manager manager);

    /**
     *  插入 管理者和项目的之间关系的数据
     * @param pro_man
     * @return
     */
    Integer insertPro_man(Pro_man pro_man);


    /**
     *  通过 管理者ID来匹配所有的项目 id
     * @param Mid
     * @return
     */
    List<Pro_man>  selectproIdByMid(Integer Mid);

    /**
     *   通过所有的 项目id 匹配所有的项目信息
     * @param
     * @return
     */
    List<Project> selectAllproByProid(List<Pro_man> pro_manList);

    /**
     *  通过管理者 id 和 发布权限 来查找他所有的项目信息
     * @param Mid
     * @return
     */
    List<Project> selectAllPro(Integer Mid,String power []);


    /**
     *  通过 管理者的Id 匹配 需要评审的项目
     * @param id
     * @return
     */
    List<Project> selectJudgeProByMid(Integer id);



    /**
     *  修改 管理者信息
     * @param manager
     * @return
     */
    int updateByPrimaryKeySelective (Manager manager);

    /**
     *  检查密码
     *
     * @param pass1
     * @param pass2
     * @return
     */
    int checkpass(Integer mid,String pass1,String pass2);


    /**
     *  绑定 pid-eid 项目和专家
     */
    int addp_e(List<Pro_exper_com> list);



    void deletePECBypid(Integer pid);

    /**
     *  通过 cid 来匹配 企业信息
     * @param id
     * @return
     */
    Company selectComByid(Integer cid);



    List<Pro_exper_com> selectPECBypid(Integer pid);

}
