<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/resources/css/reservation/packages/core/main.css" rel="stylesheet" />
<link href="/resources/css/reservation/packages/daygrid/main.css" rel="stylesheet" />

<script src="/resources/css/reservation/packages/core/main.js"></script>
<script src="/resources/css/reservation/packages/interaction/main.js"></script>
<script src="/resources/css/reservation/packages/daygrid/main.js"></script>

<!-- 미니달력 -->
<link rel="stylesheet"href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="/resources/demos/style.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link href="/resources/css/reservation/reservation.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
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
          console.log(data.dateStr);
        },
      });
      test.render();
    });
  </script>
  <style>
    
  </style>
  <body>
    <div class="wrap">
        <div class="pan">
          <div class="header">
            <div>
              <div class="logo">DingCo</div>
            </div>
          </div>
  
          <div class="content" style="width: 900px; margin: 0 auto"></div>
            <!-- <div id="calendar"></div> -->
            <div id="test">test</div>
          <div>
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
              </div>
            </div>
  
            <div class="service" style="display: none;">
              <div class="service_modal">
                <div class="logo">예약</div>
                <form action="#" method="post">
                  <div class="service_info">
                    <div class="info_ser">
                      이름 <input type="text" name="name" />
                    </div>
                  </div>
                  <div class="service_info">
                    <div class="info_ser">
                      클래스 <input type="text" name="class" />
                    </div>
                  </div>
                  <div class="service_info">
                    <div class="info_ser">
                      Date: <input type="text" id="datepicker" />
                    </div>
                  </div>
                  <div>
                    <div class="service_info">
                      <div class="info_ser">
                        자습내용 <input type="text" name="name"></input>
                      </div>
                    </div>
                  </div>
                  <input class="insert_btn" type="button" value="등록" />
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
      </div>
  </body>
</html>
