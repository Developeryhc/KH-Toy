<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Document</title>
  </head>
  <script>
   
  </script>
  <body>
   <!-- header -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>
   <div class="content" style="width: 900px; margin: 0 auto"></div>
   <!-- <div id="calendar"></div> -->
   <div id="test" style="width: 800px"></div>
   
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

     <div class="service" style="display: none">
       <div class="service_modal">
         <div class="logo">예약</div>
         <form action="#" method="post">
           <div class="service_info">
             <div class="info_ser">
               이름
               <input
                 type="text"
                 name="name"
                 class="service_name"
                 value=""
               />
             </div>
           </div>
           <div class="service_info">
             <div class="info_ser">
               클래스
               <input type="text" name="class" class="service_class" />
             </div>
           </div>
           <div class="service_info">
             <div class="info_ser">
               Date:
               <input type="text" id="datepicker" class="service_date" />
             </div>
           </div>
           <div>
             <div class="service_info">
               <div class="info_ser">
                 자습종료시간
                 <select type="text" name="name">
                   <option>6:00</option>
                   <option>7:00</option>
                   <option>8:00</option>
                   <option>9:00</option>
                 </select>
               </div>
             </div>
           </div>
           <input class="insert_btn" type="button" value="등록" />
           <input class="insert_btn" type="button" value="취소" />
         </form>
       </div>
     </div>
   </div>
   <!-- footer -->
     <%@ include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>