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
	<div class="outer"><br><br>
		<h1><c:out value="${ loginUser.member_name}사장님 환영합니다."/></h1><br>
			<label class="mainLabel">식당을 등록해주세요! </label>
			<button value="식당등록하러 가기"></button>
		
   <hr class="line">
		<div class="updateBtnArea">
			<c:url var="pwdUpdate" value="mPwdUpdate.me"/>
			<button class="updateBtn" onclick="location.href='${pwdUpdate}'">비밀번호 변경</button>
			<c:url var="oinfo" value="oInfoPwdForm.me"/>
			<button class="updateBtn" onclick="location.href='${oinfo}'">회원 정보 수정</button>
		</div>
	</div>
		
   <br><br><br>
  
	<c:import url="../common/footer.jsp"/>
	
</body>
</html>