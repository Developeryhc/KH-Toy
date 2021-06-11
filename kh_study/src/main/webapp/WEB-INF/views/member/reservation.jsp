<%@page import="kr.or.student.model.vo.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Document</title>
</head>
<script>
	var stu = ${sessionScope.s.studentNo};
	console.log(stu);
</script>
<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="content" style="width: 900px; margin: 0 auto"></div>
	<!-- <div id="calendar"></div> -->
	<div id="test" style="width: 800px"></div>
	<div class="list_pan">
		<div class="logo">Today</div>
		<br>
		<div class="Reservation">
			<div class="list">
				<div>A</div>
				<div style="height: 70%">
					<div class="ReserList">
						<div style="width: 15%;">No.</div>
						<div>Name</div>
						<div>Content</div>
						<div style="width: 35%;">Modi</div>
					</div>
					<div class="ReserList">
						<c:forEach items="${list1 }" var="l" varStatus="i">
							<div>${i.count }</div>
							<div>${l.reserStudent }</div>
							<div>${l.reserEnd }</div>
							<div>
								<input style="width: 50px;" type="button" onclick="cancle()" value="cancle" />
							</div>
						</c:forEach>
					</div>
				</div>
				<div style="height: 20%">
					<p class="reser_key">수령인</p>
					<hr width="80%" style="margin: 0 auto;" />
					서준식
				</div>
			</div>
			<div class="list">
				<div>A</div>
				<div style="height: 70%">
					<div class="ReserList">
						<div style="width: 15%;">No.</div>
						<div>Name</div>
						<div>Content</div>
						<div style="width: 35%;">Modi</div>
					</div>
					<div class="ReserList">
						<c:forEach items="${list2 }" var="l" varStatus="i">
							<div>${i.count }</div>
							<div>${l.reserStudent }</div>
							<div>${l.reserEnd }</div>
							<div>
								<input style="width: 50px;" type="button" onclick="cancle()" value="cancle" />
							</div>
						</c:forEach>
					</div>
				</div>
				<div style="height: 20%">
					<p class="reser_key">수령인</p>
					<hr width="80%" style="margin: 0 auto;" />
					서준식
				</div>
			</div>
			<div class="list">
				<div>A</div>
				<div style="height: 70%">
					<div class="ReserList">
						<div style="width: 15%;">No.</div>
						<div>Name</div>
						<div>Content</div>
						<div style="width: 35%;">Modi</div>
					</div>
					<div class="ReserList">
						<c:forEach items="${list3 }" var="l" varStatus="i">
							<div>${i.count }</div>
							<div>${l.reserStudent }</div>
							<div>${l.reserEnd }</div>
							<div>
								<input style="width: 50px;" type="button" onclick="cancle()" value="cancle" />
							</div>
						</c:forEach>
					</div>
				</div>
				<div style="height: 20%">
					<p class="reser_key">수령인</p>
					<hr width="80%" style="margin: 0 auto;" />
					서준식
				</div>
			</div>

			
		</div>
	</div>


	<!-- 예약창 -->
	<div class="service" style="display: none">
		<div class="service_modal">
			<div class="logo">예약</div>
			<form action="/insertReser.do" method="post">
				<div class="service_info">
					<div class="info_ser" style="display: none;">
						학생번호 <input type="text" name="reserStudent" class="service_name"
							value="<%=s.getStudentNo()%>" />
					</div>

					<div class="info_ser">
						이름 <input type="text" class="service_name"
							value="<%=s.getStudentName()%>" />
					</div>
				</div>
				<div class="service_info">
					<div class="info_ser">
						클래스 <input type="text" class="service_class"
							value="<%=s.getStudentClass()%>" />
					</div>
				</div>
				<div class="service_info">
					<div class="info_ser">
						Date <input type="text" name="reserDate" class="service_date"
							value="sysdate" />
					</div>
				</div>
				<div>
					<div class="service_info">
						<div class="info_ser" style="margin-left: 10px;">
							시작시간 <select name="reserStart"
								style="width: 104px; margin-left: 20px;">
								<option>04:20</option>
								<option>06:20</option>
							</select>
						</div>
					</div>
					<div class="service_info">
						<div class="info_ser" style="margin-left: 10px;">
							종료시간 <select name="reserEnd"
								style="width: 104px; margin-left: 20px;">
								<option>06:00</option>
								<option>06:30</option>
								<option>07:00</option>
								<option>07:30</option>
								<option>08:00</option>
								<option>08:30</option>
								<option>09:00</option>
							</select>
						</div>
					</div>
				</div>
				<input class="insert_btn" style="margin-top: 20px;" type="submit"
					value="등록" /><br> <input class="insert_btn" type="button"
					value="취소" />
			</form>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>