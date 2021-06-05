<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <!-- 로그인 -->
        <div class="modalBox-login">
            <div class="videoBox">
            </div>
            <div class="loginBox">
                <h2 class="headText">SING IN</h2>
                <form action="#" method="post">
                    <input type="text" name="memberId" placeholder="ID" autocomplete="off">
                    <input type="password" name="memberPw" placeholder="Password">
                    <button type="button" id="loginBtn">Login</button>
                </form>
                <span class="linkBox">Not a Member?<a href="/joinFrm.do" class="signBtn">SIGN UP</a></span>
                <span class="linkBox">Forget ID?<a href="/searchInfo.do">Go</a></span>
                <span class="linkBox">Forget you Password?<a href="/searchInfo.do">Go</a></span>
            </div>
        </div>
        <!-- 회원가입 -->
        <div class="modalBox-signUp">
            <h2 class="headText">SIGN UP</h2>
            <div class="backImg"></div>
            <form action="/join.do" method="post" class="joinForm">
                <input type="text" name="studentId" id="studentId" class="sign-inputs" placeholder="ID" minlength="8" maxlength="16" autocomplete="off">
                <input type="password" name="studentPw" id="studentPw" class="sign-inputs" placeholder="PASSWORD" minlength="10" maxlength="20">
                <input type="password" id="pwChk" class="sign-inputs" placeholder="Re-Enter PASSWORD" minlength="10" maxlength="20">
                <input type="text" name="studentName" id="studentName" class="sign-inputs" placeholder="Name" minlength="2">
                <div class="sign-inputs">
                    <span>Phone</span>
                    <span>Class</span>
                    <select name="studentClass" id="stuClass">
                        <option value="A">A반</option>
                        <option value="B">B반</option>
                        <option value="C">C반</option>
                        <option value="D">D반</option>
                        <option value="E">E반</option>
                    </select>
                </div>
                <div class="sign-inputs">
                    <input type="text" name="phone1" class="phones" minlength="3" maxlength="3">-
                    <!-- <input type="text" name="phone1" class="phones" minlength="3" maxlength="3" readonly value="010">- -->
                    <input type="text" name="phone2" class="phones" minlength="3"  maxlength="4">-
                    <input type="text" name="phone3" class="phones" minlength="4" maxlength="4">
                </div>
                <button type="button" id="signUpBtn">SIGN UP !</button>
            </form>
        </div>
    </div>
</body>

</html>