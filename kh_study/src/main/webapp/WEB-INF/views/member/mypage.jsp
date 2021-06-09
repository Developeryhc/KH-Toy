<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.layout-wrap{
		box-sizing: border-box;
		display: flex;
		justify-content: center;
	}
	.layout{
		width: 400px;
		height: 400px;
		background-color: rgb(200, 200, 200);
		box-shadow: 10px 8px 2px 2px rgba(180, 180, 180, 0.5);
		margin: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.layout>h5, div{
		font-size: 30px;
	}
	.imformation{
		width: 400px;
		height: 400px;
		margin: 50px 15%;
		padding: 30px;
		background-color: rgb(200, 200, 200);
	}
	.imformation > input{
		outline: none;
		margin: 0 auto;
		display: block;
		border: 1px solid #329213;
		background-color: rgb(238, 238, 238);
	}
	.imformation-btn{
		margin: 0 auto;
		display: block;
	}
</style>
</head>
  <body>
  	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div class="layout-wrap">
		<div class="layout">
			<div>
				<h5>${student.studentName}님의 Mypage</h5>
				<br>
				<hr>
				<br>
				<input type="hidden" name="studentName" value="${student.studentName}">
				<h6>아이디</h6>
				<input type="text" name="studentId" value="${student.studentId}">
				<h6>전화번호</h6>
				<input type="text" name="phone" value="${student.phone}">
			</div>
		</div>
		<div class="layout">

			<h1>54 Day</h1>
		</div>
		<div class="layout">
			현재 총 자습 시간 : 543 H
		</div>
	</div>
	<div class="layout-wrap">
		<div class="layout">
			평균 종료시간
		</div>
		<div class="layout">
			평균 자습 시간
		</div>
		<div class="layout">
			자습 랭킹
		</div>
	</div>
  	<%@include file="/WEB-INF/views/common/footer.jsp"%>
  </body>
</html>