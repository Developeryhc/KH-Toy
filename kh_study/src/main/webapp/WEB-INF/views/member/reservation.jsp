<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 메인달력 -->
<link href="/resources/css/reservation/packages/core/main.css" rel="stylesheet" />
<link href="/resources/css/reservation/packages/daygrid/main.css" rel="stylesheet" />
<script src="/resources/css/reservation/packages/core/main.js"></script>
<script src="/resources/css/reservation/packages/interaction/main.js"></script>
<script src="/resources/css/reservation/packages/daygrid/main.js"></script>

<!-- css -->
<link href="/resources/css/reservation/reservation.css" rel="stylesheet" type="text/css" />


<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <!-- 미니달력 -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  </head>
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      var calendarEl = document.getElementById("test");

      test = new FullCalendar.Calendar(calendarEl, {
        plugins: ["interaction", "dayGrid"],
        defaultDate: "2021-06-06",
        editable: true,
        eventLimit: true,
        //   dateClick: function () {
        //     alert("제발");
        //     },
        dateClick: function (data) {
          $('.service').css("display","block");
          $('.service_date').val(data.dateStr);
          console.log(data.dateStr);
        },
      });
      test.render();
    });
    $(function(){
      $( "#datepicker" ).datepicker();

      $(".insert_btn").click(function(){
          $(".service").css("display","none");
        });

        //mini date
        $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd' //Input Display Format 변경
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
        ,changeYear: true //콤보박스에서 년 선택 가능
        ,changeMonth: true //콤보박스에서 월 선택 가능                
        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
        ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
        ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
        ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
        
      });
    })
    
  </script>
  <style>
    
  </style>
  <body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
    <div class="wrap">
        <div class="pan">
			<div class="header">
				<div>
					<div class="logo">DingCo</div>
				</div>
			</div>
         <div class="content" style="width: 900px; margin: 0 auto"></div>
           <!-- <div id="calendar"></div> -->
           <div id="test"></div>
           <div class="list_pan">
             <div class="logo">Today</div>
             <hr width="80%" />
             <div class="Reservation">
               <div class="list">
                 <div>A</div>
                 <div style="height: 70%">
                   <div class="ReserList">
                     <div>No.</div>
                     <div>Name</div>
                     <div>Content</div>
                     <div>Modi</div>
                   </div>
                   <div class="ReserList">
                     <div>1</div>
                     <div>서준식</div>
                     <div>Mybatis</div>
                     <div><input type="button" onclick="" value="cancle" /></div>
                   </div>
                 </div>
                 <div style="height: 20%">
                   수령인
                   <hr width="80%" />
                   서준식
                 </div>
               </div>
               <div class="list">
                 <div>B</div>
                 <div style="height: 70%">
                   <div class="ReserList">
                     <div>No.</div>
                     <div>Name</div>
                     <div>Content</div>
                     <div>Modi</div>
                   </div>
                   <div class="ReserList">
                     <div>1</div>
                     <div>서준식</div>
                     <div>Mybatis</div>
                     <div><input type="button" onclick="" value="cancle" /></div>
                   </div>
                 </div>
                 <div style="height: 20%">
                   수령인
                   <hr width="80%" />
                   서준식
                 </div>
               </div>
               <div class="list">
                 <div>C</div>
                 <div style="height: 70%">
                   <div class="ReserList">
                     <div>No.</div>
                     <div>Name</div>
                     <div>Content</div>
                     <div>Modi</div>
                   </div>
                   <div class="ReserList">
                     <div>1</div>
                     <div>서준식</div>
                     <div>Mybatis</div>
                     <div><input type="button" onclick="" value="cancle" /></div>
                   </div>
                 </div>
                 <div style="height: 20%">
                   수령인
                   <hr width="80%" />
                   서준식
                 </div>
               </div>
             </div>
           </div>
 
           <div class="service" style="display: none;">
             <div class="service_modal">
               <div class="logo">예약</div>
               <form action="/insertReservation.do" method="post">
                 <div class="service_info">
                   <div class="info_ser">
                     이름 <input type="text" name="name" class="service_name" value=""/>
                   </div>
                 </div>
                 <div class="service_info">
                   <div class="info_ser">
                     클래스 <input type="text" name="class" class="service_class" />
                   </div>
                 </div>
                 <div class="service_info">
                   <div class="info_ser">
                     Date: <input type="text" id="datepicker" class="service_date"/>
                   </div>
                 </div>
                 <div>
                   <div class="service_info">
                     <div class="info_ser">
                       자습내용 <input type="text" name="name"></input>
                     </div>
                   </div>
                 </div>
                 <input class="insert_btn" type="submit" value="등록" />
                 <input class="insert_btn" type="button" value="취소" />
               </form>
             </div>
           </div>
    		<div class="footer">
				<div class="foot_logo">Director</div>
				<div class="foot_pan">
					<div class="foot_we">
						<div>SeoJunsik</div>
						<div>tjwnstlr3459@naver.com</div>
						<div>#Representative</div>
					</div>
					<div class="foot_we">
						<div>
							<div>SeoJunsik</div>
							<div>tjwnstlr3459@naver.com</div>
							<div>#Representative</div>
						</div>
					</div>
					<div class="foot_we">
						<div>
							<div>SeoJunsik</div>
							<div>tjwnstlr3459@naver.com</div>
							<div>#Representative</div>
						</div>
					</div>
				</div>
			</div>
        </div>
	</div>
   		<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
  </body>
</html>

