<%--
  Created by IntelliJ IDEA.
  User: 13068
  Date: 2019/3/15
  Time: 上午 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>


<c:forEach items="${projects}" var="p">
    <div class="active type">
        <a href="tojudge_rule.do?pid=${p.pid}" class="glyphicon glyphicon-chevron-right">${p.pname}</a> </div>
</c:forEach>
