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
  left: 30%;
  width: 45%;
  height: 40%;
  background: #C4C4C4;
  margin: auto;
  text-align:center;
}

#thumbImg{
	border:2px red;
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
#sidemenu{
	margin: auto;
	width: 70%;
	text-align: center;
}

#drinkmenu{
	margin: auto;
	width: 70%;
	text-align: center;
}
	
.menuPlus, .menuMinus{
	width:30px;
	border-radius:10px;
	text-align: center;
	background: #F42B03;
	color: white;
}
.alldelete{
	width:80px;
	border-radius:10px;
	text-align: center;
	background: #F42B03;
	color: white;
}

#gps{
	width: 40px;
	margin-left:30%;
}
#address{
	margin-left:10px;
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

input { 
    text-align: center; 
}

#myselect{width:10%; margin-left:5%;}



/*-------------------------------------*/
.centerText table {
	margin: auto; 
	align-content: center;
	border-collapse: collapse;
}

.centerText table tr td {
	padding: 5px;
}

#thumbnailImg{margin-left:10%;}

.form-floating{margin:0 0 20px 35%;}

#floatingTextarea2{border-radius:5px; border-color:#C1C1C1;}

</style>
</head>
<body style="font-family: 'Gugi';">
   <jsp:include page="../common/menubar.jsp" />
   
   <br><br>
   	
   	<form action="shopEnrollAdd.do" method="post" enctype="Multipart/form-data"  onsubmit="return writeBoard();"> <!-- enctype="Multipart/form-data" --> 
   	
    <input type="hidden" name="memberId" value="${loginUser.member_id}"> 

   		
   		
       <select class="form-select" aria-label="Default select example"  id="myselect" name="shopCate" >
         <option value="0" selected="selected">--선택해주세요--</option>
         <option value="1">한식</option>
         <option value="2">양식</option>
         <option value="3">중식</option>
         <option value="4">일식</option>
         <option value="5">분식</option>
      </select>
      
        <script>
  			function writeBoard(){
  				var a=$("#myselect").val();
  				var b=${loginUser.member_id};
  				if(a==0){
  					alert("카테고리를 선택해주세요"+b);
  					return false;
  				}else{
  					return true;
  				}
  			}
  		</script>
      
          

	<!-- 사진, 지도 폼 -->
		<div class="thumb" id="thumbnail"><img id="thumbImg" width="100%" height="100%"><p id="text">메뉴 썸네일 사진을 등록해주세요.</p></div>
		
	
		<div id="fileArea">
		<input type="file" id="thumbnailImg"  name="thumbnailImg" onchange="LoadImg(this)">
	</div>
	
	<script>
					$(function(){
						$("#fileArea").hide();
						$("#thumbnail").click(function(){
							$("#thumbnailImg").click();
						});
					});
					
					function LoadImg(value){
						if(value.files && value.files[0]){
							var reader = new FileReader();
							
							
							reader.onload = function(e){								
								
									$("#thumbImg").attr("src", e.target.result);
									$("#text").empty();
									
							}
							
							reader.readAsDataURL(value.files[0]);
						}
					}
				</script>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		
   	<div class="form-floating">
   		  <p>가게소개</p>
		  <textarea placeholder="가게소개글을 입력해주세요" name="shopIntro" id="floatingTextarea2" style="height:300px; width:50%"></textarea>
	</div>
   
   
   <p class="pp"></p><p class="pInput">&nbsp;&nbsp;사업자 번호</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="businessNumber" id="businessNum" placeholder="사업자 번호를 입력하세요."  oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
		</div> 
   
   <p class="pp"></p><p class="pInput">&nbsp;&nbsp;상호명</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopName" id="ShopName" placeholder="상호명을 입력하세요.">
		</div>
	
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;전화</p>&nbsp;&nbsp;
		<div class="input-info">
			 <input class= "cInput" type=text name="shopPhone" onfocus="OnCheckPhone(this)"  onKeyup="OnCheckPhone(this)" size="14" placeholder="전화번호를 입력하세요."> 	
		</div>
		<script src="<%= request.getContextPath() %>/resources/js/telephone.js"></script>
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;오픈시간</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="time" name="shopOpen" id="time" placeholder="오픈시간을 입력하세요.">
		</div>
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;마감시간</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="time" name="shopClose" id="time2" placeholder="마감시간을 입력하세요.">
		</div>	
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;브레이크타임</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="time" name="shopBreakStart" id="break1" placeholder="브레이크타임을 입력하세요." style="width:210px">&nbsp; ~ &nbsp;			
			<input class= "cInput" type="time" name="shopBreakClose" id="break2" placeholder="브레이크타임을 입력하세요." style="width:210px">
			
		</div>	
		
