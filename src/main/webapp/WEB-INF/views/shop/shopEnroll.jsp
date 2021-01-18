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
#shopListArea {
   /*    border: 1px solid lightgray; */
   width: 80%;
   height: 600px;
   position: relative;
   margin: 0 auto;
   margin-top: 50px;
}
.thumb {
  position: absolute;
  top: 20%;
  left: 25%;
  width: 50%;
  height: 30%;
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
	/* 	border: 1px solid lightgray; */
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

.pp {
	display: inline-block;
	width: 25%;
}

.pInput{
	display: inline-block;
	width: 20%;
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
	margin: 0 auto;
	text-align: center;
	background: #F42B03;
	color: white;
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
#enroll{

  background-color: #F42B03;
  border: none;
  color: white;
  text-align: center;
  float: right;
  width: 100px;
  height: 40px;
 }

#btnP{
  display: flex;
  align-items: center;
  justify-content: center;
}



</style>
</head>
<body style="font-family: 'Gugi';">
   <jsp:include page="../common/menubar.jsp" />
   
   <br><br>
          <h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 한식</h2>
          

	<!-- 사진, 지도 폼 -->
	<div class="thumb">메뉴 썸네일 사진을 등록해주세요.</div>
	
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<!-- text -->
	<!-- <form action="/action_page.php">
	  <div class="form-group">
	    <label for="shop">상호명</label>
	    <input type="text" class="form-control" placeholder="상호명을 입력하세요." id="shop">
	  </div>
	  
	  <div class="form-group">
	    <label for="address">주소</label>
	    <input type="text" class="form-control" placeholder="주소를 입력하세요." id="address">
	  </div>
	  
	  
	  <div class="form-group">
	    <label for="phone">전화</label>
	    <input type="number" class="form-control" placeholder="번호를 입력하세요.(-없이 입력해주세요)" id="phone">
	  </div>
	  
	  <div class="form-group">
	    <label for="time">영업시간</label>
	    <input type="number" class="form-control" placeholder="시간을 입력해주세요." id="time">
	  </div>
	  
	  <div class="form-group">
	    <label for="break">브레이크타임</label>
	    <input type="number" class="form-control" placeholder="시간을 입력해주세요." id="break">
	  </div>
	  
	  <div class="form-group">
	    <label for="holiday">휴무일</label>
	    <input type="number" class="form-control" placeholder="휴무일을 입력해주세요." id="holiday">
	  </div>
	  
	  <div class="form-group">
	    <label for="web">웹사이트</label>
	    <input type="text" class="form-control" placeholder="URL을 입력해주세요." id="web">
	  </div>
	  
	  <div class="form-group form-check">
	    <label class="form-check-label">
	      <input class="form-check-input" type="checkbox"> 정보 제공에 동의합니다.
	    </label>
	  </div>
	  <button type="submit" class="btn btn-primary">Submit</button>
	</form> -->
	
   
   <p class="pp"></p><p class="pInput">&nbsp;&nbsp;상호명</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="shop" id="shop" placeholder="상호명을 입력하세요.">
	<!-- </div><p class="pp"></p><pre style="color: red; text-align: left; display: inline-block;">8~16자리 영문 소문자, 숫자, 특수문자가 사용 가능합니다</pre><br> -->
	</div>
	
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;주소</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="address" id="address" placeholder="주소를 입력하세요.">
	</div>
	
		<p class="pp"></p><p class="pInput">&nbsp;&nbsp;전화</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="number" name="shop" id="shop" placeholder="번호를 입력하세요.">
		</div>
		
		<p class="pp"></p><p class="pInput">&nbsp;&nbsp;영업시간</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="time" id="time" placeholder="영업시간을 입력하세요.">
		</div>
		
		<p class="pp"></p><p class="pInput">&nbsp;&nbsp;브레이크타임</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="break" id="break" placeholder="브레이크타임을 입력하세요.">
		</div>
		
		<p class="pp"></p><p class="pInput">&nbsp;&nbsp;휴무일</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="holiday" id="holiday" placeholder="휴무일을 입력하세요.">
		</div>
	
		<p class="pp"></p><p class="pInput">&nbsp;&nbsp;웹사이트</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="web" id="web" placeholder="URL을 입력하세요.">
		</div>
   
   
   <br><br><br>
   <hr class="line">
   <br><br><br>
   
   <!-- 메뉴 정보 -->
   <!-- <div>
   		<h2 id="menu">&nbsp;&nbsp;&nbsp;&nbsp;메뉴</h2>
   		<h5 id="menu">&nbsp;&nbsp;&nbsp;&nbsp;메인></h5>
   		<h5 id="menu">&nbsp;&nbsp;&nbsp;&nbsp;사이드></h5>
   </div> -->
   
  <div class="container">
  <h2>메뉴</h2>
  <br><br>
  <h4>&nbsp;&nbsp;&nbsp;메인 ></h4>
   <table class="table table-bordered table-sm" id="menu">
	    <thead>
	      <tr>
	        <th>메뉴</th>
	        <th>가격</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>메뉴</td>
	        <td>가격</td>
	      </tr>
	      <tr>
	        <td>메뉴</td>
	        <td>가격</td>
	      </tr>
	      <tr>
	        <td>메뉴</td>
	        <td>가격</td>
      	</tr>
	    </tbody>
  	</table>
	
	<br>
	<div id="btnP">
		<button type="button" class="menuPlus">+</button>
	</div>
	
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
	        <td>메뉴</td>
	        <td>가격</td>
	      </tr>
	      <tr>
	        <td>메뉴</td>
	        <td>가격</td>
	      </tr>
	      <tr>
	        <td>메뉴</td>
	        <td>가격</td>
      	</tr>
	    </tbody>
  	</table>
  	
  	<br>
	<div id="btnP">
		<button type="button" class="menuPlus">+</button>
	</div>
   
   
   <br><br>
   <hr class="line">
   <br><br>
   
   <div class="container">
  <h2>식당 정보</h2>
  <br>
  <img src="<%= request.getContextPath() %>/resources/images/gps.png" id="gps"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class= "cInput" type="text" name="address" id="address" placeholder="주소를 입력하세요.">
  <br><br>
 
 	 <div id="map"></div>
 	 <br><br><br>
 	 
 	 <div id="btnP">
 	 <button type="button" class="button" onclick="reservationShop();" id="enroll">등록하기</button>
 	 </div>
 	 
 	 
  </div>
  
  
  <script>
		function reservationShop(){
			location.href= "${ contextPath }/Reservation.do"
		}
	</script>
 
   
</body>
</html>





