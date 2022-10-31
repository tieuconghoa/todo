<template>
  <div class="header">
    <header>
      <div class="topnav" id="myTopnav">
        <a class="logo">LEVIOOSA<em>.COM</em></a>
        <a @click="openSearch"><i class="fa fa-search"></i></a>
        <a href="#"><i class="fa fa-user"></i></a>
        <a href="#"><i class="fa fa-shopping-cart"></i></a>
        <a href="#">Grocery Menu</a>
        <div class="dropdown">
          <button class="dropbtn">
            Boxes <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="#">Select Box</a>
            <a href="#">Create Box</a>
            <a href="#">Finalize Box</a>
          </div>
        </div>
        <a href="#">Contact</a>
        <a href="#">About</a>
        <a href="#" class="active">Home</a>
        <a
          href="javascript:void(0);"
          style="font-size: 15px"
          class="icon"
          @click="myFunction"
          >&#9776;</a
        >
      </div>
    </header>
    <div id="navbar">
      <div class="slide-menu">
        <a class="logo">JAWARIBOX<em>.COM</em></a>
        <a @click="openSearch"><i class="fa fa-search"></i></a>
        <a href="#"><i class="fa fa-user"></i></a>
        <a href="#"><i class="fa fa-shopping-cart"></i></a>
        <a href="#">Grocery Menu</a>
        <div class="dropdown">
          <button class="dropbtn">
            Boxes <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a href="#">Select Box</a>
            <a href="#">Create Box</a>
            <a href="#">Finalize Box</a>
          </div>
        </div>
        <a href="#">Contact</a>
        <a href="#">About</a>
        <a href="#" class="active">Home</a>
      </div>
    </div>
    <div id="myOverlay" class="overlay">
      <span class="closebtn" @click="closeSearch" title="Close Overlay"
        >×</span
      >
      <div class="overlay-content animate">
        <form action="/action_page.php">
          <input type="text" placeholder="Search.." name="search" />
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    openSearch() {
      document.getElementById("myOverlay").style.display = "block";
    },
    closeSearch() {
      document.getElementById("myOverlay").style.display = "none";
    },
    myFunction() {
      var x = document.getElementById("myTopnav");
      if (x.className === "topnav") {
        x.className += " responsive";
      } else {
        x.className = "topnav";
      }
    }
  },
  created() {
    //SHOW MENU BAR ON SCROLL
    window.onscroll = function () {
      scrollFunction();
    };
    function scrollFunction() {
      if (
        document.body.scrollTop > 100 ||
        document.documentElement.scrollTop > 100
      ) {
        document.getElementById("navbar").style.top = "0";
      } else {
        document.getElementById("navbar").style.top = "-60px";
      }
    }
  },
};
</script>
<style scoped>
html {
  scroll-behavior: smooth;
}
:root {
  scrollbar-color: rgb(210, 210, 210) rgb(46, 54, 69) !important;
  scrollbar-width: thin !important;
}
body {
  margin: 0;
  overflow-x: hidden;
  font-family: "Kanit", sans-serif;
}

