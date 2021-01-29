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
	
	.updateBtn{
			font-size: 18px;
			color:#fff;
			border: 1px solid #F42B03;
			border-radius: 30px;
			background-color: #F42B03;
			width:150px; height:30px;
			margin-top: 50px;
			margin-bottom: 50px;
		}
	
	.updateBtnArea{
		text-align: center;
	}
	
	/*top버튼 */
    a#MOVE_TOP_BTN {
     position: fixed;
    right: 2%;
    bottom: 50px;
    display: none;
    z-index: 999;
    width: 40px;
    height: 30px;
    background-color: red;
    font-family: 'Gugi';
	font-size: 20px; 
	text-align: center;
	}  
</style>
</head>
<body style="font-family: 'Gugi';">
   <jsp:include page="../common/menubar.jsp" />
   
   <br><br>
   	
   	<form action="shopUpdate.me" method="post" enctype="Multipart/form-data"   >
   	
   	 <input type="hidden" name="memberId" value="${ loginUser.memberId}"> 
   	 <input type="hidden" name="shopOrigin" value="${ si.shopOrigin }">
   	 <input type="hidden" name="shopRename" value="${ si.shopRename }">
    <c:forEach var="sm" items="${ sm }">
	   	<input type="hidden" name="menuNo" value="${ sm.menuNo }">
	   	<input type="hidden" name="menuStatus" value="${ sm.menuStatus }">
	   	<input type="hidden" name="shopNo" value="${ sm.shopNo }">
	   	<input type="hidden" name="menuCate" value="${ sm.menuCate }">
	 </c:forEach>
   <%--  <c:forEach var="sms" items="${ sms }">
    	<input type="hidden" name="menuNo" value="${ sms.menuNo }">
	   	<input type="hidden" name="menuStatus" value="${ sms.menuStatus }">
	   	<input type="hidden" name="menuCate" value="${ sms.menuCate }">
   </c:forEach>
    <c:forEach var="smb" items="${ smb }">
    	<input type="hidden" name="menuNo" value="${ smb.menuNo }">
	   	<input type="hidden" name="menuStatus" value="${ smb.menuStatus }">
	   	<input type="hidden" name="menuCate" value="${ smb.menuCate }">
   </c:forEach> --%>
   
     <select class="form-select" aria-label="Default select example"  id="myselect" name="shopCate" >
         <option value="0" >--선택해주세요--</option>
         <option value="1" selected="selected">한식</option>
         <option value="2">양식</option>
         <option value="3">중식</option>
         <option value="4">일식</option>
         <option value="5">분식</option>
      </select>
       <!--    <script>
        
  			function writeBoard(){
  				var a=$("#myselect").val();
  				if(a==0){
  					alert("카테고리를 선택해주세요");
  					return false;
  				}else{
  					return true;
  				}
  			}
  		</script> -->
      
    
          

	<!-- 사진 -->
	<div class="thumb" id="thumbnail">
		 <img id="thumbImg" width="100%" height="100%"
			  src="${ contextPath }/resources/shopuploadFiles/${ si.shopRename }">
	</div>
		
	
	<div id="fileArea">
		<input type="file" href="${ contextPath }/resources/shopuploadFiles/${ si.shopRename }
			download="${ si.shopOrigin }"  id="thumbnailImg"  name="thumbnailImg" onchange="LoadImg(this)">
		 <br>
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
		
   
   <p class="pp"></p><p class="pInput">&nbsp;&nbsp;사업자 번호</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text"  value="${ si.businessNumber }" name="businessNumber" id="businessNum"   oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
		</div> 
   
   <p class="pp"></p><p class="pInput">&nbsp;&nbsp;상호명</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopName" id="ShopName" value="${ si.shopName }">
		</div>
	
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;전화</p>&nbsp;&nbsp;
		<div class="input-info">
			 <input class= "cInput" type="text" name="shopPhone" onfocus="OnCheckPhone(this)"  onKeyup="OnCheckPhone(this)" size="14" value="${ si.shopPhone }"> 	
		</div>
		<script src="<%= request.getContextPath() %>/resources/js/telephone.js"></script>
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;오픈시간</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopOpen" id="time" value="${ si.shopOpen }">
		</div>
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;마감시간</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopClose" id="time2" value="${ si.shopClose }">
		</div>	
		
		
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;브레이크타임 시작 시간</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopBreakStart" id="break" value="${ si.shopBreakStart }">
		</div>
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;브레이크타임 끝 시간</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopBreakClose" id="break" value="${ si.shopBreakClose }">
		</div>
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;예약마감시간</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="maxReservationTime" id="MaxReservationTime" value="${ si.maxReservationTime }">
		</div>
		
		
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;휴무일</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopOffday" id="holiday" value="${ si.shopOffday }">
		</div>
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;식당 소개</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" name="shopIntro" id="holiday" value="${ si.shopIntro }">
		</div>
	


	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;주소</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" id="sample5_address" placeholder="주소" name="shopAddress" value="${ si.shopAddress }">
			<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색">
		</div>
	<!-- 	
	<p class="pp"></p><p class="pInput">&nbsp;&nbsp;</p>&nbsp;&nbsp;
		<div class="input-info">
			<input class= "cInput" type="text" id="sample3_detailAddress" placeholder="상세주소" name="address2">
			<div id="map" style="width:500px;height:300px;margin-top:10px;display:none"></div>
		</div> -->
		
		
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
   <table class="table table-bordered table-sm" id="menu" > 
	    <thead>
	      <tr>
	        <th>메뉴</th>
	        <th>가격</th>
			<th style="width:10px;"><button type="button" name="menu" class="menuPlus"  onclick="addRow()">+</button></th>
	      </tr>
	      <c:forEach var="sm" items="${ sm }">
	      <tr>
		      	<th><input type="text" name="MenuName"  value="${ sm.menuName}" size="20" style="width:100%; border: 0;"></th>
		        <th><input type="number" name="MenuPrice"  value="${ sm.menuPrice}" size="20" style="width:100%; border: 0;" min="100"></th>
		      	<th style="width:10px;"><button type="button" name="side" class="menuPlus"  onclick="addRow()">+</button></th>
	      </tr>
	      </c:forEach>
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

		  newCell1.innerHTML = '<input type="text"  name="MenuName"  size="20" style="width:100%; border: 0;">';
		  newCell2.innerHTML = '<input type="number"  name="MenuPrice" size="20" style="width:100%; border: 0;" min="100">';
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
	      <c:forEach var="sms" items="${ sms }">
	      <tr>
		      	<th><input type="text" name="SideName"  value="${ sms.menuName}" size="20" style="width:100%; border: 0;"></th>
		        <th><input type="number" name="SidePrice"  value="${ sms.menuPrice}" size="20" style="width:100%; border: 0;" min="100"></th>
		      	<th style="width:10px;"><button type="button" name="side" class="menuPlus"  onclick="addRow2()">+</button></th>
	      </tr>
	      </c:forEach>
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
		  newCell1.innerHTML = '<input type="text" name="SideName"  size="20" style="width:100%; border: 0;">';
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
   <table class="table table-bordered table-sm" id="drinkmenu" >
	    <thead>
	      <tr>
	        <th>메뉴</th>
	        <th>가격</th>
	        <th style="width:10px;"><button type="button" name="drink" class="menuPlus"  onclick="addRow3()">+</button></th>
	      </tr>
	      <c:forEach var="smb" items="${ smb }">
	      <tr>
		      	<th><input type="text" name="DrinkName"  value="${ smb.menuName }" size="20" style="width:100px;   border: 0;"></th>
		        <th><input type="number" name="DrinkPrice"  value="${ smb.menuPrice}" size="20" style="width:100px; border: 0;" min="100"></th>
		      	<th style="width:10px;"><button type="button" name="side" class="menuPlus"  onclick="addRow3()">+</button></th>
	      </tr>
	      </c:forEach>
	     </thead>
  	</table>
  	
  	<br><br>
	   <hr class="line">
	   <br><br>
	  	<div class="updateBtnArea">
				<button class="updateBtn" type="submit">수정하기</button>
				<button class="updateBtn" onclick="location.href='deleteShop.me'">삭제하기</button>
			</div>
  	
	</form> 
	<!-- top버튼 -->
	<a id="MOVE_TOP_BTN"  href="home.do">▲</a>
   </div>
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
			  newCell2.innerHTML = '<input type="number" name="DrinkPrice"  size="20" style="width:100%; border: 0;" min="100">';
			  newCell3.innerHTML = '<button type="button" class="menuMinus"  onclick="deleteRow3(this)">&nbsp;-&nbsp;</button>';
				} 
	
			function deleteRow3(r) {
				  var i = r.parentNode.parentNode.rowIndex;
				  // table element 찾기
				  const table = document.getElementById('drinkmenu');
				  // 행(Row) 삭제
				  const newRow = table.deleteRow(i);
				}
			
			
			
			 function shopDelete(){
				 var del = confirm('정말 삭제하시겠습니까?');   
				 if(del){
					location.href="${ contextPath }/deleteShop.me"
				 }
			}
			 
			 
			// top버튼 
			$(function(){
				$(window).scroll(function(){
					if( $(this).scrollTop() > 200){
						$('#MOVE_TOP_BTN').fadeIn();
					}else{
						$('#MOVE_TOP_BTN').fadeOut();
					}
				});
				$('#MOVE_TOP_BTN').click(function(){
					$('html, body').animate({
						scrollTop: 0
					}, 300);
					return false;
				});
			});
	</script>
	<c:import url="../common/footer.jsp"/> 
</body>
</html>