<%@page import="com.yi.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="student" class="com.yi.model.Student"/>
<jsp:setProperty property="*" name="student"/>
<%
	StudentService service = new StudentService();
	int res = service.insert(student);
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
		<h1>학생 등록에 성공하였습니다.</h1>
	</c:if>
	<c:if test="${res < 0 }">
		<h1>학생 등록에 실패하였습니다.</h1>
	</c:if>
	
	<a href="studentInsertForm.jsp">학생 등록하기</a><br>
	<a href="StudentList.jsp">학생 리스트로 이동하기</a>
</body>
</html>