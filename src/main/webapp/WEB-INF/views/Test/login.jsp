<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>login</title>
	<%@include file="/WEB-INF/views/include/head.jsp" %>

</head>

<body>

    <!-- header -->
    <div class="logo">
        <div class="img">
            <img src="${ctxStatic}/images/gxwlogo.png" alt="">
        </div>
        <div class="logo-text">
            <p>江西省工信委信息服务平台</p>
        </div>
    </div>

    <div class="banner">
        <img src="${ctxStatic}/images/title.png" alt="">
    </div>

    <!-- main -->
    <div class="container">
        <!-- 中左通知栏 -->
        <div class="row clearfix">
            <div class="col-md-8 column" style="padding: 0 15px;">
                <div class="notice">
                    <!-- 通知公告 -->
                    <div class="noticetop">
                        <img src="${ctxStatic}/images/notice_pic.png" alt=""><span>通知公告</span>
                        <span class="moreplus">
                            <a href="more.html" target="0">
                                <img src="${ctxStatic}/images/moreone.jpg" alt="更多">
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
                        <img src="${ctxStatic}/images/notice_pic.png" alt=""><span>登录</span>                       
                    </div>

                    <form action="sys/login" method="get" class="form-horizontal" role="form" name="f">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
                            <div class="col-sm-10">
                                <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="请输入邮箱号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" class="form-control" id="inputPassword3">
                            </div>
                        </div>
                        
                        <div class="form-group">

                            <div class="checkbox">
                                <a href="#">
                                    找回密码
                                </a>
                            </div>
                        </div>
                        
                        <div class="form-group" style="display:flex; justify-content: space-between">
                            <button type="submit" class="btn btn-default" style="background-color: #00A0E9; color: #fff">登录</button>
                            <button onclick="document.f.action='sys/register'; document.f.submit();" type="submit" class="btn btn-default" style="background-color: #00FF71; color: #fff">注册</button>
                        </div>
                    </form>

                </div>
            </div>

        </div>

    </div>

    <!-- footer -->
     <div class="footer">
        <div class="footer-left">
            <a href="http://www.jxciit.gov.cn/" target="0"><img src="${ctxStatic}/images/bottom-left.png" alt=""></a>
            <p>主办单位：江西省工业和信息化委员会</p>
        </div>
        <div class="footer-center">
            <span> Copy-right 2010 - 2016 JXCIIT GOV.ALL Rights Reserved</span>

                <span> 地址：南昌市红谷滩新区卧龙路999好西三栋 邮编：330036 联系电邮：jxgxwbgs@jxciit.gov.cn</span>
                    <span> 赣ICP备10005259号 政府网站标识码：3600000013
                    </span>
        </div>
        <div class="footer-right">
           <a href="http://biaozhi.conac.cn/" target="0"><img src="${ctxStatic}/images/bottom-right.png" alt=""></a> 
        </div>
    </div>


</body>

</html>