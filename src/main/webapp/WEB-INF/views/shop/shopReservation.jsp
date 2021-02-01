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
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=673fc628ebaa83da22c5004efaed383c&libraries=services,clusterer,drawing"></script>
  <!-- timepicker -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>


<!-- 폰트 -->
<script src="https://kit.fontawesome.com/7293f5b137.js"crossorigin="anonymous"></script>
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
   margin-bottom:50px;
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
.user{
	display: block; 
	margin: 0 auto; 
	width:70px; 
	height:70px;
	float:left;
}
#user{margin-left:20%}
#gps{width: 40px;}
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
#menuP {
   border-radius: 30px; width:800px; height:400px;
}
h4,h2{margin-left:8%;}
.button{
  background-color: #F42B03;
  border: none;
  color: white;
  text-align: center;
  width: 100px;
  height: 40px;
}
#review{display:block; margin-left:48%;}
#declare{display:inline-block;margin-left:90%; border-radius:10px; width:70px; height:20px; font-size:10px;}
.image{display:inline-block;}
.review{display:inline-block; height:20%;}
#floatingTextarea2{margin-left:35%; margin-top:5%; border-radius:5px; border-color:gray;}
</style>
</head>
<body style="font-family: 'Gugi';">
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
   <jsp:include page="../common/menubar.jsp" />
   
   <br><br>
          <h2>&nbsp;&nbsp;&nbsp;&nbsp;${reservationList[0].SHOP_NAME}</h2>

   <!-- 사진, 지도 폼 -->
   
   <img src="<%= request.getContextPath() %>/resources/shopuploadFiles/${reservationList[0].SHOP_RENAME}" id="menuP"/>
   
   
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   

  <%--  <%=request.getParameter("SHOP_NO")%> --%>
  <!--${loginUser.memberId}  -->
   
   <div id="info">
      <p id="shopnm">${reservationList[0].SHOP_NAME}</p> 
      <p> [별점]</p>
      <p>전화  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   ${reservationList[0].SHOP_PHONE}</p>
      <p>영업시간 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${reservationList[0].SHOP_OPEN} -  ${reservationList[0].SHOP_CLOSE}</p>
      <p>브레이크타임  ${reservationList[0].SHOP_BREAK_START} - ${reservationList[0].SHOP_BREAK_CLOSE}</p>
      <p>예약마감시간  ${closeTime1}</p>
      <p>휴무일  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ${reservationList[0].SHOP_OFFDAY}</p>
   </div>
   <br><br><br>  <br><br><br>  <br><br><br>  <br><br><br> <br><br><br>
   

	 <form action="ShopReservation.do" method="post" enctype="Multipart/form-data" onsubmit="return writeBoard();">
	 
	  <input type="hidden" name="ShopNo" value="<%=request.getParameter("SHOP_NO")%>"> 
	   <input type="hidden" name="reservePhone" value="${loginUser.phone}"> 
	    <input type="hidden" name="reserveName" value="${loginUser.member_name}"> 
	     <input type="hidden" name="memberId" value="${loginUser.memberId}"> 
	     <input type="hidden" name="shopName" value="${reservationList[0].SHOP_NAME}">
	  
	  
       <div class="row">
       <div class="col-3"></div>
	       <div class="col-2">
	         	<div class="form-group row">
				  <label for="example-date-input" class="col-2 col-form-label"></label>
				  <div class="col-10">
				    <input class="form-control" type="date" name="reserveDate" id="example-date-input" max="" style=width:200px; >
				  </div>
				</div>
				
				<script>  /*날짜 범위 제한*/
					  document.getElementById('example-date-input').value = new Date().toISOString().substring(0, 10);
					  var today = new Date();
					  var maxday=today.setDate(today.getDate() + 7); // 7일 더하여 setting
					  document.getElementById('example-date-input').max = new Date(new Date().getTime() + 7 * 24 * 60 * 60 * 1000).toISOString().substring(0, 10);
					  document.getElementById('example-date-input').min =new Date().toISOString().substring(0, 10);
				</script>
	         </div>
         
       <div class="col-2">
 		<select class="form-select" aria-label="Default select example" id="time" name="reserveTime">
 				<option value="0" selected>날짜를 선택해주세요!</option>
			<c:forEach var="ht" items="${timeList}">
				 <option value="${ht}" id="${ht}" >${ht}</option>
			</c:forEach>
         </select>
         
         
 		 <script>
         function writeBoard(){
				var a=$("#time").val();
				if(a==0){
					alert("시간을 선택해주세요");
					return false;
				}else{
					return true;
				}
			}
         </script>
        
         
         
          <script> 
			var date;
			
			$(function(){
				var shopNo=<%=request.getParameter("SHOP_NO")%>;
				$(document).ready(function() {
					date = $('#example-date-input').val();
					console.log(date);
					$.ajax({
		                url : "/bob/reserveDate.do",
		                type: "post",
		               dataType: 'json',
		               data : {shopNo,shopNo},
		               success : function(data){
							for(var i=0; i<data.shopreserveTime.length; i++){
								/* document.getElementById(data.shopreserveTime[i]).disabled = false; */
								if(data.shopreserveDate[i]==date){
									 console.log(data.shopreserveTime[i]);
									 document.getElementById(data.shopreserveTime[i]).disabled = true;
								}
							}
		               }
		            });
				});

	         	$('#example-date-input').change(function (){
	             		date = $('#example-date-input').val();
						console.log(date);
						 $.ajax({
				                url : "/bob/reserveDate.do",
				                type: "post",
				               dataType: 'json',
				               data : {shopNo,shopNo},
				               success : function(data){
									for(var i=0; i<data.shopreserveTime.length; i++){
										document.getElementById(data.shopreserveTime[i]).disabled = false;
										if(data.shopreserveDate[i]==date){
											 console.log(data.shopreserveTime[i]);
											 document.getElementById(data.shopreserveTime[i]).disabled = true;
										}
									}
				               }
				            });
	        		 });
			});
			</script>
			</div><div class="col-2">
         <select class="form-select" aria-label="Default select example" name="reservePeople">
            <option value="1">1명</option>
            <option value="2" selected="selected">2명</option>
            <option value="3">3명</option>
            <option value="4">4명</option>
            <option value="5">5명</option>
            <option value="6">6명</option>
         </select>
         </div>
         <div class="col-3"></div>
         </div>

	  <textarea placeholder="요청사항을 입력해주세요" name="reserveComment" id="floatingTextarea2" style="height:100px; width:30%"></textarea>
		<script>
			$(function(){
				$(document).ready(function() {
							if($('#floatingTextarea2').val()==null){
								$('#floatingTextarea2').val('요청사항없음');
							}
					});
				});
		</script> 
   
   
   <br><br><br><br>
   <br><br>
   <hr class="line">
  
   
  <div class="container">
  <h2>메뉴</h2>
  <br><br>
  <h4>&nbsp;&nbsp;&nbsp;메인 </h4>
   <table class="table table-bordered " id="menu">
       <thead>
         <tr>
           <th>메뉴</th>
           <th>가격</th>
           <th>수량</th>
         </tr>
       </thead>
       <tbody id="MainmenuBody">

       </tbody>
     </table>

   <br><br><br><br>


   <h4>&nbsp;&nbsp;&nbsp;사이드</h4>
   <table class="table table-bordered table-sm" id="menu">
       <thead>
         <tr>
           <th>메뉴</th>
           <th>가격</th>
         <th>수량</th>
         </tr>
       </thead>
       <tbody id="SidemenuBody">
       </tbody>
     </table>
    
     <br><br><br><br>
      <h4>&nbsp;&nbsp;&nbsp;주류</h4>
   <table class="table table-bordered table-sm" id="menu">
       <thead>
         <tr>
           <th>메뉴</th>
           <th>가격</th>
         <th>수량</th>
         </tr>
       </thead>
       <tbody id="DrinkmenuBody">
       </tbody>
     </table>
     </div>
     
     <br>
     
      <div class="row">
    	<button type="submit" value="submit" class="button menuPlus" id="btnR">예약하기</button> 
     </div>
     
     </form>
     
     <div class="row">
    <!--  <button type="button" class="button menuPlus" onclick="reservationShop()" id="btnR">예약하기</button> -->
     </div>
   
   
   	<!--   <script>
		   function reservationShop(){
		         location.href= "ShopReservation.do"
		      }
	   </script>  -->
   
   
   
   <br><br>
   <hr class="line">
  
   
   <div class="container">
  <h2>식당 정보</h2>
  <br>

  <img src="<%= request.getContextPath() %>/resources/images/gps.png" id="gps"/>&nbsp;&nbsp; <p id=gpsaddress>${reservationList[0].SHOP_ADDRESS}</p>&nbsp;&nbsp;&nbsp;
  <!-- <input class= "cInput" type="text" name="address" id="address" placeholder="주소를 입력하세요."> -->
  <br><br>
