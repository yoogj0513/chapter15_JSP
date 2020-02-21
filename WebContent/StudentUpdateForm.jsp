<%@page import="com.yi.model.Student"%>
<%@page import="com.yi.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sNo = request.getParameter("no");
	int no = Integer.parseInt(sNo);
	StudentService service = new StudentService();
	Student s = service.getStudent(no);
	pageContext.setAttribute("s", s);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	form {
		width: 400px;
	}
	
	label {
		width: 60px;
		float: left;
	}
</style>
</head>
<body>
	<form action="studentUpdatetResult.jsp" method="post">
		<fieldset>
			<legend>학생 점수 등록</legend>
			<p>
				 <label>번호</label>
				 <input type="text" name="no" readonly="readonly" value="${param.no }"/>
			</p>
			<p>
				 <label>이름</label>
				 <input type="text" name="name" value="${s.name }"/>
			</p>
			<p>
				 <label>국어</label>
				 <input type="text" name="kor" value="${s.kor }"/>
			</p>
			<p>
				 <label>영어</label>
				 <input type="text" name="eng" value="${s.eng }"/>
			</p>
			<p>
				 <label>수학</label>
				 <input type="text" name="math" value="${s.math }"/>
			</p>
			<p>
				<input type="submit" value="등록"/>
			</p>
		</fieldset>
	</form>
</body>
</html>