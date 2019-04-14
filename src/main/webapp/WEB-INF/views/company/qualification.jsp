<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/company_css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/company_css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/company_css/personpage.css">
    <script src="${pageContext.request.contextPath }/static/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/company_script/main.js"></script>
    <title>个人中心</title>
</head>

<body>
    <!-- 顶部 -->
	<c:import url="header.jsp"></c:import>

    <!-- 导航部 -->
    <div class="navBar">
            <ul class="list">
                <li>
                    <a href="total_project.do"><span class="glyphicon glyphicon-th-list"></span> 全部项目</a>
                </li>
                <li class="active">
                    <a href="personpage.do"><span class="glyphicon glyphicon-user"></span> 个人中心</a>
                </li>
            </ul>
        </div>


    <!-- 主体部 -->
    <div class="main">
        <div class="main_info">


          <!-- 个人中心 -->
            <div id="user" class="userCenter" style="display: block;">
                    <div class="main_left">
                        <img src="./../static/images/company/photo.png" alt="用户照片" width="185px;">
                        <div>
                           <span class="name">${cname }</span> <span class="applicant">申报人</span>
                        </div>
                    </div>
    
                    <div class="main_right">
                        <ul class="nav nav-pills">
                            <li>
                                <a href="personpage.do">我的项目</a>
                            </li>
                            <li>
                                <a href="information.do">信息管理</a>
                            </li>
                            <li class="active">
                                <a href="qualification.do">资质认证</a>
                            </li>
                            <li>
                                <a href="password.do">修改密码</a>
                            </li>
                            <li>
                                <a href="project_book.do">项目管理</a>
                            </li>
                        </ul>
    
                        <div class="details">

                        <!-- 资质认证 -->
                        <div class="identify" style="display: block;">
                                <p class="explain">（请在信息完善后进行资质认证）</p>
                                <div class="outcome_1" style="display: block">
                                    <img src="../static/images/company/cursor.png" alt="">
                                    <p>请上传工商认证材料，营业执照及其他资质证明材料</p>
                                    <div class="out_btn">
                                        <a class="btn btn-primary">上传<input id="upload"type="file"></input></a>
                                        <button type="button" class="btn btn-primary">提交</button>
                                    </div>
                                </div>
    
                                <div class="outcome_2" style="display: none">
                                    <button type="button" class="close" aria-hidden="true">&times;</button>
                                    <p>您已提交成功！</p>
                                    <p>之后请等待认证结果</p>
                                </div>
    
                                <div class="outcome_3" style="display: none;">
                                    <p>认证结果还未公布</p>
                                    <p>请继续等待</p>
                                </div>
    
                                <div class="outcome_4" style="display: none;">
                                    <img src="../static/images/company/gou.png" alt="">
                                    <p>认证成功！</p>
                                    <p>您现在可以开始申报</p>
                                </div>
                            </div>
                        </div>
                    </div>
        </div>
        </div>
    </div>
</body>

    