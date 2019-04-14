<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.peace.pms.service.sys.impl.UserServiceImpl" %>
<%@page import="com.peace.pms.entity.sys.Company" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%=session.getAttribute("LIST") %> --%>
<form action="find">
<table border="1">
       <tr>
           <td>id</td>
           <td>register_num</td>
           <td>company_name</td>
           <td>contact</td>
       </tr>
       <%--  <%
           for(Company tl:list)
            {%> --%>
        <c:forEach items="${LIST}" var="list">
          <tr>
              <td>${list.id}</td>
               <td>${list.registerNum}</td>
               <td>${list.companyName}</td>
             <td>${list.contact}</td>
           </tr>
         </c:forEach>
             <%--  <%}
        %> --%>
   </table>
</form>
</body>
</html>