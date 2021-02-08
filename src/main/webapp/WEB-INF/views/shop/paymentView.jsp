<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약결제</title>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
	<h2>식당 예약</h2><br><br>
	<form action="payment.do" name="payment">
		<table id="tableBar">
			<tr>
				<td rowspan="5" width="300" height="300">
					<img src="<%= request.getContextPath() %>/resources/shopuploadFiles/${shop.shopRename}" class="image"/>
				</td>
				<td width="150" align="center">가게 :</td>
				<td id="sName">${shopname}</td>
			</tr>
			<tr>
				<td align="center">메뉴 :</td>
				<td style="padding-top: 20px; padding-bottom: 20px;">
					 <c:forEach var="m" items="${ reservemenu }">
						${ m.menuName } - ${ m.menuQty }개 <br>
					</c:forEach>
				</td>
			</tr>
			<tr class="red">
				<td align="center">예약인원 :</td>
				<td>
						${ ri.reservePeople } 명 <br>
				</td>
			</tr>
			<tr class="red">
				<td align="center">예약일 :</td>
				<td>${ ri.reserveDate } ${ ri.reserveTime } </td>
			</tr>
			<tr class="red">
				<td align="center">총금액 :</td>
				<td id="totalPrice">${ ri.totalPrice }</td>
			</tr> 
		</table>
		
		
		<input type="hidden" id="rNo" value='${reserveNo}'>
		<br>
<!-- 		<div id="map"></div> -->
		<br><br>
		<div id="check">
		<div id="notice">※ 형법 제314조(업무방해)에 의하여<br>
				       노쇼문제 발생 시 법적문제가 생길수 있습니다</div><br>
			<input type="checkbox" id="check">위의 약관에 동의합니다(필수)<br><br>
			
			<button type="button" id="btn" onclick="requestPay();">결제하기</button>
<!-- 			<button type="submit" id="btn" onclick="pay();">결제하기</button> -->
		</div>
	</form><br><br>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
	
	<script>
	
		// 결제 관련
		var IMP = window.IMP; // 생략해도 괜찮습니다.
	  	IMP.init("iamport"); // 발급받은 "가맹점 식별코드"를 사용합니다.
		
	  	var totalPrice = 0;
	  	
	  	var shopName = $('#sName').text();
	  	totalPrice = $('#totalPrice').text();
	  	var reserveNo = $('#rNo').val();
	  	
	  	// 결제 버튼 누를 시 동작
		function requestPay() {
			var check = $("input:checkbox[id='check']").is(":checked");
			console.log(check);
			if(check == true){
				IMP.request_pay({
					pg : 'inicis', // version 1.1.0부터 지원.
					pay_method : 'card',
					merchant_uid : 'merchant_' + new Date().getTime(),
					name : shopName,
					amount : totalPrice, //판매 가격
					buyer_email : 'iamport@siot.do',
					buyer_name : '구매자이름',
					buyer_tel : '010-1234-5678',
					buyer_addr : '서울특별시 강남구 삼성동',
					buyer_postcode : '123-456'
				}, function(rsp) {
					if (rsp.success) {
						var msg = '결제가 완료되었습니다.';
						msg += '\n고유ID : ' + rsp.imp_uid;
						msg += '\n상점 거래ID : ' + rsp.merchant_uid;
						msg += '\n결제 금액 : ' + rsp.paid_amount;
						msg += '\n카드 승인번호 : ' + rsp.apply_num;
						$.ajax({
							url : "payment.sh", // 가맹점 서버 -->
							data : { 
								imp_uid : rsp.imp_uid, 
								merchant_uid : rsp.merchant_uid,
								reserveNo : reserveNo},
							success: function(data){
								console.log(data);
								location.href = "${pageContext.request.contextPath}/"
							},
							error:(x,s,e) =>{
								console.log("error : ", x , s, e);
							}
						})
						
					} else {
						var msg = '결제에 실패하였습니다.';
						msg += '\n에러내용 : ' + rsp.error_msg;
					}
					alert(msg);
				});
			} else {
				var msg = '약관 동의는 필수입니다.';
				alert(msg);
			}
		}
		
		
	</script>
	
	
</body>
</html>