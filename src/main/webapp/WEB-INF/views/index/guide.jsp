<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/2/28
  Time: 下午 3:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>业务指南</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!--
        <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src=></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="jquery-2.1.1/jquery.min.js"></script>
    -->
    <style>
        body {
            background: url(${ctxStatic}/images/index/bg.png) center center fixed;
            background-size: cover;
        }

        h1 {
            text-align: center;
            color: rgb(40, 114, 163);
        }

        .guide {
            margin: 0 auto;
            border: 1px solid dimgray;
            border-radius: 6px;
            width: 700px;
            height: 460px;
            overflow-y: auto;
        }

        .guide p {
            width: 530px;
            margin-top: 5px;
            margin: 0 auto;
            font-size: 20px;
            font-family: SimSun;
        }
    </style>

</head>

<body>
<h1 class="text-center">业务指南</h1>
<div class="container guide">
    <p>
        【公司】<br> 注册账号>>登录账号>>查看通知/项目需求>>选择申报方式（是否跨级申报）>> 下载申报表模板>>线上填写申报表>>提交申报表>>查看申报进度/结果
        <br> 【评审专家】
        <br> 注册账号>>登录账号>>查看评审规则>>申报书在线审批/文档下载>>线上提交评审结果
        <br> 【设区市；省管县；省级开发区；县、市级开发区】
        <br> 注册账号>>登录账号>>筛选呈递上的项目>>发布通知（规定申报期限/数量）
        <br> 【工信委（领导层）】
        <br> 注册账号>>登录账号>>发布任务/审核/数据统计
        <br>【工信委（发布方）工作人员】
        <br> 注册账号>>登录账号>>
        <br> a.项目信息发布
        <br> b.管理项目评审
        <br> c.管理项目：项目制作书>>与最后筛选出的申报方签订协议>>项目进度跟踪
    </p>
</div>
</body>

</html>