<!-- 	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;예약마감시간</p>&nbsp;&nbsp; -->
<!-- 		<div class="input-info"> -->
<!-- 			<input class= "cInput" type="time" name="maxReservationTime" id="MaxReservationTime" placeholder="예약마감시간을 입력하세요."> -->
<!-- 		</div> -->
		
		<p class="pp"></p><p class="pInput">&nbsp;&nbsp;최대예약시간</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="maxReservationTime" id="MaxReservationTime" placeholder="단위(시간)">
		</div>
		
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;휴무일</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopOffday" id="holiday" placeholder="휴무일을 입력하세요.">
		</div>
	


	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;주소</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" id="sample5_address" placeholder="주소" name="address1">
			<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색">
		</div>
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" id="sample3_detailAddress" placeholder="상세주소" name="address2">
			<div id="map" style="width:500px;height:300px;margin-top:10px;display:none"></div>
		</div>
		
		
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eb76491df39fadc11ff7c0d5b214d3ef&libraries=services"></script>
		<script>
		    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		        mapOption = {
		            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
		            level: 5 // 지도의 확대 레벨
		        };
		
		    //지도를 미리 생성
		    var map = new daum.maps.Map(mapContainer, mapOption);
		    //주소-좌표 변환 객체를 생성
		    var geocoder = new daum.maps.services.Geocoder();
		    //마커를 미리 생성
		    var marker = new daum.maps.Marker({
		        position: new daum.maps.LatLng(37.537187, 127.005476),
		        map: map
		    });
		
		
		    function sample5_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                var addr = data.address; // 최종 주소 변수
		
		                // 주소 정보를 해당 필드에 넣는다.
		                document.getElementById("sample5_address").value = addr;
		                // 주소로 상세 정보를 검색
		                geocoder.addressSearch(data.address, function(results, status) {
		                    // 정상적으로 검색이 완료됐으면
		                    if (status === daum.maps.services.Status.OK) {
		
		                        var result = results[0]; //첫번째 결과의 값을 활용
		
		                        // 해당 주소에 대한 좌표를 받아서
		                        var coords = new daum.maps.LatLng(result.y, result.x);
		                        // 지도를 보여준다.
		                        mapContainer.style.display = "block";
		                        map.relayout();
		                        // 지도 중심을 변경한다.
		                        map.setCenter(coords);
		                        // 마커를 결과값으로 받은 위치로 옮긴다.
		                        marker.setPosition(coords)
		                    }
		                });
		            }
		        }).open();
		    }
		</script>
	
	
   
   <br><br><br>
   <hr class="line">
   <br><br><br>
   
   
  <div class="container">
  <h2>메뉴</h2>
  <br><br>
  <h4>&nbsp;&nbsp;&nbsp;메인 ></h4>
   <table class="table table-bordered table-sm" id="menu">
	    <thead>
	      <tr>
	        <th>메뉴</th>
	        <th>가격</th>
			<th style="width:10px;"><button type="button" name="menu" class="menuPlus"  onclick="addRow()">+</button></th>
	      </tr>
	    </thead>
  	</table>
	
	<br>
	<!-- <div id="btnP">
		<button class="alldelete" id="btn-empty">전체삭제</button>
	</div> -->
	
	<script>
		function addRow() {
		  // table element 찾기
		  const table = document.getElementById('menu');
		  
		  // 새 행(Row) 추가
		  const newRow = table.insertRow();
		  
		  // 새 행(Row)에 Cell 추가
		  const newCell1 = newRow.insertCell(0);
		  const newCell2 = newRow.insertCell(1);
		  const newCell3 = newRow.insertCell(2);
		  
		  
		  // Cell에 텍스트 추가
		 /*  newCell1.innerText = '메뉴';
		  newCell2.innerText = '가격'; */

		  newCell1.innerHTML = '<input type="text" name="MenuName" size="20" style="width:100%; border: 0;">';
		  newCell2.innerHTML = '<input type="number" name="MenuPrice" size="20" style="width:100%; border: 0;" min="100">';
		  newCell3.innerHTML = '<button type="button" class="menuMinus"  onclick="deleteRow(this)">&nbsp;-&nbsp;</button>';
		}
		
		function deleteRow(r) {
				  var i = r.parentNode.parentNode.rowIndex;
				  // table element 찾기
				  const table = document.getElementById('menu');
				  // 행(Row) 삭제
				  const newRow = table.deleteRow(i);
		}

		/* $(function () {
		    $('#btn-empty').click( function() {
		        $( '#menu > thead').empty();
		    });
		}); */
		
	</script>
	
	<br><br><br>
	
	<h4>&nbsp;&nbsp;&nbsp;사이드 ></h4>
   <table class="table table-bordered table-sm" id="sidemenu">
	    <thead>
	      <tr>
	        <th>메뉴</th>
	        <th>가격</th>
	        <th style="width:10px;"><button type="button" name="side" class="menuPlus"  onclick="addRow2()">+</button></th>
	      </tr>
	     </thead>
  	</table>
  	<br>
		<!-- <div id="btnP">
			<button class="alldelete" id="btn-empty2">전체삭제</button>
		</div> -->
	
		<script>
		function addRow2() {
		  // table element 찾기
		  const table = document.getElementById('sidemenu');
		  
		  // 새 행(Row) 추가
		  const newRow = table.insertRow();
		  
		  // 새 행(Row)에 Cell 추가
		  const newCell1 = newRow.insertCell(0);
		  const newCell2 = newRow.insertCell(1);
		  const newCell3 = newRow.insertCell(2);
		  // Cell에 텍스트 추가
		  newCell1.innerHTML = '<input type="text" name="SideName" size="20" style="width:100%; border: 0;">';
		  newCell2.innerHTML = '<input type="number" name="SidePrice" size="20" style="width:100%; border: 0;" min="100">';
		  newCell3.innerHTML = '<button type="button" class="menuMinus"  onclick="deleteRow2(this)">&nbsp;-&nbsp;</button>';
			}

		function deleteRow2(r) {
			  var i = r.parentNode.parentNode.rowIndex;
			  // table element 찾기
			  const table = document.getElementById('sidemenu');
			  // 행(Row) 삭제
			  const newRow = table.deleteRow(i);
			}
		
	</script>
	
	
	<br><br><br>
	
	<h4>&nbsp;&nbsp;&nbsp;음료 ></h4>
   <table class="table table-bordered table-sm" id="drinkmenu">
	    <thead>
	      <tr>
	        <th>메뉴</th>
	        <th>가격</th>
	        <th style="width:10px;"><button type="button" name="drink" class="menuPlus"  onclick="addRow3()">+</button></th>
	      </tr>
	     </thead>
  	</table>
  	
  		<script>
			function addRow3() {
			  // table element 찾기
			  const table = document.getElementById('drinkmenu');
			  
			  // 새 행(Row) 추가
			  const newRow = table.insertRow();
			  
			  // 새 행(Row)에 Cell 추가
			  const newCell1 = newRow.insertCell(0);
			  const newCell2 = newRow.insertCell(1);
			  const newCell3 = newRow.insertCell(2);
			  // Cell에 텍스트 추가
			  newCell1.innerHTML = '<input type="text" name="DrinkName" size="20" style="width:100%; border: 0;">';
			  newCell2.innerHTML = '<input type="number" name="DrinkPrice" size="20" style="width:100%; border: 0;" min="100">';
			  newCell3.innerHTML = '<button type="button" class="menuMinus"  onclick="deleteRow3(this)">&nbsp;-&nbsp;</button>';
				}
	
			function deleteRow3(r) {
				  var i = r.parentNode.parentNode.rowIndex;
				  // table element 찾기
				  const table = document.getElementById('drinkmenu');
				  // 행(Row) 삭제
				  const newRow = table.deleteRow(i);
				}
	</script>
	
   
   <br><br>
   <hr class="line">
   <br><br>
   
   <div class="container">
 	 <div id="btnP">
 		 <button type="submit" class="button" value="submit" id="enroll">등록하기</button>
 	 </div>
 	 <br>
  </div>
  	
	 </form> 
  

 
   </div>
   </body>
   </html>