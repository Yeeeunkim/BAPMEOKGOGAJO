<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트 스트랩 -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
   crossorigin="anonymous">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
   integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
   integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
   crossorigin="anonymous"></script>
<!-- jQuery -->

<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<!-- 폰트 -->
<script src="https://kit.fontawesome.com/7293f5b137.js"
   crossorigin="anonymous"></script>
<style>
#menuP{
  position: absolute;
  top: 20%;
  left: 25%;
  width: 50%;
  height: 40%;
  background: #C4C4C4;
  margin: auto;
  text-align:center;
}
.form-group{
   width: 70%;
   height: 30%;
   margin: auto;
}
#enrollArea {
   /*    border: 1px solid lightgray; */
   width: 80%;
   height: 600px;
   position: relative;
   margin: 0 auto;
   margin-top: 50px;
}
.enrollDiv {
   text-align: center;
   align-content: center;
}
.enrollBtn {
   display: block !important;
   margin: 0 auto !important;
   background: #F42B03 !important;
   border: 0px !important;
   width: 250px !important;
   height: 50px;
}
#info{
   position: absolute;
   left: 10%;
}
.input-info{
   display: inline;
}
.cInput {
   width: 30%;
}
.authBtn {
   margin: 0 auto !important;
   background: #F42B03 !important;
   border: 0px !important;
   color: white;
}
.enrollBtn {
   display: block !important;
   margin: 0 auto !important;
   background: #F42B03 !important;
   border: 0px !important;
   width: 250px !important;
   height: 50px;
}
.line{
   width: 60%;
   margin: auto;
   border: solid 2px gray;
}
#menu{
   margin: auto;
   width: 70%;
   text-align: center;
}
.menuPlus{
   display: block !important;
   margin: 0 auto !important;
      text-align: center;
      background: #F42B03;
   border: 0px;
      color: white;
  
}
#user{
	display: block; 
	margin: 0 auto; 
	width:70px; 
	height:70px;
	float:left;
}
#gps{
   width: 40px;
}
#map{
  top: 20%;
  width: 50%;
  height: 250px;
  background: #C4C4C4;
  margin: auto;
  text-align:center;
}
#btnR{
  background-color: #F42B03;
  border: none;
  color: white;
  text-align: center;
  float: right;
  width: 100px;
  height: 40px;
 }
 
 td {
   width: 390px !important;
 }
 #btnR{
  display: flex;
  align-items: center;
  justify-content: center;
}
.time{
	margin: auto;
	display: flex;
  align-items: center;
  justify-content: center;
}
#timeB{
  background-color: #F42B03;
  border: none;
  color: white;
  text-align: center;
  float: left;
  width: 100px;
  height: 40px;
}
#map{
	margin: auto;
	display: flex;
  align-items: center;
  justify-content: center;
  width: 70%;
  height: 30%;
}
</style>
</head>
<body style="font-family: 'Gugi';">
   <jsp:include page="../common/menubar.jsp" />
   
   <br><br>
          <h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 중식</h2>
          

   <!-- 사진, 지도 폼 -->
   
   <img src="<%= request.getContextPath() %>/resources/images/꼬치.png" id="menuP"/>
   
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   

   
   <div id="info">
      <h3>장첸 양꼬치 4.7</h3>
      <h5>전화  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   02-790-1108</h5>
      <h5>영업시간 &nbsp;&nbsp;&nbsp; 월-금 : 10:00 - 22:30</h5>
      <h5>휴무일  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 연중무휴</h5>
      <h5>웹사이트  &nbsp;&nbsp;&nbsp;&nbsp;식당 홈페이지로 바로가기(아이콘 유무확인)</h5>
      
      
      
   </div>
   <br><br><br>  <br><br><br>  <br><br><br>  <br><br><br>
   
<!--    <div class="btn-group"> -->
       <div class="row">
       <div class="col-3"></div>
       <div class="col-2">
         <select class="form-select" aria-label="Default select example">
            <option value="1" selected="selected">12월 1일</option>
            <option value="2">12월 2일</option>
            <option value="3">12월 3일</option>
            <option value="4">12월 4일</option>
            <option value="5">12월 5일</option>
            <option value="6">12월 6일</option>
         </select>
         </div>
         <div class="col-2">
         <select class="form-select" aria-label="Default select example">
            <option value="1" selected="selected">오후 12:30</option>
            <option value="2">오후 13:00</option>
            <option value="3">오후 13:30</option>
            <option value="4">오후 14:00</option>
            <option value="5">오후 14:30</option>
            <option value="6">오후 15:00</option>
         </select>
         </div><div class="col-2">
         <select class="form-select" aria-label="Default select example">
            <option value="1" selected="selected">2명</option>
            <option value="2">1명</option>
            <option value="3">3명</option>
            <option value="4">4명</option>
            <option value="5">5명</option>
            <option value="6">6명</option>
         </select>
         </div>
         <div class="col-3"></div>
         </div>
