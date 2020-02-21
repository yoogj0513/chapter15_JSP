<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 점수 등록</title>
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
	<form action="studentInsertResult.jsp" method="post">
		<fieldset>
			<legend>학생 점수 등록</legend>
			<p>
				 <label>이름</label>
				 <input type="text" name="name"/>
			</p>
			<p>
				 <label>국어</label>
				 <input type="text" name="kor"/>
			</p>
			<p>
				 <label>영어</label>
				 <input type="text" name="eng"/>
			</p>
			<p>
				 <label>수학</label>
				 <input type="text" name="math"/>
			</p>
			<p>
				<input type="submit" value="등록"/>
			</p>
		</fieldset>
	</form>
</body>
</html>