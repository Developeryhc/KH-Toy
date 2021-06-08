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
</head>
<link rel="stylesheet" type="text/css" href="/resources/css/main/main.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="/resources/javascript/main/main.js" type="text/javascript"></script>
<!-- 로그인, 가입 css -->
<link rel="stylesheet" href="/resources/css/main/login_sign.css">

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
    <!-- =================== 로그인, 가입 ===================== -->
    <div class="modal">
        <button id="closeModalBtn">
            <img src="/resources/image/buttons/closeBtn.png" alt="닫기">
        </button>
        <!-- 로그인 -->
        <div class="modalBox-login">
            <div class="videoBox">
                <div class="forgetModal">
                    <div class="forgetId">
                        <h3>Search ID</h3>
                        <input type="text" name="studentName" id="" class="forget-inputs" placeholder="Name" autocomplete="off">
                        <input type="text" name="phone" id="" class="forget-inputs" placeholder="Phone" autocomplete="off">
                        <button id="forgetIdBtn" class="forget-inputs">Search</button>
                    </div>
                    <div class="forgetPw">
                        <h3>Search Password</h3>
                        <input type="text" name="studentId" id="" class="forget-inputs" placeholder="ID" autocomplete="off">
                        <input type="text" name="phone" id="" class="forget-inputs" placeholder="Phone" autocomplete="off">
                        <button id="forgetPwBtn" class="forget-inputs">Next</button>
                    </div>
                </div>
            </div>
            <div class="loginBox">
                <h2 class="headText">SING IN</h2>
                <form action="#" method="post">
                    <input type="text" name="studentId" id="studentId" class="loginInfo" placeholder="ID" autocomplete="off">
                    <input type="password" name="studentPw" id="studentPw" class="loginInfo" placeholder="Password">
                    <span class="linkBox" id="idSaveBox"><input type="checkbox" name="idSaveChk" id="idSaveChk"><span>Check Id Remember</span></span>
                    <button type="button" id="loginBtn">Login</button>
                </form>
                <span class="linkBox">Not a Member?<a href="javascript:void(0)" id="signUpMove" class="signBtn">SIGN UP</a></span>
                <span class="linkBox">Forget ID?<a href="javascript:void(0)" id="forgetId">Go</a></span>
                <span class="linkBox">Forget you Password?<a href="javascript:void(0)" id="forgetPw">Go</a></span>
            </div>
        </div>
        <!-- 회원가입 -->
        <div class="modalBox-signUp">
            <h2 class="headText">SIGN UP</h2>
            <div class="backImg"></div>
            <form action="/join.do" method="post" class="joinForm">
                <span class="regs"></span>
                <input type="text" name="studentId" id="studentId" class="sign-inputs" placeholder="ID" minlength="8" maxlength="16" autocomplete="off">
                <span class="regs"></span>
                <input type="password" name="studentPw" id="studentPw" class="sign-inputs" placeholder="PASSWORD" minlength="10" maxlength="20">
                <input type="password" id="pwChk" class="sign-inputs" placeholder="Re-Enter PASSWORD" minlength="10" maxlength="20">
                <span class="regs"></span>
                <input type="text" name="studentName" id="studentName" class="sign-inputs" placeholder="Name" minlength="2">
                <div id="selectBox" class="sign-inputs">
                    <span>Phone</span>
                    <span>Class</span>
                    <!-- js로 select박스 만들어 추가 됨-->
                </div>
                <div class="sign-inputs">
                    <input type="text" name="phone1" class="phones" minlength="3" maxlength="3" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">-
                    <!-- <input type="text" name="phone1" class="phones" minlength="3" maxlength="3" readonly value="010">- -->
                    <input type="text" name="phone2" class="phones" minlength="3"  maxlength="4" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">-
                    <input type="text" name="phone3" class="phones" minlength="4" maxlength="4" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                </div>
                <button type="button" id="signUpBtn">SIGN UP !</button>
            </form>
        </div>
    </div>
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