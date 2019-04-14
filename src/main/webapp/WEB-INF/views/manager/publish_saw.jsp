<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/3/2
  Time: 下午 7:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="/WEB-INF/views/include/headManager.jsp" %>
    <title>发布管理</title>
    <style>

    </style>
</head>

<body>
<!-- 头部 -->
<div class="header">
    <c:import url="head.jsp"></c:import>
</div>

<!-- 导航部 -->
<div class="navBar">
    <ul class="list">
        <li class="active" >
            <a href="topublish.do"  class="glyphicon glyphicon-open">发布管理</a> </li>
        <li >
            <a href="tojudge.do"  class="glyphicon glyphicon-bullhorn">评审管理</a> </li>
        <li>
            <a href="#" class="glyphicon glyphicon-stats" >中后期管理</a> </li>
        <li>
            <a href="toinformaction.do" class="glyphicon glyphicon-user">个人中心</a> </li>
    </ul>
</div>


<!-- 主体部 -->
<div class="main">
    <div class="main_info">
        <!-- 发布管理 -->
        <div id="newProject" class="submitManage">
            <div class="title">
                <div class="icon"></div>
                <div class="title-text">发布管理</div>
                <div class="title-text">&gt;已审核的项目</div>
            </div>
            <div class="containe">
                <div class="container-left">
                    <a href="topublish.do">发布新项目</a>
                    <a href="topublish_wait.do">待审核的项目</a>
                    <a href="topublish_saw.do">已审核的项目</a>
                </div>
                <div class="container-right">
                    <div class="submit">
                        <div class="container-right-center-two">
                            <div class="PoT">
       <!--
                                <a class="PoT-content" href="./ok.html">
                                    <span>项目项目项目</span><span class="status pass">审核通过</span>
                                </a>

                                <a class="PoT-content" href="#">
                                    <span>项目项目项目</span><span class="status fail">审核未通过</span>
                                </a>
  -->
                                <c:forEach items="${project_yespass}" var="p">
                                    <a class="PoT-content" href="#">
                                            <span>${p.pname}</span><span class="status pass">审核通过</span>
                                    </a>
                                </c:forEach>
                                <c:forEach items="${project_nopass}" var="p">
                                    <a class="PoT-content" href="#">
                                        <span>${p.pname}</span><span class="status fail">审核未通过</span>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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