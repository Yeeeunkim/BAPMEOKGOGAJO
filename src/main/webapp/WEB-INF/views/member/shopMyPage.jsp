<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		width: 1000px;
		margin: auto;
	}
	.inner{
		width: 800px;
		margin: auto;
	}
	.subDiv{
		margin-top: 30px;
		display: inline-block;
		height: 70px;
		width: 380px;
	}
	.mainLabel{
		font-size: 18px;
	}
	.subLabel{
		font-size: 16px;
		color: #F42B03;
	}
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
	#introduceArea{
		background-color: lightgray;
		height: 150px;
		width: 100%;
		padding: 20px;
	}
	.saveBtnArea{
		text-align: right;
	}
	.saveBtn{
		border: 1px solid #F42B03;
		background-color: #F42B03;
		color:#fff;
	}
	.menuContent{
		margin: auto;
	}
	.menuContent td{
		text-align: left;
	}
	.menuContent input{
		width: 600px;
		border: 0px none;
	}
	#reservation{
		margin: auto;
	}
	#reservation tr {
		height: 40px;
	}
	.reservationSeat{
		display: inline-block;
		border: 1px solid black;
		text-align: center;
		padding-left: 10px;
		padding-right: 10px;
	}
	.approvedBtn{
		display: inline-block;
		border: 0px;
		width: 50px;
		text-align: center;
	}
	#approved{
		background-color: #3ABD37;
		margin-right: -6px;
	}
	#reject{
		background-color: red;
		margin-right: -6px;
	}
	.status{
		height: 25px;
		width: 100px;
		background-color: #3ABD37;
		text-align: center;
	}
	.cancelBtn{
		height: 25px;
		width: 95px;
		color: red;
		text-align: center;
	}
	.seatSetting{
	}
	.seatTable tr{
		height: 50px;
	}
	.seatTable td{
		text-align: center;
	}
	#checkDay{
		display: inline-block;
		margin-bottom: -5px;
	}
	#checkDay th {
		height: 30px;
		border: 1px solid #ccc;
	}
	#checkDay td {
		width: 30px;
		border: 1px solid #ccc;
		text-align: center;
	}
	.innerContent{
		text-align: center;
	}
	.updateBtnArea{
		text-align: center;
	}
</style>
</head>
<body  style="font-family: 'Gugi'; ">
<!-- 사장님 마이페이지 -->
	<c:import url="../common/menubar.jsp"/>
<<<<<<< HEAD
	<div class="outer"><br>
		<h1><c:out value="${ loginUser.member_name}사장님 환영합니다."/></h1><br>
=======
	<div class="outer">
		<h1>도대담 회원님, 환영합니다.</h1>
>>>>>>> origin/Js
		<div class="inner introduceDiv">
			<label class="mainLabel">식당 소개글</label>
			<label class="subLabel">소개글 수정</label><br>
			<textarea id="introduceArea"></textarea>
			<div class="saveBtnArea">
				<button class="saveBtn">저장</button>
			</div>
		</div>
		<div class="inner menuDiv">
			<label class="mainLabel">메뉴추가</label>
			<label class="subLabel">메뉴 정보 수정</label><br>
			<div class="innerContent">
				<table class="menuContent">
					<tr>
						<td width="90px">메뉴 이름 : </td>
						<td width="650px"><input type="text"></td>
					</tr>
					<tr>
						<td>가격 : </td>
						<td><input type="number"></td>
					</tr>
					<tr>
						<td>특이사항 : </td>
						<td><input type="text"></td>
					</tr>
				</table>
			</div>
			<div class="saveBtnArea">
				<button class="saveBtn">저장</button>
			</div>
		</div>
		<div class="inner reservationDiv">
			<label class="mainLabel">예약 관리</label>
			<label class="subLabel">예약 관리 바로가기</label><br>
			<table id="reservation">
				<tr>
					<td width="100px">113.</td>
					<td width="330px">해물짬뽕라면2 크림라면1</td>
					<td width="170px"><div class="reservationSeat">4인석 16:00</div></td>
					<td	width="100px">
						<div>
							<div class="approvedBtn" id="approved">승인</div>
							<div class="approvedBtn" id="reject">거절</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>112.</td>
					<td>해물짬뽕라면2 크림라면1</td>
					<td><div class="reservationSeat">2인석 15:30</div></td>
					<td>
						<div class="status">결재완료</div>
					</td>
				</tr>
				<tr>
					<td>111.</td>
					<td>해물짬뽕라면2 크림라면1</td>
					<td><div class="reservationSeat">4인석 12:00</div></td>
					<td>
						<div class="status">결재완료</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="inner reservationSettingDiv">
			<div class="subDiv">
				<label class="mainLabel">상차림 예약 비용 설정</label>
				<div class="innerContent">
					1인당 <input type="number" id="price">원
				</div>
			</div>
			<div class="subDiv">
				<label class="mainLabel">테이블 이용 시간 설정</label>
				<div class="innerContent">
					<input type="number" id="time">분
				</div>
			</div>
			<div class="seatSetting">
				<label class="mainLabel">좌석</label><br>
				<table class="seatTable">
					<tr>
						<td width="350px">1인석 <input type="number" class="seat">보유</td>
						<td width="350px">2인석 <input type="number" class="seat">보유</td>
					</tr>
					<tr>
						<td>4인석 <input type="number" class="seat">보유</td>
						<td>6인석 <input type="number" class="seat">보유</td>
					</tr>
				</table>
			</div>
			<div class="subDiv">
				<label class="mainLabel">가게 운영 시간</label>
				<div class="innerContent">
					<input type="time"> ~ <input type="time">
				</div>
			</div>
			<div class="subDiv">
				<label class="mainLabel">가게 운영 요일</label>
				<div class="innerContent">
					<table id="checkDay">
						<tr>
							<td>월</td>
							<td>화</td>
							<td>수</td>
							<td>묵</td>
							<td>금</td>
							<td>토</td>
							<td>일</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="subDiv">
				<label class="mainLabel">브레이크 타임</label>
				<div class="innerContent">
					<input type="time"> ~ <input type="time">
				</div>
			</div>
		</div>
		<div class="inner">
			<label class="mainLabel">위치</label>
			<div class="innerContent">
				<img src="resources/images/지도.jpg" height="400px" width="700px"><br>
				<label>주소</label>
			</div>
		</div>
		<div class="updateBtnArea">
<<<<<<< HEAD
			<c:url var="pwdUpdate" value="mPwdUpdate.me"/>
				<button class="updateBtn" onclick="location.href='${pwdUpdate}'">비밀번호 변경</button>
=======
>>>>>>> origin/Js
			<c:url var="oinfo" value="oInfoPwdForm.me"/>
			<button class="updateBtn" onclick="location.href='${oinfo}'" >회원 정보 수정</button>
		</div>
	</div>
	<c:import url="../common/footer.jsp"/>
</body>
</html>