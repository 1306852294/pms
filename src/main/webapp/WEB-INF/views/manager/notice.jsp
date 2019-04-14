<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/3/2
  Time: 下午 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <%@include file="/WEB-INF/views/include/headManager.jsp" %>

    <title>个人中心</title>
</head>

<body>
<!-- 头部 -->
<div class="header">
    <c:import url="head.jsp"></c:import>

</div>

<!-- 导航部 -->
<div class="navBar">
    <ul class="list">
        <li>
            <a href="topublish.do" class="glyphicon glyphicon-open">发布管理</a> </li>
        <li>
            <a href="tojudge.do" class="glyphicon glyphicon-bullhorn">评审管理</a> </li>
        <li>
            <a href="#" class="glyphicon glyphicon-stats">中后期管理</a> </li>
        <li class="active">
            <a href="toinformaction.do" class="glyphicon glyphicon-user">个人中心</a> </li>
    </ul>
</div>


<!-- 主体部 -->
<div class="main">
    <div class="main_info">

        <!-- 个人中心 -->
        <div id="user" class="userCenter">
            <div class="main_left">
                <img src="${ctxStatic}/images/manager/photo.png" alt="用户照片" width="185px;">
                <div>
                    <span class="name">XXX</span>
                    <span class="applicant">管理者</span>
                </div>
            </div>

            <div class="main_right">
                <div class="container-right">
                    <div class="submit">
                        <form role="form">
                            <div class="form-group">
                                <label for="name">标题</label>
                                <input type="text" class="form-control" placeholder="请输入标题">
                            </div>
                        </form>
                        <form role="form">
                            <div class="form-group">
                                <label for="name">通知内容</label>
                                <textarea class="form-control" rows="26"></textarea>
                            </div>
                        </form>
                        <div class="submitBot">
                            <input type="file" value="上传附件">
                            <a href="" onclick="alert('发布成功!')">发布通知</a>
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