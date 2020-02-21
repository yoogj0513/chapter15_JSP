<%@page import="com.yi.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="s" class="com.yi.model.Student"/>
<jsp:setProperty property="*" name="s"/>
<%
	StudentService service = new StudentService();
	int res = service.update(s);
	pageContext.setAttribute("res", res);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${res > 0 }">
		<h1>${s.name }의 정보를 수정하였습니다.</h1>
	</c:if>
	<c:if test="${res < 0 }">
		<h1>수정 실패</h1>
	</c:if>
	<a href="StudentList.jsp">학생리스트</a>
</body>
</html>