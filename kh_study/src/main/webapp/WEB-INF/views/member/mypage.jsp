<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.imformation{
		width: 500px;
		height: 500px;
		margin: 50px 100px;
		background-color: rgb(200, 200, 200);
	}
	.imformation > input{
		outline: none;
		margin: 0 auto;
		display: block;
		border: 1px solid #329213;
		background-color: rgb(238, 238, 238);
	}
</style>
</head>
  <body>
  	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div class="content">
		<form action="updateStudent.do">
			<div class="imformation">
				<input type="text" name="studentId">
				<input type="text" name="studentClass">
				<input type="text" name="studentName">
				<input type="text" name="phone">
				<input type="submit" value="수정하기">
			</div>
			
		</form>
	</div>
  	<%@include file="/WEB-INF/views/common/footer.jsp"%>
  </body>
</html>