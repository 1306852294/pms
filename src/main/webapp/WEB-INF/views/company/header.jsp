<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ page deferredSyntaxAllowedAsLiteral="true"%>

	<div class="header">
        <div class="head_left">
            <img src="${pageContext.request.contextPath }/static/images/company/home.png" alt="">
            <a href="${pageContext.request.contextPath }/index.do">首页</a>
            <img src="${pageContext.request.contextPath }/static/images/company/notice.png" alt="">
            <a href="#">通知</a>
            <img src="${pageContext.request.contextPath }/static/images/company/guide.png" alt="">
            <span></span>
            <a href="${pageContext.request.contextPath }/guide.do">业务指南</a>
        </div>

        <div class="head_right">
            <img src="${pageContext.request.contextPath }/static/images/company/user.png" alt="">
            <ul id="userName">${cname}
                <span class="caret"></span>
                <li style="display: none;">
                    <a href="${ctx}/logoff.do">注销</a>
                </li>
            </ul>
            <img src="${pageContext.request.contextPath }/static/images/company/info.png" alt="">
            <a href="#">消息</a>
        </div>

    </div>