/*DEFAULT*/
a {
  text-decoration: none;
}
li {
  list-style: none;
}
em {
  font-style: normal;
  color: #138275;
}
p {
  font-size: 1.2em;
  color: rgba(1, 1, 1, 0.6);
}
.title {
  font-size: 3em;
  font-family: "Archivo Black", sans-serif;
}
.sub-title {
  font-size: 1em;
  font-family: "Kanit", sans-serif;
  color: gray;
}
.btn1 {
  padding: 10px 20px;
  box-shadow: 0px 3px 8px -3px rgba(1, 1, 1, 0.5);
  outline: none;
  border: 0;
  background: #138275;
  border-radius: 20px;
  color: #fff;
  font-weight: 400;
  text-align: center;
  transition: 0.5s;
}
.btn1:hover {
  background-color: #1e1e1e;
}
.btn2 {
  padding: 5px 20px;
  box-shadow: 0px 3px 8px -3px rgba(1, 1, 1, 0.5);
  outline: none;
  border: 0;
  background: #4033ff;
  border-radius: 20px;
  color: #fff;
  font-weight: 400;
  text-align: center;
  transition: 0.5s;
}
.btn2:hover {
  background: #3d35ec;
}
@media (max-width: 900px) {
  .btn1 {
    padding: 5px 10px;
  }
}
.banner {
  text-align: center;
}
.inline-photo {
  opacity: 0;
  transform: translateY(4em) rotateZ(-0deg);
  transition: transform 4s 0.25s cubic-bezier(0, 1, 0.3, 1),
    opacity 0.3s 0.25s ease-out;
  will-change: transform, opacity;
}
.inline-photo.is-visible {
  opacity: 1;
  transform: rotateZ(-0deg);
}
.inline-photo2 {
  opacity: 0;
  transform: translateX(-15em) rotateZ(-0deg);
  transition: transform 4s 0.25s cubic-bezier(0, 1, 0.3, 1),
    opacity 0.3s 0.25s ease-out;
  will-change: transform, opacity;
}
.inline-photo2.is-visible2 {
  opacity: 1;
  transform: rotateZ(-0deg);
}
.inline-photo3 {
  opacity: 0;
  transform: translateX(15em) rotateZ(-0deg);
  transition: transform 4s 0.25s cubic-bezier(0, 1, 0.3, 1),
    opacity 0.3s 0.25s ease-out;
  will-change: transform, opacity;
}
.inline-photo3.is-visible3 {
  opacity: 1;
  transform: rotateZ(-0deg);
}
.ml9 {
  position: relative;
  font-weight: 200;
  font-size: 3.5em;
}
.ml9 .text-wrapper {
  position: relative;
  display: inline-block;
  padding-top: 0.2em;
  padding-right: 0.05em;
  padding-bottom: 0.1em;
  overflow: hidden;
}
.ml9 .letter {
  transform-origin: 50% 100%;
  display: inline-block;
  line-height: 1em;
}

/*LOADER*/
/* Center the loader */
.loading {
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: linear-gradient(#9ad5ff, #0071d6);
}

.loader {
  position: relative;
  width: 180px;
  height: 180px;
  display: flex;
  justify-content: center;
  align-items: center;
  transform-style: preserve-3d;
  transform: perspective(500px) rotatex(45deg);
}

.loader span {
  position: absolute;
  display: block;
  border: 15px solid #fff;
  box-sizing: border-box;
  border-radius: 50%;
  box-shadow: 0 10px 0 #e0e0e0, inset 0 10px 0 #e0e0e0;
  animation: animate 4.5s ease-in-out infinite;
}

.loader span:nth-child(1) {
  animation-delay: 0s;
}

.loader span:nth-child(2) {
  animation-delay: 1.5s;
}

.loader span:nth-child(3) {
  animation-delay: 3s;
}

@keyframes animate {
  0% {
    transform: translatez(-100px);
    width: 100%;
    height: 100%;
  }
  25% {
    transform: translatez(100px);
    width: 100%;
    height: 100%;
  }
  50% {
    transform: translatez(100px);
    width: 35%;
    height: 35%;
  }
  75% {
    transform: translatez(-100px);
    width: 35%;
    height: 35%;
  }
  100% {
    transform: translatez(-100px);
    width: 100%;
    height: 100%;
  }
}

/* Add animation to "page content" */
.page-animate {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s;
}

@-webkit-keyframes animatebottom {
  from {
    bottom: 0px;
    opacity: 0;
  }
  to {
    bottom: 0px;
    opacity: 1;
  }
}

@keyframes animatebottom {
  from {
    bottom: 0px;
    opacity: 0;
  }
  to {
    bottom: 0;
    opacity: 1;
  }
}

#myPageShow {
  display: none;
}

/*NAV-BAR*/
header {
  position: static;
  top: 0;
  width: 100%;
  z-index: 999;
}

.topnav {
  overflow: hidden;
  width: 90%;
  margin: auto;
  background-color: #fff;
  z-index: 9999;
}

