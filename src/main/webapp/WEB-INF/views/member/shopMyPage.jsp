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
		width: 500px;
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
	<div class="outer"><br><br>
		<h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="${ loginUser.member_name}사장님 환영합니다 👨‍🍳"/></h1><br>
		<div class="inner introduceDiv">
    	  <hr class="line"> 
			<label class="mainLabel"><b style="font-size: 30px; color: navy;" >🏠&nbsp${ si.shopName }</b>&nbsp</label><br><br>
			<label class="mainLabel">◼&nbsp식당 소개글</label>
			<textarea id="introduceArea" readonly>${ si.shopIntro }</textarea>
			<!--  <div class="saveBtnArea">
				<button class="saveBtn">저장</button>
			</div>-->
		</div><br>
		<div class="inner menuDiv">
			<label class="mainLabel">◼&nbsp메뉴</label>
		   <table class="table table-bordered table-sm" id="drinkmenu">
		   <input type="hidden" name="menuCate" value="1">
			      <tr>
			      	<td>
			      	<c:forEach var="sm" items="${ sm }">
			        	메인 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${ sm.menuName }&nbsp&nbsp&nbsp${ sm.menuPrice }원<br>
			        </c:forEach>
			        </td>
			      </tr>
			</table>
		 <table class="table table-bordered table-sm" id="drinkmenu">
		   <input type="hidden" name="menuCate" value="2">
			      <tr>
			      	<td>
			      	<c:forEach var="sms" items="${ sms }">
			       		사이드  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${ sms.menuName}&nbsp&nbsp&nbsp${ sms.menuPrice }원<br>
			        </c:forEach>
			        </td>
			      </tr>
			</table>
		   <table class="table table-bordered table-sm" id="drinkmenu">
		   <input type="hidden" name="menuCate" value="3">
			      <tr>
			      	<td>
			      	 <c:forEach var="smb" items="${ smb }">
			         	음료 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${ smb.menuName}&nbsp&nbsp&nbsp${ smb.menuPrice}원<br>
			         </c:forEach>
			         </td>
			      </tr>
			</table>
			<!--  <div class="saveBtnArea">
				<button class="saveBtn">저장</button>
			</div> -->
		</div><br>
		<div class="inner reservationDiv">
			<label class="mainLabel">◼&nbsp예약 관리</label>
			<table id="reservation">
				<tr>
				<c:forEach var="rm" items="${ rm }">
				<c:forEach var="ri" items="${ ri }">
					<td width="100px">${ ri.reserveNo }</td>
					<td width="330px">${ rm.menuName }</td>
					<td width="170px"><div class="reservationSeat">${ri.reservePeople}명 &nbsp ${ ri.reserveTime }</div></td>
					<td	width="100px">
						<div>
							<div class="status">결재완료</div>
						</div>
					</td>
				</c:forEach>
				</c:forEach>
				</tr>
			</table>
		</div><br>
		<div class="inner reservationSettingDiv">
			<div class="subDiv">
				<label class="mainLabel">◼&nbsp상차림 예약 비용 설정</label>
				<div class="innerContent">
					1인당 <input type="number" id="price" value="2000"  style="border: 0; width:  100px;" readonly>원
				</div>
			</div>
			<div class="subDiv">
				<label class="mainLabel">◼&nbsp테이블 이용 가능 시간</label>
				<div class="innerContent">
					최대<input type="number" id="time" value = "60"  style="border: 0; width:  100px;" readonly>분
				</div>
			</div>
			<!-- <div class="seatSetting">
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
			</div> -->
			<div class="subDiv">
				<label class="mainLabel">◼&nbsp가게 운영 시간</label>
				<div class="innerContent">
					오전&nbsp<input type="number" name="shopOpen" value="${ si.shopOpen }"  style="border: 0; width: 50px;" readonly>시 ~ 오후&nbsp<input type="number" name="shopClose" value="${ si.shopClose }"  style="border: 0; width: 50px;" readonly>시
				</div>
			</div>
			<div class="subDiv">
				<label class="mainLabel">◼&nbsp가게 운영 요일</label>
				<div class="innerContent">
					<table id="checkDay">
						<tr>
							<td style="background-color: red;">월</td>
							<td style="background-color: red;">화</td>
							<td style="background-color: red;">수</td>
							<td style="background-color: red;">묵</td>
							<td style="background-color: red;">금</td>
							<td style="background-color: red;">토</td>
							<td>일</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="subDiv">
				<label class="mainLabel">◼&nbsp브레이크 타임</label>
				<div class="innerContent"> 
					오전&nbsp<input type="number" name="shopBreakStart" value="${ si.shopBreakStart }"  style="border: 0; width:  50px;" readonly>시 ~ 오후&nbsp<input type="number" name="shopBreakClose" value="${ si.shopBreakClose }" style="border: 0; width:  50px;"readonly>시 
				</div>
			</div>
		</div><br>
		<div class="inner">
		<p class="pp"></p><p class="pInput">◼&nbsp주소</p>&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;<input type="text" value="📍&nbsp;${ si.shopAddress }" style="border: 0;">
		
	   <hr class="line">
			<div class="updateBtnArea">
				<c:url var="oinfo" value="oInfoPwdForm.me"/>
				<button class="updateBtn" onclick="location.href='${oinfo}'">회원 정보 수정</button>
				<c:url var="shopInfoUp" value="shopUpdateForm.me"/>
				<button class="updateBtn" onclick="location.href='${shopInfoUp}'" >식당 정보 수정</button>
			</div>
		</div>
	</div>
   
   <br><br><br>
  
	<c:import url="../common/footer.jsp"/>
	
</body>
</html>