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
		width: 300px;
		height: 300px;
		background-color: rgb(200, 200, 200);
		box-shadow: 10px 8px 2px 2px rgba(180, 180, 180, 0.5);
		margin: 50px;
		display: flex;
		justify-content: center;
		align-items: center;
		position: relative;
	}
	.layout>h1{
		font-size: 50px;
	}
	.layout>h5, .layout>div{
		font-size: 30px;
	}

	.layout input{
		border-bottom: 1px solid #ccc;
		padding: 0 10px;
		font-size: 12px;
		transition-duration: 0.5s;
	}
	.img-wrap{
		background-color: rgba(10, 218, 200, 0.2);
		padding: 8px;
		position: absolute;
		width: 50px;
		height: 50px;
		top: 0;
		left: 0;
	}
	.layout-title{
		display: none;
		text-align: center;
		line-height: 50px;
	}
	.layout-img{
		width:100%;
		height:100%;
	}
</style>
</head>
  <body>
  	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<div class="layout-wrap">
		<div class="layout">
			<div class="img-wrap">
				<h5 class="layout-title">My Information</h5>
				<img class="layout-img" src="/resources/image/mypage/user.png">
			</div>
			<div>
				<h5>${student.studentName}님의 Mypage</h5>
				<input type="hidden" name="studentName" class="myInfo" value="${student.studentName}">
				<h6>아이디</h6>
				<input type="text" name="studentId" class="myInfo" value="${student.studentId}">
				<h6>전화번호</h6>
				<input type="text" name="phone" class="myInfo" value="${student.phone}">
			</div>
		</div>
		<div class="layout">
			<div class="img-wrap">
				<h5 class="layout-title">Study Day</h5>
				<img class="layout-img" src="/resources/image/mypage/calendar.png">
			</div>
			<h1>54 Day</h1>
		</div>
		<div class="layout">
			<div class="img-wrap">
				<h5 class="layout-title">Study Time</h5>
				<img class="layout-img" src="/resources/image/mypage/time.png">
			</div>
			<h1>543 H</h1>
		</div>
	</div>
	<div class="layout-wrap">
		<div class="layout">
			<div class="img-wrap">
				<h5 class="layout-title">Average End Time</h5>
				<img class="layout-img" src="/resources/image/mypage/end.png">
			</div>
			<h1>20:22</h1>
		</div>
		<div class="layout">
			<div class="img-wrap">
				<h5 class="layout-title">Average Study Time</h5>
				<img class="layout-img" src="/resources/image/mypage/running.png">
			</div>
			<h1>2:36</h1>
		</div>
		<div class="layout">
			<div class="img-wrap">
				<h5 class="layout-title">Total Rank</h5>
				<img class="layout-img" src="/resources/image/mypage/rank.png">
			</div>
			<h1>Rank 3</h1>
		</div>
	</div>
  	<%@include file="/WEB-INF/views/common/footer.jsp"%>
  </body>
  <script>
  	$(".layout").mouseover(function(){
  		$(this).children().children().eq(1).hide();
  		$(this).children().eq(0).css("width", "100%");
  		$(this).children().eq(0).css("padding", "0px");
  		$(this).children().children().eq(0).show();
  	});
  	$(".layout").mouseout(function(){
  		$(this).children().children().eq(0).hide();
  		$(this).children().eq(0).css("width", "50px");
  		$(this).children().eq(0).css("padding", "8px");
  		$(this).children().children().eq(1).show();
  	});
  </script>
</html>