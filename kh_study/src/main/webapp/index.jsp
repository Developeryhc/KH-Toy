<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<!-- 메인페이지 js -->
	<script src="/resources/javascript/main/main.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="/resources/css/main/main.css" />
	<!-- 로그인, 가입 css -->
	<link rel="stylesheet" href="/resources/css/main/login_sign.css">
</head>
<body>
	<c:choose>
	<c:when test="${empty sessionScope.s.studentId}">
    <div id="loader"></div>
    <div id="soup-container">
        <div id="segments">
        </div>
        <div id="soup-nav">
            <span id="soup-prev"><img src="/resources/image/main/left.png" class="fa fa-arrow-circle-o-left" aria-hidden="true"></img></span>
            <span id="soup-next"><img src="/resources/image/main/right.png" class="fa fa-arrow-circle-o-right"
                    aria-hidden="true"></img></span>
        </div>
    </div>
    <jsp:include page="/WEB-INF/views/common/loginSign.jsp"/>
    </c:when>
    <c:otherwise>
    	<!-- 세션에 객체 존재 시, 예약페이지로 이동 -->
	    <script>
	    	location.href="/reservationFrm.do";
	    </script>
    </c:otherwise>
    </c:choose>
    
</body>

</html>