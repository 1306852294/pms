<%--
  Created by IntelliJ IDEA.
  User: Xzh
  Date: 2019/1/20
  Time: 11:50
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
    <link rel="stylesheet" href="../static/expert_css/personage.css">
    <script src="../static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="../static/script/main.js"></script>
    <title>个人中心</title>
    <script type="text/javascript">
        function update(){
            $.ajax({
                async:false,
                type:"POST",
                url:"${pageContext.request.contextPath }/sys/updateExpert.do",
                contentType : "application/x-www-form-urlencoded; charset=utf-8",
                data:$("#update_form").serialize(),
                dataType:"text",
                success: function(result){
                    console.log(result);
                },
                error:function(){

                }
            });
        }
    </script>
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
                <img src="./../static/images/expert/photo.png" alt="用户照片" width="185px;">
                <div>
                    <span class="name">${currentExpert.ename}</span>
                    <span class="applicant">专家</span>
                </div>
            </div>

            <div class="main_right">
                <ul class="nav nav-pills">
                    <li class="active">
                        <a href="#">信息管理</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/sys/password.do">修改密码</a>
                    </li>
                </ul>

                <div class="details">
                    <!-- 信息管理 -->
                    <div id="infoManage" style="display: block;">
                        <div class="my-form">
                            <div class="title">
                                <h3 class="Chinese-title">基本信息
                                    <em class="English-title">Essential information</em>
                                </h3>
                            </div>
                            <table class="table table-striped table-up">
                                <tr>
                                    <td class="table-otd">姓名：</td>
                                    <td class="table-ttd">${currentExpert.ename}</td>
                                    <td class="table-otd">性别：</td>
                                    <td class="table-ttd">${currentExpert.esex}</td>
                                </tr>
                                <tr>
                                    <td class="table-otd">身份证号码：</td>
                                    <td class="table-ttd">${currentExpert.ecard}</td>
                                    <td class="table-otd">专家号：</td>
                                    <td class="table-ttd">${currentExpert.enumber}</td>
                                </tr>
                            </table>

                            <div class="title">
                                <h3 class="Chinese-title">详细信息
                                    <em class="English-title">Detailed information</em>
                                </h3>
                            </div>
                            <table class="table table-striped table-down" id="table1">
                                <tr>
                                    <td class="table-otd">手机号：</td>
                                    <td class="table-ttd" id="form-cpname-front">
                                        ${currentExpert.ephone}
                                    </td>
                                    <td class="table-otd">省：</td>
                                    <td class="table-ttd" id="form-phone-front">
                                        ${currentExpert.eprovince}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">市：</td>
                                    <td class="table-ttd" >
                                        ${currentExpert.ecity}
                                    </td>
                                    <td class="table-otd">县/区：</td>
                                    <td class="table-ttd" >
                                        ${currentExpert.ecounty}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">学历：</td>
                                    <td class="table-ttd" id="form-BusinessModel-front">
                                        ${currentExpert.eduction}
                                    </td>
                                    <td class="table-otd">邮箱：</td>
                                    <td class="table-time" id="form-time-front">
                                        ${currentExpert.email}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">工作单位：</td>
                                    <td class="table-ttd" id="form-money-front">
                                        ${currentExpert.company}
                                    </td>
                                    <td class="table-otd">研究方向：</td>
                                    <td class="table-ttd" id="form-BusinessAOE-front">
                                        ${currentExpert.edirection}
                                    </td>
                                </tr>
                            </table>
                            <form id="update_form" action="">
                                <input type="hidden" name="eid" value="${currentExpert.eid}" />
                            <table class="table table-striped table-down form-table2" id="table2" style="display: none;">
                                <tr>
                                    <td class="table-otd">手机号：</td>
                                    <td class="table-ttd">
                                        <input type="text" class="form-text" id="form-cpname-behind" value="${currentExpert.ephone}" name="ephone">
                                    </td>
                                    <td class="table-otd">省：</td>
                                    <td class="table-ttd">
                                        <input type="text" class="form-text" id="form-phone-behind" value="${currentExpert.eprovince}" name="eprovince">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">市：</td>
                                    <td class="table-ttd">
                                        <input type="text" class="form-text" id="form-cpname-behind" value="${currentExpert.ecity}" name="ecity">
                                    </td>
                                    <td class="table-otd">县/区：</td>
                                    <td class="table-ttd">
                                        <input type="text" class="form-text" id="form-phone-behind" value="${currentExpert.ecounty}" name="ecounty">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">学历：</td>
                                    <td class="table-ttd">
                                        <input type="text" class="form-text" id="form-BusinessModel-behind" value="${currentExpert.eduction}" name="eduction">
                                    </td>
                                    <td class="table-otd">邮箱：</td>
                                    <td class="table-ttd">
                                        <input type="text" class="form-text" id="form-BusinessModel-behind" value="${currentExpert.email}" name="email">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="table-otd">工作单位：</td>
                                    <td class="table-ttd">
                                        <input type="text" class="form-text" id="form-money-behind" value="${currentExpert.company}" name="company">
                                    </td>
                                    <td class="table-otd">研究方向：</td>
                                    <td class="table-ttd">
                                        <input type="text" class="form-text" id="form-BusinessAOE-behind" value="${currentExpert.edirection}" name="edirection">
                                    </td>
                                </tr>
                            </table>
                            <div class="personal-button">
                                <button class="personal-button-left" id="edit" type="button">编辑</button>
                                <button class="personal-button-right" id="save" type="button" onclick="update()">保存</button>
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
