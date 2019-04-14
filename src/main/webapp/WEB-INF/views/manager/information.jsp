<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/3/2
  Time: 下午 8:46
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
                    <li class="active">
                        <a href="toinformaction.do">信息管理</a>
                    </li>
                    <li>
                        <a href="tochangepass.do">修改密码</a>
                    </li>
                    <li>
                        <a href="tonotice.do">发布通知</a>
                    </li>
                </ul>

                <div class="details">
                    <!-- 信息管理 -->
                    <div id="infoManage">
                        <div class="my-form">
                            <div class="title">
                                <h3 class="Chinese-title">基本信息
                                    <em class="English-title">Essential information</em>
                                </h3>
                            </div>
                            <table class="table table-striped table-up">
                                <tr>
                                    <td class="table-otd">姓名：</td>
                                    <td class="table-ttd">${manager.mname}</td>
                                    <td class="table-otd">性别：</td>
                                    <td class="table-ttd">${manager.msex}</td>
                                </tr>
                                <tr>
                                    <td class="table-otd">身份证号码：</td>
                                    <td class="table-ttd">${manager.mcard}</td>
                                    <td class="table-otd">工作号：</td>
                                    <td class="table-ttd">${manager.mnum}</td>
                                </tr>
                            </table>

                            <div class="title">
                                <h3 class="Chinese-title">详细信息
                                    <em class="English-title">Detailed information</em>
                                </h3>
                            </div>
                            <table class="table table-striped table-down" id="table1">
                                <tr>
                                    <td class="table-otd">所属部门：</td>
                                    <td class="table-ttd" id="form-cpname-front">
                                        ${manager.mdepartment}
                                    </td>
                                    <td class="table-otd">办公电话：</td>
                                    <td class="table-ttd" id="form-phone-front">
                                        ${manager.mphone}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">传真：</td>
                                    <td class="table-ttd" id="form-BusinessModel-front">
                                        ${manager.mfox}
                                    </td>
                                    <td class="table-otd">邮箱：</td>
                                    <td class="table-time" id="form-time-front">
                                        ${manager.memail}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">所在单位：</td>
                                    <td class="table-ttd" id="form-company-front" colspan="3">
                                        ${manager.mcompany}
                                    </td>
                                </tr>



                            </table>
                            <form method="post" action="tochangeinfo.do">
                            <table class="table table-striped table-down form-table2" id="table2" style="display: none;">

                                <tr>
                                    <td class="table-otd">所属部门：</td>
                                    <td class="table-ttd">
                                        <input name="mdepartment" value="${manager.mdepartment}"  type="text" class="form-text" id="form-cpname-behind">
                                    </td>
                                    <td class="table-otd">办公电话：</td>
                                    <td class="table-ttd">
                                        <input name="mphone" value="${manager.mphone}" type="text" class="form-text" id="form-phone-behind">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">传真：</td>
                                    <td class="table-ttd">
                                        <input name="mfox" value="${manager.mfox}" type="text" class="form-text" id="form-BusinessModel-behind">
                                    </td>
                                    <td class="table-otd">所在单位：</td>

                                    <td class="table-ttd" id="form-company-front">
                                        <input name="mcompany" value="${manager.mcompany}" type="text" class="form-text" id="form-BusinessModel-behind">
                                    </td>

                                </tr>

<!--
                                <tr>


                                    <td class="table-otd">管理类别：</td>
                                    <td class="table-ttd" colspan="4">
                                        <label class="cpclass" for="cpname1">
                                            <input type="checkbox" name="cpname" id="cpname1" value="&nbsp&nbsp&nbsp发布管理">发布管理</label>
                                        <label class="cpclass" for="cpname2">
                                            <input type="checkbox" name="cpname" id="cpname2" value="&nbsp&nbsp&nbsp评审管理">评审管理</label>
                                        <label class="cpclass" for="cpname3">
                                            <input type="checkbox" name="cpname" id="cpname3" value="&nbsp&nbsp&nbsp中后期管理">中后期管理</label>
                                    </td>
                                </tr>
                                -->
                            </table>
                            <div class="personal-button">
                                <button type="button" onclick="change()" class="personal-button-left" id="edit">编辑</button>
                                <button type="submit" class="personal-button-right" id="save">保存</button>
                            </div>

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
