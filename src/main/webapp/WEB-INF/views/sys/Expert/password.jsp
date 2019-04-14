<%--
  Created by IntelliJ IDEA.
  User: Xzh
  Date: 2019/1/20
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../static/expert_css/reset.css">
    <link rel="stylesheet" href="../static/expert_css/main.css">
    <link rel="stylesheet" href="../static/expert_css/personage.css">
    <script src="../static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="../static/script/main.js"></script>
    <title>Document</title>
</head>

<body>
<!-- 头部 -->
<div class="header">
    <div class="head_left">
        <img src="../static/images/expert/home.png" alt="">
        <a href="${pageContext.request.contextPath }/index.do">首页</a>
        <img src="../static/images/expert/notice.png" alt="">
        <a href="#">通知</a>
        <img src="../static/images/expert/guide.png" alt="">
        <a href="${pageContext.request.contextPath }/guide.do">业务指南</a>
    </div>

    <div class="head_right">
        <img src="../static/images/expert/user.png" alt="">
        <ul id="userName">${currentExpert.ename}
            <span class="caret"></span>
            <li style="display: none;">
                <a href="${pageContext.request.contextPath }/logoff.do">注销</a>
            </li>
        </ul>
        <img src="../static/images/expert/info.png" alt="">
        <a href="#">消息</a>
    </div>

</div>

<!-- 导航部 -->
<div class="navBar">
    <ul class="list">
        <li >
            <a href="${pageContext.request.contextPath}/sys/select.do"><span class="glyphicon glyphicon-star"></span> 评审项目</a>
        </li>
        <li class="active">
            <a href="${pageContext.request.contextPath}/sys/personage.do" methods="POST"><span class="glyphicon glyphicon-user"></span> 个人中心</a>
        </li>
    </ul>
</div>


<!-- 主体部 -->
<div class="main">



    <div class="main_info">


        <!-- 个人中心 -->
        <div id="user" class="userCenter" style="display: block;">
            <div class="main_left">
                <img src="../static/images/expert/photo.png" alt="用户照片" width="185px;">
                <div>
                    <span class="name">${currentExpert.ename}</span>
                    <span class="applicant">专家</span>
                </div>
            </div>

            <div class="main_right">
                <ul class="nav nav-pills">
                    <li>
                        <a href="${pageContext.request.contextPath}/sys/personage.do">信息管理</a>
                    </li>
                    <li class="active">
                        <a href="#">修改密码</a>
                    </li>
                </ul>

                <div class="details">
                    <!-- 修改密码 -->
                    <div id="changeBox" style="display: block;">
                        <div class="change">
                            <form action="${pageContext.request.contextPath}/sys/updatePassword.do" class="form-horizontal" role="form" name="form1">
                                <input type="hidden" name="eid" value="${currentExpert.eid}" />
                                <div class="form-group">
                                    <label for="firstname" class="col-sm-2 control-label">旧密码</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="firstname" placeholder="请输入旧密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstname" class="col-sm-2 control-label">新密码</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="firstname" placeholder="请输入新密码" name="password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstname" class="col-sm-2 control-label">再次确认</label>
                                    <div class="col-sm-10">
                                        <input type="password" class="form-control" id="firstname" placeholder="请再次输入新密码" onchange="checkpwd()">
                                        <div id="warning" style="color: red;"></div>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary">保存</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div style="clear: both;"></div>
        </div>

    </div>
</div>


<!-- 底部 -->
<div class="footer">
    <div class="copyRight">
        <p>Copy-right 2010 - 2016 JXCIIT GOV.All Rights Reserved</p>
        <p>主办单位：江西省工业和信息化委员会 地址：南昌市红谷滩新区卧龙路999号西三栋 邮编：330036 联系电邮：jxgxwbgs@jxciit.gov.cn</p>
        <p>赣ICP备10005259号　　　政府网站标识码：3600000013</p>
    </div>
</div>
</body>


</html>