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
	#body{
		font-family: 'Gugi';
	}
	.a{
		color: red;
	}
	#paySetting{
		border: 2px solid lightgray;
		border-left: black;
		border-right: black;
		width: 1000px;
		
	}
	#paySetting>th,td{
		padding: 25px;
		margin: 100px;
		
	}
	#setSettings{
	border: 2px solid lightgray;
	width:1000px;
	}
	h1{
		margin-right: 1000px;
	}
	#left{
		margin-right: 800px;
	}
	#bookingCheck{
		width:1000px;
	}
	#success{
		width: 70px;
		background: #35a735;
		font-weight: bold;
	}
	#nosuccess{
		width: 70px;
		background: #FF0000;
		font-weight: bold;
	}
	.paySuccess{
		width: 140px;
		background: #35a735;
		font-weight: bold;
	}
	#paycancel{
		width: 140px;
		background: #FF0000;
		font-weight: bold;
	}
	
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/menubar.jsp"%>
	<br><br>
	<div id="body" align="center">
	<h1>예약관리</h1>
	<br><br>
	<div>
		<div>
			<table id="paySetting">
				<tr>
					<td width="500"><b>상차림 예약 비용 설정</b></td>
					<td><b>테이블 이용 시간 설정</b></td>
				</tr>
				<tr>
					<td>1인당 <input type="text" readonly="readonly"> 원 <a href="" class="a">저장</a></td>
					<td><input type="text" readonly="readonly"> 분 <a href="" class="a">저장</a></td>
				</tr>
			</table>
			<br><br>
			<div>
				<b id=left>예약 가능 좌석 설정</b><br><br>
				<table id="setSettings">
					<tr>
						<td>4 인석</td>
						<td>20/12/03 18:00</td>
						<td>예약 시간</td>
						<td><a href="" class="a">삭제</a></td>
					</tr>
					<tr>
						<td>2 인석</td>
						<td>20/12/03 18:00</td>
						<td>예약 시간</td>
						<td><a href="" class="a">삭제</a></td>
						
					</tr>
					
					<tr>
						<td>6 인석</td>
						<td>20/12/03 18:00</td>
						<td>예약 시간</td>
						<td><a href="" class="a">삭제</a></td>
					</tr>
					<tr height="100">
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>인석</td>
						<td></td>
						<td>예약 시간</td>
						<td><a href="" class="a">저장</a></td>
					</tr>
				</table>
			</div>
			<div>
				<table id="bookingCheck">
					<tr>
						<td>113.</td>
						<td>해물짬뽕라면2 크림라면1</td>
						<td><input type="text" readonly="readonly" value="4인석  16:00"></td>
						<td><input type="button" value="승인" id="success"><input type="button" value="거절" id="nosuccess"></td>
					</tr>
					<tr>
						<td>113.</td>
						<td>해물짬뽕라면2 크림라면1</td>
						<td><input type="text" readonly="readonly" value="4인석  16:00"></td>
						<td><input type="button" value="결제 완료" class="paySuccess"></td>
					</tr>
					<tr>
						<td>113.</td>
						<td>해물짬뽕라면2 크림라면1</td>
						<td><input type="text" readonly="readonly" value="4인석  16:00"></td>
						<td><input type="button" value="결제 완료" class="paySuccess"></td>
					</tr>
					<tr>
						<td>113.</td>
						<td>해물짬뽕라면2 크림라면1</td>
						<td><input type="text" readonly="readonly" value="4인석  16:00"></td>
						<td><input type="button" value="결제 완료" class="paySuccess"></td>
					</tr>
					<tr>
						<td>113.</td>
						<td>해물짬뽕라면2 크림라면1</td>
						<td><input type="text" readonly="readonly" value="4인석  16:00"></td>
						<td><input type="button" value="결제 취소" id="paycancel"></td>
					</tr>
					<tr>
						<td>113.</td>
						<td>해물짬뽕라면2 크림라면1</td>
						<td><input type="text" readonly="readonly" value="4인석  16:00"></td>
						<td><input type="button" value="결제 완료" class="paySuccess"></td>
					</tr>
				</table>
			</div>
			
		</div>
	</div>	
		
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>