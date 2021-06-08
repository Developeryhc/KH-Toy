<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/resources/css/reservation/menuBar.css" rel="stylesheet" type="text/css" />

<style>
* {
  margin: 0;
  padding: 0;
}

body {
  position: relative;
  width: 100%;
  height: 100vh;
  font-family: "Montserrat";
  background-color: rgb(238, 238, 238);
  background-size: cover;
  overflow: hidden;
  z-index: 1;
  overflow: scroll;
}

h1 {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: rgba(255, 255, 255, 0.8);
  font-size: 3rem;
  text-transform: uppercase;
  letter-spacing: 5px;
  text-shadow: 0 2px 15px rgba(0, 0, 0, 0.2);
  white-space: nowrap;
  z-index: 3;
}

nav {
  --transition-time: 500ms;
  position: absolute;
  width: 250px;
  height: 100%;
  display: flex;
  align-items: center;
  background: rgba(0, 0, 0, 0.45);
  backdrop-filter: blur(20px);
  transform: translateX(-100%);
  transition: all 800ms cubic-bezier(0.8, 0, 0.33, 1);
  z-index: 4;
}
nav a {
  text-transform: uppercase;
  font-size: 1.4rem;
  font-weight: 900;
  letter-spacing: 3px;
  text-decoration: none;
  user-select: none;
  color: #fff;
}
nav .nav-links {
  --link-height: 60px;
  position: relative;
  width: 100%;
}
nav .nav-links li {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  width: 100%;
  height: var(--link-height);
  list-style: none;
  opacity: 0;
  transform: translateX(-50%);
  transition: all var(--transition-time) cubic-bezier(0.8, 0, 0.33, 0.9);
  transition-delay: calc(30ms + var(--delay));
  cursor: pointer;
  z-index: 8;
}
nav .nav-links li:hover {
  color: rgba(255, 255, 255, 0.85);
}
nav .nav-links li a {
  pointer-events: none;
}
nav .nav-links li ol {
  display: none;
}
nav .nav-links .hover-el {
  position: absolute;
  width: 100%;
  height: var(--link-height);
  top: var(--y);
  left: var(--x);
  opacity: 0;
  background: radial-gradient(
    circle at var(--mousex) var(--mousey),
    rgba(0, 0, 0, 0.15) 0%,
    rgba(0, 0, 0, 0.45) 100%
  );
  transition: all 200ms cubic-bezier(0.215, 0.61, 0.355, 1);
  pointer-events: none;
  z-index: 5;
}
nav .sub-menu {
  --link-height: 60px;
  position: absolute;
  top: 50%;
  left: 0;
  width: 100%;
  transform: translateY(-50%);
}
nav .sub-menu ol {
  list-style: none;
}
nav .sub-menu ol li {
  display: flex;
  justify-content: center;
  align-items: center;
  height: var(--link-height);
  transition: all var(--transition-time) ease;
  transition-delay: calc(30ms + var(--delay));
  cursor: pointer;
}
nav .sub-menu ol li:hover {
  background: rgba(0, 0, 0, 0.25);
}
nav .sub-menu ol li.off-menu {
  opacity: 0;
  transform: translateY(30%);
}
nav .sub-menu ol li.on-menu {
  opacity: 1;
  transform: translateY(0%);
}
nav .sub-menu ol li a {
  font-size: 1.2rem;
  font-weight: normal;
}
nav .sub-menu-btn {
  --icon-width: 40px;
  position: absolute;
  top: 6%;
  left: 10%;
  width: var(--icon-width);
  height: var(--icon-width);
  background: rgba(0, 0, 0, 0.25);
  border-radius: 5px;
  opacity: 0;
  transform: translateX(-100%);
  transition: all var(--transition-time) cubic-bezier(0.8, 0, 0.33, 1.25);
  cursor: pointer;
  z-index: 8;
  pointer-events: none;
}
nav .sub-menu-btn .line {
  width: calc(var(--icon-width) - 28px);
  height: 2px;
  background: #fff;
  display: flex;
  flex-direction: column;
  margin: 12px 10px;
}
nav .sub-menu-btn .line__1 {
  transform-origin: left;
  transform: rotate(-35deg) translate(-1px, 8px);
}
nav .sub-menu-btn .line__2 {
  transform-origin: left;
  transform: rotate(35deg) translate(-1px, -8px);
}
nav .menu-btn {
  display: flex;
  justify-content: center;
  align-items: center;
  --icon-width: 25px;
  position: absolute;
  top: 0%;
  right: -25%;
  width: calc(var(--icon-width) + 25px);
  height: calc(var(--icon-width) + 25px);
  flex-direction: column;
  transition: all calc(100ms + var(--transition-time))
    cubic-bezier(0.8, 0, 0.33, 1.25);
  cursor: pointer;
  z-index: 10;
}
nav .menu-btn.close .line__1 {
  transform: rotate(45deg) translate(2px, -3px);
}
nav .menu-btn.close .line__2 {
  transform: rotate(-45deg);
}
nav .menu-btn.close .line__3 {
  transform: rotate(45deg) translate(-2px, 3px);
}
nav .menu-btn .line {
  width: var(--icon-width);
  background: rgb(65, 65, 65);
  height: 2px;
  margin: 3px 0;
  transition: all calc(var(--transition-time) + 100ms)
    cubic-bezier(0.9, 0, 0.33, 1);
}
nav .menu-btn .line__1 {
  width: var(--icon-width);
  transform-origin: left;
}
nav .menu-btn .line__2 {
  width: var(--icon-width);
  transform-origin: center;
}
nav .menu-btn .line__3 {
  width: var(--icon-width);
  transform-origin: right;
}
nav.nav-open {
  transform: translateX(0%);
}
nav.nav-open .menu-btn {
  right: 10%;
}
nav.nav-open .nav-links li {
  transform: translateX(0);
  opacity: 1;
}
nav.sub-menu-open .sub-menu-btn {
  opacity: 1;
  transform: translateX(0);
  pointer-events: all;
}
nav.sub-menu-open .nav-links li {
  pointer-events: none;
  opacity: 0;
  transform: translateY(-10%);
}
nav.sub-menu-open .nav-links .hover-el {
  opacity: 0;
}

</style>
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