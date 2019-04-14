<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/include/head.jsp" %>
<link href="${ctxStatic}/Hplus/css/login.css" rel="stylesheet">
    
<title>登录</title>
</head>
<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-3">
               
            </div>
            <div class="col-sm-6">
                <form method="post" action="sys/login">
                    <h3 class="no-margins" style="color:#337ab7" >登录：</h3>
                    <input type="text" name="loginName" class="form-control uname" placeholder="用户名" />
                    <input type="password" name="password" class="form-control pword m-b" placeholder="密码" />
                    <a href="">忘记密码了？</a>
                    <button class="btn btn-success btn-block">登录</button>
                    <strong>还没有账号？ <a href="#">立即注册&raquo;</a></strong>
                </form>
            </div>
            <div class="col-sm-3">
               
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2015 All Rights Reserved. 
            </div>
        </div>
    </div>
</body>
</html>