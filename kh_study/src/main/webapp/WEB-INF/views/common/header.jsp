<%@page import="kr.or.student.model.vo.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	Student s = (Student)session.getAttribute("s");
	%>
<link href="/resources/css/reservation/reservation_header.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/resources/css/common/header.css">

<!-- jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
<!-- JSTL Core -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!-- reservation.css -->
<link href="/resources/css/reservation/reservation.css" rel="stylesheet" type="text/css" />
<script src="/resources/javascript/reservation/header.js" type="text/javascript"></script>


<!-- 메인달력 -->
<link href="/resources/css/reservation/packages/core/main.css" rel="stylesheet" />
<link href="/resources/css/reservation/packages/daygrid/main.css" rel="stylesheet" />
<script src="/resources/css/reservation/packages/core/main.js"></script>
<script src="/resources/css/reservation/packages/interaction/main.js"></script>
<script src="/resources/css/reservation/packages/daygrid/main.js"></script>

<!-- 미니달력 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet" href="/resources/demos/style.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<meta charset="UTF-8" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css"/>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Montserrat&amp;display=swap"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    

<nav>
  <div class="menu-btn">
    <div class="line line__1"></div>
    <div class="line line__2"></div>
    <div class="line line__3"></div>
  </div>

  <div class="sub-menu-btn">
    <div class="line line__1"></div>
    <div class="line line__2"></div>
  </div>

  <ul class="nav-links">
    <li class="link">
      <a href="#">Home</a>
    </li>
    <li class="link">
      <a href="#">RESERVATION</a>
      <ol>
        <li><a href="#">designers</a></li>
        <li><a href="#">developers</a></li>
      </ol>
    </li>
    <li class="link">
      <a href="#">Work</a>
      <ol>
        <li><a href="#">web</a></li>
        <li><a href="#">graphic </a></li>
        <li><a href="#">apps </a></li>
      </ol>
    </li>
    <li class="link">
      <a href="#">Contact</a>
      <ol>
        <li><a href="#">Email</a></li>
        <li><a href="#">Social</a></li>
      </ol>
    </li>
    <li class="link">
      <a href="#">follow me</a>
      <ol>
        <li>
          <a target="_blank" href="https://twitter.com/DevLoop01">
            Twitter <i class="fab fa-twitter"></i>
          </a>
        </li>
        <li>
          <a target="_blank" href="https://codepen.io/dev_loop/">
            Codepen <i class="fab fa-codepen"></i>
          </a>
        </li>
      </ol>
    </li>
  </ul>
</nav>
<div class="header">
  <div>
    <div class="main_logo"><img src="/resources/image/main/logo(white)2.png"></div>
  </div>
</div>