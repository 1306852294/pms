package com.peace.pms.controller.sys;


import com.peace.pms.entity.sys.Company;
import com.peace.pms.entity.sys.Expert;
import com.peace.pms.entity.sys.Manager;
import com.peace.pms.entity.sys.Project;
import com.peace.pms.service.sys.CompanyService;
import com.peace.pms.service.sys.ExpertService;
import com.peace.pms.service.sys.ManagerService;
import com.peace.pms.util.LoginException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
public class indexController {

    @Autowired
    ManagerService managerService;

    @Autowired
    CompanyService companyService;

    @Autowired
    ExpertService expertService ;

//    @RequestMapping(value = "", method = RequestMethod.GET)
//    public String index(HttpServletRequest request, HttpServletResponse response) {
//        System.out.println("index/login");
//        return "redirect:index.do";
//    }
    //首页
    @RequestMapping(value = "/index.do", method = RequestMethod.GET)
    public String toLogin(HttpServletRequest request, HttpServletResponse response) {
        //System.out.println("index/login");
        return "index/login";
    }
    @RequestMapping(value = "/guide.do", method = RequestMethod.GET)
    public String toGuide(HttpServletRequest request, HttpServletResponse response) {
       // System.out.println("index/login");
        return "index/guide";
    }
    //登录请求
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String Login(HttpServletRequest request, HttpServletResponse response) {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String choose = request.getParameter("choose");

        System.out.println("name:"+email);
        System.out.println("pass:"+password);
        System.out.println("角色:"+choose);


        Manager manager;

        //网页请求的对象
        Manager m = new Manager();

        Company com =new Company();

        Expert ex =new Expert();


        try {
            request.setCharacterEncoding("utf-8");

            if ("0".equals(choose)) {
                request.setAttribute("errMsg", "请选择你的角色");
                System.out.println("没有选角色");
                //request.setAttribute("m",m);
                return "index/login";
            } else if ("1".equals(choose)) {

                m.setMemail(email);
                m.setPassword(password);

                manager = managerService.checkLogin(m);


                HttpSession session = request.getSession();
                session.setAttribute("name",manager.getMname());
                session.setAttribute("id",String.valueOf(manager.getMid()));

                request.setAttribute("manager", manager);

                System.out.println(manager);

                //
                System.out.println("登录成功");

                //重定向到 评审管理
                return "redirect:manager/topublish.do";
            }else if("2".equals(choose)){
                //企业登录
                com.setEmail(email);
                com.setPassword(password);

                com=companyService.checkLogin(com);

                System.out.println(com);
                HttpSession session = request.getSession();
                session.setAttribute("cname", com.getCname());
                session.setAttribute("cid",String.valueOf( com.getCid()));
                request.setAttribute("com",com);

                return "redirect:company/total_project.do";


            }else if("3".equals(choose)){
                //专家登录

                ex.setEmail(email);
                ex.setPassword(password);
                ex=expertService.checkLogin(ex);

                HttpSession session =request.getSession();
                session.setAttribute("name",ex.getEname());
                session.setAttribute("eid",String.valueOf(ex.getEid()));
                System.out.println("专家id："+ex.getEid());

                return "redirect:sys/toexpert.do";

            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (LoginException e) {
            request.setAttribute("errMsg", e.getMessage());
            request.setAttribute("m",m);
            //
            System.out.println("登录失败");
            return "index/login";
        }
        return "";
    }

    //跳转到注册页面
    @RequestMapping(value = "/toregister.do", method = RequestMethod.POST)
    public String toRegister(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("index/register");
        return "index/register";
    }

    @RequestMapping(value="/test.do",method = RequestMethod.GET)
    public String test(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=request.getSession();
        String id=(String)session.getAttribute("id");
        System.out.println();
        return "";
    }

    //注销用户
    @RequestMapping(value = "/logoff.do", method = RequestMethod.GET)
    public String logoff(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
        session.invalidate();
        return "redirect:/index.do";
    }



}


