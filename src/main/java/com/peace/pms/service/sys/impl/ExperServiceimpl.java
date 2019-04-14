package com.peace.pms.service.sys.impl;

import com.peace.pms.dao.sys.ExpertMapper;
import com.peace.pms.entity.sys.Expert;
import com.peace.pms.service.sys.ExpertService;
import com.peace.pms.util.LoginException;
import com.peace.pms.util.RegisterException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ExperServiceimpl implements ExpertService {

    @Autowired
    private ExpertMapper expertMapper;

    @Override
    public List<Expert> selectjudge(Expert expert,int n) {
        /**
         * 随机 抽取 n个专家
         */
        List<Expert> list=expertMapper.selectjudge(expert);
        Map map = new HashMap();
        List<Expert> listNew = new ArrayList();
        if (list.size() <= n) {
            return list;
        } else {
            while (map.size() < n) {
                int random = (int) (Math.random() * list.size());
                if (!map.containsKey(random)) {
                    map.put(random, "");
                    System.out.println(random + "===========" + list.get(random));
                    listNew.add(list.get(random));
                }
            }
            return listNew;
        }
    }

    @Override
    public Expert getMessageById(Integer id) {
        // TODO Auto-generated method stub
        return expertMapper.selectByPrimaryKey(id);
    }

    @Override
    public Expert getMessageByEmail(String email) {
        return expertMapper.selectByEmail(email);
    }

    @Override
    public int updateDetails(Expert expert) {
        System.out.println(expert.getEid());
        return expertMapper.updateByPrimaryKeySelective(expert);
    }

    @Override
    public Expert checkLogin(Expert expert) {
        Expert expert1 =expertMapper.selectByEmail(expert.getEmail());

        if(expert1==null){
            throw  new LoginException("用户名不存在");
        }

        if(!expert1.getPassword().equals(expert.getPassword())){
            throw  new LoginException("密码错误");
        }

        return expert1;
    }

    @Override
    public Expert checkRegister(Expert expert) {
        Expert exp_datebase=expertMapper.selectByEmail(expert.getEmail());

        if(exp_datebase!=null){
            throw new RegisterException("用户已存在");
        }
        return expert;
    }

    @Override
    public Integer insert(Expert expert) {
        expertMapper.insert(expert);
        return expertMapper.selectByEmail(expert.getEmail()).getEid();
    }
}
