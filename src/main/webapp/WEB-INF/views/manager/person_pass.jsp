<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/2/28
  Time: 下午 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <%@include file="/WEB-INF/views/include/headManager.jsp" %>
    <script type="text/javascript">
        function checkpass(){
            //确定URL

            var url ="checkpass.do"

            var parm ="password="+$("#firstname").val();

            $.ajax({
                "url" : url ,
                "data" : parm ,
                "type" : "GET" ,
                "dataType" : "json" ,
                "success"  : function(obj){

                    if(obj.state == 0){
                        $("#warning").html(obj.message);
                    }else{
                        $("#warning").html("");
                    }
                }

            });
        }


    </script>
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
                    <span class="name">${name}</span>
                    <span class="applicant">管理者</span>
                </div>
            </div>

            <div class="main_right">
                <ul class="nav nav-pills">
                    <li >
                        <a href="toinformaction.do">信息管理</a>
                    </li>
                    <li class="active">
                        <a href="tochangepass.do">修改密码</a>
                    </li>
                    <li>
                        <a href="tonotice.do">发布通知</a>
                    </li>
                </ul>

                <div class="details">
                    <!-- 修改密码 -->
                    <div id="changeBox">
                        <div class="change">
                            <form action="changepass.do" method="post" class="form-horizontal" role="form" name="form1">
                                <div class="form-group">
                                    <label for="firstname" class="col-sm-2 control-label">旧密码</label>
                                    <div class="col-sm-10">
                                        <input name ="pass" type="password" onblur="checkpass()" class="form-control" id="firstname"  placeholder="请输入旧密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstname1" class="col-sm-2 control-label">新密码</label>
                                    <div class="col-sm-10">
                                        <input name="pwd1" type="password" class="form-control" id="firstname1" placeholder="请输入新密码" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstname2" class="col-sm-2 control-label">再次确认</label>
                                    <div class="col-sm-10">
                                        <input name="pwd2"  type="password" class="form-control" id="firstname2" placeholder="请再次输入新密码" onchange="checkpwd()">
                                        <div id="warning" style="color: red;">${err}</div>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary" > 保存</button>
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