<!--     </div> -->
   
  
   
    <!-- <div class="btn-group">
     <button type="button" class="btn btn-primary">Sony</button>
     <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
       <span class="caret"></span>
     </button>
     <div class="dropdown-menu">
       <a class="dropdown-item" href="#">Tablet</a>
       <a class="dropdown-item" href="#">Smartphone</a>
     </div>
     
     <button type="button" class="btn btn-primary">Sony</button>
     <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
       <span class="caret"></span>
     </button>
     <div class="dropdown-menu">
       <a class="dropdown-item" href="#">Tablet</a>
       <a class="dropdown-item" href="#">Smartphone</a>
     </div>
     
     <button type="button" class="btn btn-primary">Sony</button>
     <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
       <span class="caret"></span>
     </button>
     <div class="dropdown-menu">
       <a class="dropdown-item" href="#">Tablet</a>
       <a class="dropdown-item" href="#">Smartphone</a>
     </div>
   </div> -->
  
   
   
   
   <br><br><br><br>
   <div class="time">
   		<button id="timeB">12:30</button>&nbsp;&nbsp;
   		<button id="timeB">14:00</button>&nbsp;&nbsp;
   		<button id="timeB">17:00</button>&nbsp;&nbsp;
   </div>
   <br><br>
   <hr class="line">
   <br><br><br>
   
   
   
   
   
  <div class="container">
  <h2>메뉴</h2>
  <br><br>
  <h4>&nbsp;&nbsp;&nbsp;메인 ></h4>
   <table class="table table-bordered " id="menu">
       <thead>
         <tr>
           <th>메뉴</th>
           <th>가격</th>
         </tr>
       </thead>
       <tbody>
         <tr>
           <td>ㅁ 양꼬치 200g</td>
           <td>11000원</td>
         </tr>
         <tr>
           <td>ㅁ 양갈비살꼬치</td>
           <td>12000원</td>
         </tr>
         <tr>
           <td>ㅁ 새우꼬치(4마리)</td>
           <td>5000원</td>
         </tr>
         
       </tbody>
     </table>
   
   <br>
   <br><br><br>
   
   
   <h4>&nbsp;&nbsp;&nbsp;사이드 ></h4>
   <table class="table table-bordered table-sm" id="menu">
       <thead>
         <tr>
           <th>메뉴</th>
           <th>가격</th>
         </tr>
       </thead>
       <tbody>
         <tr>
           <td>사이다</td>
           <td>2000원</td>
         </tr>
         <tr>
           <td>콜라</td>
           <td>2000원</td>
         </tr>
         <tr>
           <td>소주</td>
           <td>4000원</td>
         </tr>
       </tbody>
     </table>
     
     <br>
     </div>
     <div class="row">
     <button type="button" class="button menuPlus" onclick="reservationShop();" id="btnR">예약하기</button>
     </div>
   
   
   <br><br>
   <hr class="line">
   <br><br><br>
   
   <div class="container">
  <h2>식당 정보</h2>
  <br>
  <img src="<%= request.getContextPath() %>/resources/images/gps.png" id="gps"/>&nbsp;&nbsp;서울특별시 강남구 역삼동 남도빌딩 3층&nbsp;&nbsp;&nbsp;
  <!-- <input class= "cInput" type="text" name="address" id="address" placeholder="주소를 입력하세요."> -->
  <br><br>
  <img src="<%= request.getContextPath() %>/resources/images/지도.png" id="map"/>
  <br><br><br><br>
 
  </div>
  
  <hr class="line">
  <br><br><br>
  <div class="container">
  <h2>리뷰</h2>
  <br><br>
  
  
  </div>
  
  <div class="user">
  	<p>
  		<img src="<%= request.getContextPath() %>/resources/images/user.png" id="user"> 정말 맛집입니다! <br><br><br><br>
  	</p>
  	<p>
  		<img src="<%= request.getContextPath() %>/resources/images/user.png" id="user"> 정말 맛집입니다! <br><br><br><br>
  	</p>
  	<p>
  		<img src="<%= request.getContextPath() %>/resources/images/user.png" id="user"> 정말 맛집입니다! <br><br><br><br>
  	</p>
  	<p>
  		<img src="<%= request.getContextPath() %>/resources/images/user.png" id="user"> 정말 맛집입니다! <br><br><br><br>
  	</p>
  		
  </div>
  
  
  <!-- <script>
      function reservationShop(){
         location.href= "${ contextPath }/Reservation.do"
      }
   </script> -->
 
   
</body>
</html>