<div id="map" style="width:1000px;height:400px;"></div>
  <br><br><br><br>
 
 
 
  </div>
  
  <hr class="line">
  <br><br><br>
  <div class="container">
  <h2>리뷰</h2>
  <br><br>
  
  
  </div>
  
  <div id="user">
     <p>
        <img src="<%= request.getContextPath() %>/resources/images/user.png" class="user"> 정말 맛집입니다! <br><br><br><br>
     </p>
     <p>
        <img src="<%= request.getContextPath() %>/resources/images/user.png" class="user"> 정말 맛집입니다! <br><br><br><br>
     </p>
     <p>
        <img src="<%= request.getContextPath() %>/resources/images/user.png" class="user"> 정말 맛집입니다! <br><br><br><br>
     </p>
     <p>
        <img src="<%= request.getContextPath() %>/resources/images/user.png" class="user"> 정말 맛집입니다! <br><br><br><br>
     </p>
        
  </div>

 <script>
		 var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		 var options = { //지도를 생성할 때 필요한 기본 옵션
		    center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		    level: 3 //지도의 레벨(확대, 축소 정도)
		 };
		 var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		 
		 $(document).ready(function() {
		    var gpsaddress = $("#gpsaddress").text();
		    var shopnm = $("#shopnm").text();
		    function geocoding(gpsaddress){
		         // 주소-좌표 변환 객체를 생성합니다
		         var geocoder = new kakao.maps.services.Geocoder();
		         // 주소로 좌표를 검색합니다
		         geocoder.addressSearch(gpsaddress, function(result, status) {
		             // 정상적으로 검색이 완료됐으면 
		              if (status === kakao.maps.services.Status.OK) {
		                 var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		                 // 결과값으로 받은 위치를 마커로 표시합니다
		                 var marker = new kakao.maps.Marker({
		                     map: map,
		                     position: coords
		                 });
		                 // 인포윈도우로 장소에 대한 설명을 표시합니다
		                  var infowindow = new kakao.maps.InfoWindow({
		                     content: '<div style="width:150px;text-align:center;padding:6px 0;">'+shopnm+'</div>'
		                 });
		                 infowindow.open(map, marker);
		    
		                 // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		                 map.setCenter(coords);
		             } 
		         });          
		      } 
		    
		    
		    geocoding(gpsaddress);	    
		 var html = "";
		    
		 $.ajax({
		               url : "/bob/MainMenu.do",
		                type: "post",
		               dataType: 'json',
		               data : {
		               "SHOP_NO" : <%=request.getParameter("SHOP_NO")%>
		               },
		               success : function(data){
		               
		                  for(var i=0; i<data.MainMenu.length; i++){
		                     html += "<tr>"
		                     html += "<td>"+data.MainMenu[i].MENU_NAME+"</td>"
		                     html += "<td>"+data.MainMenu[i].MENU_PRICE+"</td>"
		                     html += "<td>"
		                     html += "<select name='menuname' class='main'> <option value='0'> 0개 </option><option value='1'> 1개 </option> <option value='2'> 2개 </option><option value='3'> 3개 </option><option value='4'> 4개 </option><option value='5'> 5개 </option><option value='6'> 6개 </option><option value='7'> 7개 </option><option value='8'> 8개 </option><option value='9'> 9개 </option><option value='10'> 10개 </option> </select>"
		                     html +="</td>"
		                     html += "</tr>"
		                  }
		            
		                  $("#MainmenuBody").html(html);
		            
		                  html = "";
		                  
		                  
		                  for(var i=0; i<data.SideMenu.length; i++){
		                     
		                     html += "<tr>"
		                     html += "<td>"+data.SideMenu[i].MENU_NAME+"</td>"
		                     html += "<td>"+data.SideMenu[i].MENU_PRICE+"</td>"
		                     html += "<td>"
		                     html += "<select name='menuname' class='side'> <option value='0'> 0개 </option><option value='1'> 1개 </option> <option value='2'> 2개 </option><option value='3'> 3개 </option><option value='4'> 4개 </option><option value='5'> 5개 </option><option value='6'> 6개 </option><option value='7'> 7개 </option><option value='8'> 8개 </option><option value='9'> 9개 </option><option value='10'> 10개 </option> </select>"
		                     html +="</td>"
		                     html += "</tr>"
		                  }
		                   $("#SidemenuBody").html(html);
		                   
		                   html = "";
		                   
		                   for(var i=0; i<data.DrinkMenu.length; i++){
		                       
		                       html += "<tr>"
		                       html += "<td>"+data.DrinkMenu[i].MENU_NAME+"</td>"
		                       html += "<td>"+data.DrinkMenu[i].MENU_PRICE+"</td>"
		                       html += "<td>"
		                       html += "<select name='menuname' class='drink'> <option value='0'> 0개 </option><option value='1'> 1개 </option> <option value='2'> 2개 </option><option value='3'> 3개 </option><option value='4'> 4개 </option><option value='5'> 5개 </option><option value='6'> 6개 </option><option value='7'> 7개 </option><option value='8'> 8개 </option><option value='9'> 9개 </option><option value='10'> 10개 </option> </select>"
		                       html +="</td>"
		                       html += "</tr>"
		                    }
		                     $("#DrinkmenuBody").html(html);  
		                  
		               },
		               error : function(err){
		               alert("error");
		               }
		            });

		   }); 
 
 </script>
 
	<button onclick="reviewEnroll()" class="button" id="review">리뷰등록</button>
		
	<button onclick="declareEnroll()" class="button" id="declare">신고하기</button>

	<script>
		var shopNo=<%=request.getParameter("SHOP_NO")%>;
		var shopName=$('#shopnm').text();
 
		function reviewEnroll(){
			location.href="ReviewEnrollForm.do"
		}
		function declareEnroll(){
			location.href='DeclareEnrollForm.do?shopNo=' +shopNo + '&shopName='+shopName;
		}
	</script>

 
    <jsp:include page="../common/footer.jsp" />
      
</body>
</html>