package com.peace.pms.service.sys.impl;

import com.peace.pms.dao.sys.*;
import com.peace.pms.entity.sys.*;
import com.peace.pms.service.sys.ManagerService;
import com.peace.pms.util.LoginException;
import com.peace.pms.util.RegisterException;
import com.peace.pms.util.ChangeException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ManagerServiceimpl  implements ManagerService {


    @Autowired
    private ManagerMapper managerMapper;

    @Autowired
    private Pro_manMapper pro_manMapper;

    @Autowired
    private ProjectMapper projectMapper;

    @Autowired
    private Pro_Exper_ComMapper pro_exper_comMapper;

    @Autowired
    private CompanyMapper companyMapper;

    @Override
    public Manager findManagerById(Integer id) {
        return managerMapper.selectByPrimaryKey(1);
    }

    @Override
    public Manager findManagerByEmail(String Email) {
        return managerMapper.selectByEmail(Email);
    }

    @Override
    public Manager checkLogin(Manager manager) {
        Manager manager1=managerMapper.selectByEmail(manager.getMemail());

        if(manager1==null){
            throw  new LoginException("用户名不存在");
        }
//        System.out.println(manager);
//        System.out.println(manager1);
        if(!manager1.getPassword().equals(manager.getPassword())){
            throw  new LoginException("密码错误");
        }
        return manager1;
    }

    @Override
    public Manager checkRegister(Manager manager) {
        Manager man_datebase=managerMapper.selectByEmail(manager.getMemail());

        if(man_datebase!=null){
            throw new RegisterException("用户已存在");
        }
        return manager;
    }

    @Override
    public Integer insert(Manager manager) {
        managerMapper.insert(manager);
        return managerMapper.selectByEmail(manager.getMemail()).getMid();
    }


    @Override
    public Integer insertPro_man(Pro_man pro_man) {
        pro_manMapper.insert(pro_man);
        return null;
    }

    @Override
    public List<Pro_man> selectproIdByMid(Integer Mid) {
        return  pro_manMapper.selectByMid(Mid);
    }

    @Override
    public List<Project> selectAllproByProid(List<Pro_man> pro_manList) {
        List<Project> prolist =new ArrayList<Project>();
        Project project=null;
        for(Pro_man pro_man:pro_manList){
            project=projectMapper.selectByPrimaryKey(pro_man.getPid());
            prolist.add(project);
        }
        return prolist;
    }

    @Override
    public List<Project> selectAllPro(Integer Mid,String  power []) {
        List <Project> projectList =selectAllproByProid(selectproIdByMid(Mid));
        List <Project> list =new ArrayList<Project>();
        for(Project p:projectList){
           for(String po:power){
               if(po.equals(p.getRelesePower())){
                   list.add(p);
               }
           }
        }
        return list;
    }

    @Override
    public int updateByPrimaryKeySelective(Manager manager) {
        managerMapper.updateByPrimaryKeySelective(manager);
        return 0;
    }

    @Override
    public int checkpass(Integer mid,String pass1, String pass2) {

        if(pass1.equals("")||pass2.equals("")){
            throw  new ChangeException("密码不能为空");
        }
        if(!pass1.equals(pass2)){
            throw new ChangeException("俩次密码不一致");
        }
        Manager manager=managerMapper.selectByPrimaryKey(mid);
        manager.setPassword(pass1);
        managerMapper.updateByPrimaryKeySelective(manager);
        return 1;
    }

    @Override
    public List<Project> selectJudgeProByMid(Integer id) {
        return projectMapper.selectJudgeProByMid(id);
    }

    @Override
    public int addp_e(List<Pro_exper_com> list) {

        //在添加专家之前，先保存p_e_c的信息，然后删除 p_e_c，


        for(Pro_exper_com p_d:list){
            pro_exper_comMapper.insertSelective(p_d);
        }
        return 0;
    }

    @Override
    public void deletePECBypid(Integer pid) {
        //在添加专家之前，先保存p_e_c的信息，然后删除 p_e_c，
        pro_exper_comMapper.deleteByPid(pid);
    }

    @Override
    public List<Pro_exper_com> selectPECBypid(Integer pid) {
        return pro_exper_comMapper.selectPECByPid(pid);
    }

    @Override
    public Company selectComByid(Integer cid) {
        return  companyMapper.selectByPrimaryKey(cid);

    }
}
