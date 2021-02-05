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
		width: 70%;
		margin: auto;
		margin-top: 50px;
	}
	table{
		margin-top: 50px;
		min-width: 550px;
	}
	.input{
		height: 40px;
		width: 400px;
	}
	.phone{
		width: 270px;
	}
	.phoneBtn{
		margin: 0px;
		height: 39px;
		width: 130px;
		border: 1px solid #F42B03;
		background-color: #F42B03;
		color:#fff;
	}
	.btn{
		font-size: 18px;
		color:#fff;
		width:150px; height:30px;
		margin-top: 50px;
	}
	#updateBtn{
		border: 1px solid #F42B03;
		border-radius: 30px;
		background-color: #F42B03;
		font-size: 18px;
		color:#fff;
		width:150px; height:30px;
		margin-top: 50px;
		margin-right: 20px;
	}
	#deleteBtn{
		border: 1px solid gray;
		border-radius: 30px;
		background-color: gray;
		font-size: 18px;
		color:#fff;
		width:150px; height:30px;
		margin-top: 50px;
		margin-left: 20px;
	}
</style>
</head>
<body>
	<c:import url="../common/header.jsp"/>
	<div class="outer">
		<h2>식당 정보 수정</h2>
		<form action="" method="post" id="updateForm" name="updateForm">
			<table align="center">
				<tr height="70px">
					<td width="150px">사업자 이름 : </td>
					<td width="400px"><input type="text" class="input" name="shopName" value=""></td>
				</tr>
				<tr height="70px">
					<td>사업자 번호 : </td>
					<td><input type="text" class="input" name="businessNum" value=""></td>
				</tr>
				<tr height="70px">
					<td>아이디</td>
					<td><input type="text" class="input" name="id" value="" style="background:lightgray;" readonly></td>
				</tr>
				<tr height="70px">
					<td>비밀번호 : </td>
					<td><input type="text" class="input" name="pwd1" value="" ></td>
				</tr>
				<tr height="70px">
					<td height="70px">비밀번호확인 : </td>
					<td><input type="text" class="input" name="pwd2" value="" ></td>
				</tr>
				<tr height="70px">
					<td>이메일 : </td>
					<td><input type="email" class="input" name="email" value=""></td>
				</tr>
				<tr height="70px">
					<td>홈페이지 주소 : </td>
					<td><input type="email" class="input" name="email" value=""></td>
				</tr>
				<tr height="70px">
					<td>업체 번호 : </td>
					<td><input type="email" class="input" name="email" value=""></td>
				</tr>
				<tr height="70px">
					<td>업체 주소 : </td>
					<td><input type="email" class="input" name="email" value=""></td>
				</tr>
				<tr height="300px">
					<td colspan="2">
						<img src="resources/images/지도.jpg" height="300px" width="550px">
					</td>
				</tr>
				<tr height="70px">
					<td>핸드폰 : </td>
					<td><input type="text" class="input phone" maxlength="11" name="phone" placeholder="핸드폰(-없이 입력해주세요)" value=""><button class="phoneBtn">인증번호 전송</button></td>
				</tr>
				<tr height="70px">
					<td></td>
					<td><input type="text" class="input phone" maxlength="6" name="phoneCheck" placeholder="인증번호" value=""><button class="phoneBtn">인증번호 확인</button></td>
				</tr>
			</table>
			
			<div class="btns" align="center">
				<input type="submit" id="updateBtn" value="수정 완료">
				<input type="button" id="deleteBtn" onclick="" value="회원 탈퇴">
			</div>		
		</form>
	</div>
	<c:import url="../common/footer.jsp"/>
</body>
</html>