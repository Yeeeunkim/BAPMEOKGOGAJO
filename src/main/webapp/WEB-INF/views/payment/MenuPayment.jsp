<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<style>
	.image{
		width:300px;
		height: 300px;
	}
	#body{
		align:center;
		font-family: 'Gugi';
	}
	.red{
		color: red;
	}
	#notice{
		color:red;
	}
	#btn{
		background-color: #F42B03;
   		color: white;
   		border: 1px solid white;
   		border-radius: 5px;
	    width: 100px;
	    height: 40px;
	   
	}
	#tableBar>td{
		
		margin-left: 100px;
	}
	#tableBar{
		margin-left: 100px;
		width:1000px;
	}
	h1{
		margin-right: 800px;
	}
	#map{
		margin-left: 100px;
		width:900px;
		height: 500px;
	}
</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/menubar.jsp"%>
	<br><br>
	<div id="body" align="center">
	<h1>메뉴 선결제</h1><br><br>
	<form action="payment.do" name="payment">
		<table id="tableBar">
			<tr>
				<td rowspan="5" width="300" height="300"><img class="image" src="<%= request.getContextPath() %>/images/sushi.png"></td>
				<td width="150" align="center">가게 :</td>
				<td></td>
			</tr>
			<tr>
				<td align="center">메뉴 :</td>
				<td>'${ menu } 직접 와서 주문</td>
			</tr>
			<tr class="red">
				<td align="center">예약테이블 :</td>
				<td>2인석</td>
			</tr>
			<tr class="red">
				<td align="center">예약시간 :</td>
				<td>14:00</td>
			</tr>
			<tr class="red">
				<td align="center">총금액 :</td>
				<td>6000원</td>
			</tr>
		</table>
		<br>
		<div id="map"></div>
		<br><br>
		<div id="check">
		<div id="notice">※ 형법 제314조(업무방해)에 의하여<br>
				       노쇼문제 발생 시 법적문제가 생길수 있습니다</div><br>
			<input type="checkbox" id="check">위의 약관에 동의합니다(필수)<br><br>
			
			<button type="submit" id="btn" onclick="pay();">결제하기</button>
		</div>
	</form><br><br>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	
	<!-- 지도 API script-->
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5dfaad367d6c098344db683384bda68d"></script>
	<script>
		// 이미지 지도에서 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
		
		// 이미지 지도에 표시할 마커입니다
		// 이미지 지도에 표시할 마커는 Object 형태입니다
		var marker = {
		    position: markerPosition
		};
		
		var staticMapContainer  = document.getElementById('map'), // 이미지 지도를 표시할 div  
		    staticMapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 이미지 지도의 중심좌표
		        level: 3, // 이미지 지도의 확대 레벨
		        marker: marker // 이미지 지도에 표시할 마커 
		    };    
		
		// 이미지 지도를 생성합니다
		var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
		</script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
	
	<script>
		function pay(amount, name, buyer_name, buyer_email, buyer_phone, buyer_addr, merchant_uid){
			
			// i'mport API
			
			var IMP = window.IMP; 
		    IMP.init("imp61524169"); // 가맹점점 식별코드(고유코드)
		    
		    IMP.request_pay({ // param
		        pg: "html5_inicis",	// 이니시스 결제
		        pay_method: "card",	// 결제수단
		        
		        merchant_uid: merchant_uid,	// 가맹점 결제 고유 식별번호
		        name: name,	// 주문 대상
		        amount: amount,	// 결제 금액
		        buyer_email: buyer_email,	// 주문자 이메일
		        buyer_name: buyer_name,		// 주문자 이름
		      }, function (rsp) { // callback
		        if (rsp.success) {
		        	// 결제 승인 시 로직
		            var mag = '결제가 완료되었습니다.';
					msg		            
		        	
		        	
		        } else {
		            ...,
		            // 결제 실패 시 로직,
		            ...,
		        }
		      });
		}
		
	</script>
	
	  <!-- 지도 api 라이브러리 -->
	  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	  <!-- iamport.payment 라이브러리 -->
	  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	
	 
</body>
</html>