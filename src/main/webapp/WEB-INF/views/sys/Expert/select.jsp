<%--
  Created by IntelliJ IDEA.
  User: Xzh
  Date: 2019/1/19
  Time: 20:28
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
    <link rel="stylesheet" href="../static/expert_css/judge_project.css">
    <link rel="stylesheet" href="../static/expert_css/all-project.css">
    <script src="../static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="../static/script/main.js"></script>
    <title>评审项目</title>
</head>
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
        <li class="active">
            <a href="${pageContext.request.contextPath}/sys/judge_project.do"><span class="glyphicon glyphicon-star"></span> 评审项目</a>
        </li>
        <li >
            <a href="${pageContext.request.contextPath}/sys/personage.do" methods="POST"><span class="glyphicon glyphicon-user"></span> 个人中心</a>
        </li>
    </ul>
</div>


<!-- 主体部 -->
<div class="main">



    <div class="main_info">
        <!-- 评审项目 -->
        <div id="evalution" style="display: block;">
            <div class="title">
                <div class="icon"></div>
                <div class="title-text">评审项目</div>
            </div>

            <div id="protype" >
                <div class="containe">
                    <div class="container-left">
                        <div>
                            <div>您需要评审的项目：</div>
                        </div>
                        <c:forEach items="${list}" var="list">
                            <div class="active type">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                                <a style="display:block;width:100%;" methods="POST" href="${pageContext.request.contextPath}/sys/search.do?pid=${list.pid}&eid=${currentExpert.eid}">${list.pname}</a></div>
                        </c:forEach>
                        <%--<div class="type">--%>
                            <%--<span class="glyphicon glyphicon-chevron-right"></span> 项目B</div>--%>
                        <%--<div class="type">--%>
                            <%--<span class="glyphicon glyphicon-chevron-right"></span> 项目C</div>--%>
                        <%--<div class="type">--%>
                            <%--<span class="glyphicon glyphicon-chevron-right"></span> 项目D</div>--%>
                        <%--<div class="type">--%>
                            <%--<span class="glyphicon glyphicon-chevron-right"></span> 项目E</div>--%>


                    </div>



                    <!-- 评审项目 -->
                    <div class="eva container-right">

                        <div class="show-hide">
                            <div class="container-right-center" id="">
                                <table style="width: 100%">
                                    <c:forEach items="${page.rows}" var="page">
                                    <tr>
                                        <th rowspan="2">
                                            <span class="glyphicon glyphicon-file">项目情况</span></th>
                                        <td>
                                            申报公司：${page.cname}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="blue">
                                             <%--无法传递一个完整的对象给后台--%>
                                            <a href="${pageContext.request.contextPath}/sys/judge_project.do?pid=${page.pid}&cid=${page.cid}&eid=${currentExpert.eid}">申报项目：${page.pname}</a>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </table>
                                    <%--<tr>--%>
                                        <%--<th rowspan="2">--%>
                                            <%--<span class="glyphicon glyphicon-file">项目情况</span></th>--%>
                                        <%--<td>--%>
                                            <%--申报公司：B公司--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="blue">--%>
                                            <%--<a href="./judge_project.html">申报项目：***项目</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>

                                    <%--<tr>--%>
                                        <%--<th rowspan="2">--%>
                                            <%--<span class="glyphicon glyphicon-file">项目情况</span></th>--%>
                                        <%--<td>--%>
                                            <%--申报公司：C公司--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="blue">--%>
                                            <%--<a href="./judge_project.html">申报项目：***项目</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>

                                    <%--<tr>--%>
                                        <%--<th rowspan="2">--%>
                                            <%--<span class="glyphicon glyphicon-file">项目情况</span></th>--%>
                                        <%--<td>--%>
                                            <%--申报公司：D公司--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="blue">--%>
                                            <%--<a href="./judge_project.html">申报项目：***项目</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<th rowspan="2">--%>
                                            <%--<span class="glyphicon glyphicon-file">项目情况</span></th>--%>
                                        <%--<td>--%>
                                            <%--申报公司：E公司--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="blue">--%>
                                            <%--<a href="./judge_project.html">申报项目：***项目</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<th rowspan="2">--%>
                                            <%--<span class="glyphicon glyphicon-file">项目情况</span></th>--%>
                                        <%--<td>--%>
                                            <%--申报公司：F公司--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="blue">--%>
                                            <%--<a href="./judge_project.html">申报项目：***项目</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<th rowspan="2">--%>
                                            <%--<span class="glyphicon glyphicon-file">项目情况</span></th>--%>
                                        <%--<td>--%>
                                            <%--申报公司：G公司--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="blue">--%>
                                            <%--<a href="./judge_project.html">申报项目：***项目</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<th rowspan="2">--%>
                                            <%--<span class="glyphicon glyphicon-file">项目情况</span></th>--%>
                                        <%--<td>--%>
                                            <%--申报公司：H公司--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="blue">--%>
                                            <%--<a href="./judge_project.html">申报项目：***项目</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<th rowspan="2">--%>
                                            <%--<span class="glyphicon glyphicon-file">项目情况</span></th>--%>
                                        <%--<td>--%>
                                            <%--申报公司：I公司--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                                    <%--<tr>--%>
                                        <%--<td class="blue">--%>
                                            <%--<a href="./judge_project.html">申报项目：***项目</a>--%>
                                        <%--</td>--%>
                                    <%--</tr>--%>
                            </div>
                            <div class="container-right-footer">
                                <itcast:page  url="${pageContext.request.contextPath }/sys/search.do" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div style="clear: both;"></div>
    </div>
</div>
</div>
<div class="footer">
    <div class="copyRight">
        <p>Copy-right 2010 - 2016 JXCIIT GOV.All Rights Reserved</p>
        <p>主办单位：江西省工业和信息化委员会 地址：南昌市红谷滩新区卧龙路999号西三栋 邮编：330036 联系电邮：jxgxwbgs@jxciit.gov.cn</p>
        <p>赣ICP备10005259号　　　政府网站标识码：3600000013</p>
    </div>
</div>
</body>
</html>
