<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/2/28
  Time: 下午 4:56
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
    <title>评审管理</title>
</head>

<body>
<!-- 头部 -->
<div class="header">
    <c:import url="head.jsp"></c:import>

</div>

<!-- 导航部 -->
<div class="navBar">
    <c:import url="nav.jsp"></c:import>
</div>


<!-- 主体部 -->
<div class="main">

    <div class="main_info">


        <!-- 评审项目 -->
        <div id="evalution" style="display: block;">
            <div class="title">
                <div class="icon"></div>
                <div class="title-text">评审管理>评审结果</div>
            </div>

            <div id="protype">
                <div class="containe">
                    <div class="container-left">
                        <div>
                            <div>进行项目管理：</div>
                        </div>
                        <c:import url="judge_project.jsp"></c:import>
                    </div>



                    <!-- 评审管理~~~专家小组 -->
                    <div id="evaManage" class="container-right" style="display: block;">
                        <div class="cr-nav">
                            <div class="cr-nav-icon "> <a href="tojudge_rule.do">评审规则</a> </div>
                            <div class="cr-nav-icon "> <a href="toexperGroup.do">专家小组</a></div>
                            <div class="cr-nav-icon"> <a href="tojudge_mode.do">评审方式</a> </div>
                            <div class="cr-nav-icon active"> <a href="toresult.do">评审结果</a> </div>
                        </div>
                        <!-- 评审管理~~~评审结果 -->

                        <!-- 评审结果第四个 -->
                        <div class="container-right" id="ps-4" style="display: block;">
                            <div class="cr-contant">
                                <div class="cr-c-header">
                                    <div class="pot"></div>
                                    <div class="title">中标公司： <c:if test="${message==0}">还没有评审完毕</c:if> ${c.cname}</div>
                                </div>
                                <div class="company"></div>
                                <form action="publicity.do" method="post">
                                    <div class="cr-btn">
                                        <input type="submit" class="btn btn-primary" value="公示">
                                    </div>
                                </form>
                                <div class="cr-c-header">

                                    <span class="pot"></span>
                                    <span class="title">公司详细信息：</span>


                                </div>
                                <div class="tablee" >
                                    <table border="1" style="margin: 0 auto" >
                                        <tr>
                                            <td width="150px">企业名称：</td>
                                            <td width="150px">${c.cname}</td>
                                            <td width="150px">联系方式：</td>
                                            <td width="150px">${c.cphone}</td>
                                        </tr>
                                        <tr>
                                            <td>经营模式：</td>
                                            <td>${c.model}</td>
                                            <td>注册时间：</td>
                                            <td>${c.regisTime}</td>
                                        </tr>
                                        <tr>
                                            <td>注册资本：</td>
                                            <td>&nbsp;</td>
                                            <td>经营范围：</td>
                                            <td>${c.prange}</td>
                                        </tr>
                                        <tr>
                                            <td>企业类型：</td>
                                            <td colspan="3">${c.ctype}</td>
                                        </tr>
                                    </table>
                                </div>

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