<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/1/20
  Time: 下午 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="${ctxStatic}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctxStatic}/css/main.css">
    <script src="${ctxStatic}/bootstrap/jquery-2.1.1/jquery.min.js"></script>
    <script src="${ctxStatic}/bootstrap/js/bootstraap.min.js"></script>


    <!-- header+footer -->
    <link rel="stylesheet" href="${ctxStatic}/css/css.css" type="text/css">
    <link rel="stylesheet" href="${ctxStatic}/css/responsive.css">
    <style>
    </style>
</head>

<body>

<!-- header -->
<div class="logo">
    <div class="img">
        <img src="${ctxStatic}/images/index/工信委logo.png" alt="">
    </div>
    <div class="logo-text">
        <p>江西省工信委信息服务平台</p>
    </div>
</div>

<div class="banner">
    <img src="${ctxStatic}/images/index/标题.png" alt="">
</div>

<!-- main -->
<div class="container">
    <!-- 中左通知栏 -->
    <div class="row clearfix">
        <div class="col-md-8 column" style="padding: 0 15px;">
            <div class="notice">
                <!-- 通知公告 -->
                <div class="noticetop">
                    <img src="${ctxStatic}/images/index/notice_pic.png" alt="">
                    <span>通知公告</span>
                    <span class="moreplus">
                            <a href="more.html" target="0">
                                <img src="${ctxStatic}/images/index/moreone.jpg" alt="更多">
                            </a>
                        </span>
                </div>
                <div class="noticemb">
                    <ul class="list-unstyled">
                        <li>
                            <a href="news_page/news.html" target="0">
                                <span class="litext">德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚</span>
                            </a>

                            <span class="date">2017-12-22</span>
                        </li>
                        <li>
                            <a href="news_page/news.html" target="0">
                                <span class="litext">德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚</span>
                            </a>

                            <span class="date">2017-12-22</span>
                        </li>
                        <li>
                            <a href="news_page/news.html" target="0">
                                <span class="litext">德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚</span>
                            </a>

                            <span class="date">2017-12-22</span>
                        </li>
                        <li>
                            <a href="news_page/news.html" target="0">
                                <span class="litext">德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚</span>
                            </a>

                            <span class="date">2017-12-22</span>
                        </li>
                        <li>
                            <a href="news_page/news.html" target="0">
                                <span class="litext">德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚</span>
                            </a>

                            <span class="date">2017-12-22</span>
                        </li>
                        <li>
                            <a href="news_page/news.html" target="0">
                                <span class="litext">德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚</span>
                            </a>

                            <span class="date">2017-12-22</span>
                        </li>
                        <li>
                            <a href="news_page/news.html" target="0">
                                <span class="litext">德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚</span>
                            </a>

                            <span class="date">2017-12-22</span>
                        </li>
                        <li>
                            <a href="news_page/news.html" target="0">
                                <span class="litext">德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚德玛西亚</span>
                            </a>

                            <span class="date">2017-12-22</span>
                        </li>
                    </ul>
                </div>
                <!-- 业务指南按钮 -->
                <div class="button">
                    <button type="button" class="btn btn-info">
                        <a href="guide.html" target="0" style="color: #fff;">业务指南</a>
                    </button>
                </div>
            </div>
        </div>

        <!-- 中右登录框 -->
        <div class="col-md-4 column" style="padding: 0 15px">

            <div class="login">
                <div class="login_letter">
                    <img src="${ctxStatic}/images/index/notice_pic.png" alt="">
                    <span>登录</span>
                </div>

                <form action="${ctx}/toregister.do" method="post" class="form-horizontal" role="form" name="f">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-10">
                            <input name="email" type="email" class="form-control" id="inputEmail3" placeholder="请输入邮箱号" value=${m.memail}>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label" >密码</label>
                        <div class="col-sm-10">
                            <input name="password" type="password" class="form-control" id="inputPassword3" value=${m.password}>
                        </div>
                    </div>

                    <div class="form-group">

                        <div class="checkbox">
                            <a href="#">
                                找回密码
                            </a>
                            <select id="id_reconciliationDate" class="selectpicker show-tick form-control " style="width:40%"  name="choose" title="请选择身份"  val >
                                <option value="0">选择你的角色</option>
                                <option value="1">管理者</option>
                                <option value="2">企业</option>
                                <option value="3">专家</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group" style="display:flex; justify-content: space-between">
                        <button onclick="document.f.action='${ctx}/login.do';document.f.submit();" type="submit" class="btn btn-default" style="background-color: #00A0E9; color: #fff">登录</button>
                        <button type="submit" class="btn btn-default" style="background-color: #00FF71; color: #fff">注册</button>
                    </div>

                    <div id="error" style="color: red;">${errMsg }</div>
                </form>
            </div>
        </div>

    </div>

</div>

<!-- footer -->
<div class="footer">
    <div class="footer-left">
        <a href="http://www.jxciit.gov.cn/" target="0">
            <img src="${ctxStatic}/images/index/bottom-left.png" alt="">
        </a>
        <p>主办单位：江西省工业和信息化委员会</p>
    </div>
    <div class="footer-center">
            <span> Copy-right 2010 - 2016 JXCIIT GOV.ALL Rights Reserved</span>
                <span> 地址：南昌市红谷滩新区卧龙路999好西三栋 邮编：330036 联系电邮：jxgxwbgs@jxciit.gov.cn</span>
                    <span> 赣ICP备10005259号 政府网站标识码：3600000013
                    </span>
    </div>
    <div class="footer-right">
        <a href="http://biaozhi.conac.cn/" target="0">
            <img src="${ctxStatic}/images/index/bottom-right.png" alt="">
        </a>
    </div>
</div>
</body>

</html>