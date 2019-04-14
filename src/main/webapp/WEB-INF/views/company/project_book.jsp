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
                            <li>
                                <a href="qualification.do">资质认证</a>
                            </li>
                            <li>
                                <a href="password.do">修改密码</a>
                            </li>
                            <li class="active">
                                <a href="project_book.do">项目管理</a>
                            </li>
                        </ul>
    
                        <div class="details">

                        <!-- 项目管理 -->
                        <div class="projectManage" style="display: block;">
                                <ul class="nav nav-pills">
                                    <li class="active">
                                        <a href="project_book.do">填写项目书</a>
                                    </li>
                                    <li>
                                        <a href="progress.do">进度报告</a>
                                    </li>
                                </ul>
    
                                <!-- 项目书列表，内容不止一个 -->
    
                                <div class="pjFill" style="display: block;">
                                    <ul id="projectList">
                                        <li>
                                            <a class="projectName" href="#">发来的项目书</a>
                                            <span class="download glyphicon glyphicon-download-alt"></span>
                                        </li>
    
                                    </ul>
    
    
                                    <form class="uploadArea" action="" name="upload">
                                        <div class="areaLeft">
                                            <span class="folder glyphicon glyphicon-folder-open"></span>
                                            <a class="submit" href="">
                                                点击提交文件
                                                <input id="inputfile" type="file" multiple="multiple">
                                            </a>
                                        </div>
    
    
                                        <div class="areaRight">
                                            <span class="tip">已上传的文件</span>
                                        </div>
    
    
                                        <button type="button" class="btn btn-primary">提交</button>
                                    </form>
                                </div>
    
    
                                <div class="pjProgress" style="display: none;">
                                    <div class="firstCheck">
                                        <span>中期检查</span>
                                        <ul class="former">
                                            <li>
                                                <a href="#">中期上传的材料</a>
                                            </li>
                                        </ul>
                                    </div>
    
    
                                    <div class="middleCheck">
                                        <span>初步验收</span>
                                        <table class="table table-bordered">
                                            <tbody>
                                                <tr>
                                                    <td class="txt">企业的说明...</td>
                                                </tr>
                                                <tr>
                                                    <td>上传附件</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#">XXX附件1.DOC</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#">XXX附件1.DOC</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
        </div>
        </div>
    </div>
</body>
    