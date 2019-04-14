<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/2/26
  Time: 下午 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<%@page deferredSyntaxAllowedAsLiteral="true"%>
    <div class="head_left">
        <img src="${ctxStatic}/images/manager/home.png" alt="">
        <a href="${ctx}/index.do">首页</a>

        <img src="${ctxStatic}/images/manager/notice.png" alt="">
        <a href="#">通知</a>
        <img src="${ctxStatic}/images/manager/guide.png" alt="">
        <a href="${ctx}/guide.do">业务指南</a>
    </div>

    <div class="head_right">
        <img src="${ctxStatic}/images/manager/user.png" alt="">
        <ul id="userName">${name}
            <span class="caret"></span>
            <li style="display: none;">
                <a href="${ctx}/logoff.do">注销</a>
            </li>
        </ul>

        <a href="#">消息</a>
    </div>



