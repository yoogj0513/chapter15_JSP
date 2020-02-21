<%@page import="com.yi.model.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.yi.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	StudentService service = new StudentService();
	List<Student> list = service.list();
	pageContext.setAttribute("list", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		border-collapse: collapse;
		width: 600px;
	}
	
	td, th {
		border: 1px solid #000;
		padding: 5px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>국어</th>
			<th>영어</th>
			<th>수학</th>
			<th></th>
		</tr>
		<c:forEach var="s" items="${list }">
			<tr>
				<td>${s.no }</td>
				<td>${s.name }</td>
				<td>${s.kor }</td>
				<td>${s.eng }</td>
				<td>${s.math }</td>
				<td>
					<button class="btnMod" data-no="${s.no }">수정</button>
					<button class="btnDel">삭제</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	<script>
		$(".btnMod").click(function(){
			var no = $(this).attr("data-no");
			location.href = "StudentUpdateForm.jsp?no="+no;
		})
	</script>
</body>
</html>