.topnav a {
  float: right;
  display: block;
  color: #000;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  transition: 0.5s;
}

.topnav .logo {
  float: left;
  font-family: "Fredoka One", cursive;
  color: #000;
  font-size: 2em;
}

.active {
  color: gray;
}

.topnav .icon {
  display: none;
}

.dropdown {
  float: right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 17px;
  border: none;
  outline: none;
  color: #000;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.topnav a:hover,
.dropdown:hover .dropbtn {
  color: #138275;
}

.dropdown-content a:hover {
  background-color: #ddd;
  color: black;
}

.dropdown:hover .dropdown-content {
  display: block;
}

@media screen and (max-width: 900px) {
  .topnav {
    background: #fff;
    width: 100%;
  }
  .topnav a:not(:first-child),
  .dropdown .dropbtn {
    display: none;
  }
  .topnav a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 900px) {
  .topnav.responsive {
    position: relative;
  }
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
  .topnav.responsive .dropdown {
    float: none;
  }
  .topnav.responsive .dropdown-content {
    position: relative;
  }
  .topnav.responsive .dropdown .dropbtn {
    display: block;
    width: 100%;
    text-align: left;
  }
  .topnav .logo {
    font-size: 1.5em;
  }
}
#navbar {
  background-color: #fff;
  position: fixed;
  top: -60px;
  width: 100%;
  display: block;
  z-index: 9;
  box-shadow: 0px 6px 16px -6px rgba(1, 1, 1, 0.5);
  transition: top 0.3s;
}

#navbar a {
  float: right;
  display: block;
  color: #000;
  text-align: center;
  padding: 15px;
  text-decoration: none;
  font-size: 17px;
}

#navbar .logo {
  float: left;
}

#navbar a:hover {
  background-color: #ddd;
  color: black;
}

.slide-menu .dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
  z-index: 1;
}

.slide-menu .dropdown .dropbtn {
  font-size: 17px;
  border: none;
  outline: none;
  color: #000;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

@media (max-width: 900px) {
  #navbar {
    display: none;
  }
}


@keyframes opaqTransition {
  3% {
    transform: translateX(0);
  }
  25% {
    transform: translateX(0);
  }
  28% {
    transform: translateX(-700px);
  }
  100% {
    transform: translateX(-700px);
  }
}

@media (max-width: 720px) {
}

@keyframes opaqTransition {
  3% {
    transform: translateX(0);
  }
  25% {
    transform: translateX(0);
  }
  28% {
    transform: translateX(-700px);
  }
  100% {
    transform: translateX(-700px);
  }
}

@media (max-width: 600px) {
}

@media (max-width: 500px) {
}

/*SEARCH MODAL*/
.overlay {
  height: 100%;
  width: 100%;
  display: none;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0, 0, 0);
  background-color: rgba(0, 0, 0, 0.9);
}

.overlay-content {
  position: relative;
  top: 46%;
  width: 80%;
  text-align: center;
  margin-top: 30px;
  margin: auto;
}

.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
  cursor: pointer;
  color: white;
}

.overlay .closebtn:hover {
  color: #ccc;
}

.overlay input[type="text"] {
  padding: 15px;
  font-size: 17px;
  border: none;
  float: left;
  width: 70%;
  background: white;
}

.overlay input[type="text"]:hover {
  background: #f1f1f1;
}

.overlay button {
  float: left;
  width: 20%;
  padding: 15px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.overlay button:hover {
  background: #bbb;
}

/* ZOOM ANIMATION */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s;
}

@-webkit-keyframes animatezoom {
  from {
    -webkit-transform: scale(0);
  }
  to {
    -webkit-transform: scale(1);
  }
}

@keyframes animatezoom {
  from {
    transform: scale(0);
  }
  to {
    transform: scale(1);
  }
}
.topnav a:hover, .dropdown:hover .dropbtn {
color:#138275;
}

.credits {
  background: #1e1e1e;
  color: gray;
  font-size: 13px;
  padding: 10px;
  position: fixed;
  right: 0;
  bottom: 20px;
}
</style>