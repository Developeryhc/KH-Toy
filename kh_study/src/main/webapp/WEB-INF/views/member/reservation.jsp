<%@page import="kr.or.student.model.vo.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>Document</title>
<!-- jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	var stu = ${sessionScope.s.studentNo};
	console.log(stu);
</script>
</head>
<body>
	<!-- header -->
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="content" style="width: 100%;margin: 0 auto">
		<div class="adver">
			<!-- 수정 부분 -->
			<div class="banner">
				<a href="#" class="banners"><img src="/resources/image/advertisement/product1.jpg"></a>
				<a href="#" class="banners"><img src="/resources/image/advertisement/foundaition.jpg"></a>
				<a href="#" class="banners"><img src="/resources/image/advertisement/test1.png"></a>
				<div class="bannerBtnsWrap">
					<button class="bannerBtns" id="prevBtnW">&lt;</button>
					<button class="bannerBtns" id="nextBtnW">&gt;</button>
				</div>
				<!-- <button class="bannerBtns" id="closeAdBtnW">X</button> -->
			</div>
		</div>
	</div>
	<!-- <div id="calendar"></div> -->
	<div id="test" style="width: 800px;"></div>
	<!-- 수정 부분 -->
	<div class="widthBannerWrap">
		<a href="#" class="wBanners"><img src="/resources/image/advertisement/widthBanner3.jpg"></a>
		<a href="#" class="wBanners"><img src="/resources/image/advertisement/widthBanner2.jpg"></a>
		<div class="bannerBtnsWrap">
			<button class="bannerBtns" id="prevBtnH">&lt;</button>
			<button class="bannerBtns" id="nextBtnH">&gt;</button>
		</div>
		<!-- <button class="bannerBtns" id="closeAdBtnH">X</button> -->
	</div>
	<div class="list_pan">
		<div class="logo">Today</div>
		<br>
		<div class="Reservation">
			<div class="list">
				<div>A</div>
				<div style="height: 70%">
					<div class="ReserList">
						<div>No.</div>
						<div>Name</div>
						<div>EndTime</div>
						<div>Modi</div>
					</div>
					<div class="ReserList">
						<c:forEach items="${list1 }" var="l" varStatus="i">
							<div>${i.count }</div>
							<div>${l.name }</div>
							<div>${l.reserEnd }</div>
							<div style="display: none">${l.reserNo }</div>
							<div>
							
							<%if(session.getAttribute("s")!=null){%>
								<c:if test="${l.reserStudent eq s.studentNo}">
									<input style="width: 30px;" type="button" onclick="cancle(${l.reserNo })" value="x" />
								</c:if>
							<%} %>
							</div>
							
							
						</c:forEach>
					</div>
				</div>
				<div style="height: 20%">
					<p class="reser_key">수령인</p>
					<hr width="80%" style="margin: 0 auto;  margin-bottom: 10px" />
					<%=request.getAttribute("key1") %>
				</div>
			</div>
			<div class="list">
				<div>B</div>
				<div style="height: 70%">
					<div class="ReserList">
						<div>No.</div>
						<div>Name</div>
						<div>EndTime</div>
						<div>Modi</div>
					</div>
					<div class="ReserList">
						<c:forEach items="${list2 }" var="l" varStatus="i">
							<div>${i.count }</div>
							<div>${l.name }</div>
							<div>${l.reserEnd }</div>
							<div>
								<%if(session.getAttribute("s")!=null){%>
								<c:if test="${l.reserStudent eq s.studentNo}">
									<input style="width: 30px;" type="button" onclick="cancle(${l.reserNo })" value="x" />
								</c:if>
								<%} %>
							</div>
						</c:forEach>
					</div>
				</div>
				<div style="height: 20%">
					<p class="reser_key">수령인</p>
					<hr width="80%" style="margin: 0 auto; margin-bottom: 10px" />
					<%=request.getAttribute("key2") %>
				</div>
			</div>
			<div class="list">
				<div>C</div>
				<div style="height: 70%">
					<div class="ReserList">
						<div>No.</div>
						<div>Name</div>
						<div>EndTime</div>
						<div>Modi</div>
					</div>
					<div class="ReserList">
						<c:forEach items="${list3 }" var="l" varStatus="i">
							<div>${i.count }</div>
							<div>${l.name }</div>
							<div>${l.reserEnd }</div>
							<div>
							<%if(session.getAttribute("s")!=null){%>
								<c:if test="${l.reserStudent eq s.studentNo}">
									<input style="width: 30px;" type="button" onclick="cancle(${l.reserNo })" value="x" />
								</c:if>
							<%} %>
							</div>
						</c:forEach>
					</div>
				</div>
				<div style="height: 20%">
					<p class="reser_key">수령인</p>
					<hr width="80%" style="margin: 0 auto;  margin-bottom: 10px" />
					<%=request.getAttribute("key3") %>
				</div>
			</div>

			
		</div>
	</div>


	<!-- 예약창 -->
	<%if(session.getAttribute("s") != null){ %>
	<div class="service" style="display: none">
		<div class="service_modal">
			<div class="logo">예약</div>
			<form action="/insertReser.do" method="post">
				<div class="service_info">
					<div class="info_ser" style="display: none;">
						학생번호 <input type="text" name="reserStudent" class="service_name"
						<%if(session.getAttribute("s") != null){ %>
							value="<%=s.getStudentNo()%>" />
							<%} %>
					</div>

					<div class="info_ser">
						이름 <input type="text" class="service_name"
						<%if(session.getAttribute("s") != null){ %>
							value="<%=s.getStudentName()%>" />
							<%} %>
					</div>
				</div>
				<div class="service_info">
					<div class="info_ser">
						클래스 <input type="text" class="service_class"
						<%if(session.getAttribute("s") != null){ %>
							value="<%=s.getStudentClass()%>" />
							<%} %>
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
								<option>06:20</option>
								<option>04:20</option>
							</select>
						</div>
					</div>
					<div class="service_info">
						<div class="info_ser" style="margin-left: 10px;">
							종료시간 <select name="reserEnd"
								style="width: 104px; margin-left: 20px;">
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
	<%}%>
	<!-- footer -->
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
<script>
function cancle(No){
	if(confirm("자습을 취소하시겠습니까?")){
		location.href="/reserDelete.do?studentNo="+No;
	}
}
var stu = "<c:out value = '${sessionScope.s.studentNo}' />";
console.log(stu);
 document.addEventListener("DOMContentLoaded", function () {
      var calendarEl = document.getElementById("test");

      test = new FullCalendar.Calendar(calendarEl, {
        plugins: ["interaction", "dayGrid"],
        defaultDate: "2021-06-06",
        editable: true,
        eventLimit: true,
        
        dateClick: function (data) {
          if(stu != ""){
            $(".service").css("display", "block");
	          $(".service_date").val(data.dateStr);
	          console.log(data.dateStr);
          }else{
        	  alert("로그인 후 이용이 가능합니다.");
              location.href = "/";
          }
        },
      });
      test.render();
    });
</script>
</html>








