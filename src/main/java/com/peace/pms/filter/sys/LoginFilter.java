package com.peace.pms.filter.sys;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {

    @Override
    public void destroy() {
        // TODO Auto-generated method stub

    }

    @Override
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
            throws IOException, ServletException {
        // TODO Auto-generated method stub
        HttpServletRequest request = (HttpServletRequest)arg0;
        HttpServletResponse response = (HttpServletResponse)arg1;
        HttpSession session = request.getSession();


        //有三个请求不需要过滤，排除他们
        String [] paths =new String [] {"/login.do","/index.do","/toregister.do"};
        String [] pathss =new String [] {"register.do"};


        //当前路径
        String sp=request.getServletPath();
        System.out.println("当前过滤器："+sp);
        //若当前路径是上述3个路径之一
        for(String p:paths) {
            if(p.equals(sp)) {
                //不必过虑，请求继续执行
                arg2.doFilter(arg0, arg1);
                return ;
            }
        }
        for(String p:pathss){
            if(sp.endsWith(p)){
                arg2.doFilter(arg0, arg1);
                return ;
            }
        }


        if(session.getAttribute("id")==null&&session.getAttribute("cid")==null&&session.getAttribute("eid")==null){
            // 没有登录
            response.sendRedirect(request.getContextPath()+"/index.do");
        }else{
            // 已经登录，继续请求下一级资源（继续访问）
            arg2.doFilter(arg0, arg1);
        }

    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub

    }

}