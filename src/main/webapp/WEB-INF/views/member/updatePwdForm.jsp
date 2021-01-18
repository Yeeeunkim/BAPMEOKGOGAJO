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
<body style="font-family: 'Gugi'; ">
	<c:import url="../common/menubar.jsp"/>
	<div class="outer">
		<h2 style="text-align: center;">회원 정보 수정 ></h2>
		<br>
		<form action="updatePwd.me" method="post">
			<table align="center">
				<tr height="70px">
					<td>현재 비밀번호 </td>
					<td><input type="password" class="input" name="member_pwd" ></td>
				</tr>
				<tr height="70px">
					<td>새 비밀번호 </td>
					<td><input type="password" class="input" id="newPwd"name="member_newPwd"></td>
				</tr>
					 <tr height="70px">
					<td>새 비밀번호 확인</td>
					<td><input type="password" class="input" id="newPwCheck" name="member_newPwd2"  ></td>
				</tr> 
			</table>
			<br><br><br>
			<div class="btns" align="center">
				<input type="submit" id="updateBtn" value="수정 완료">
			</div>		
		</form>
	</div>
	<c:import url="../common/footer.jsp"/>
	<script>
	$('#newPw').on('keyup', function() {
		//비밀번호 공백 확인
		if($("#newPw").val() === ""){
			$('#newPwMsg').html('<b>비밀번호는 필수 정보입니다.</b>');
			chk2 = false;
		}		         
		//비밀번호 유효성검사
		else if(!getPwCheck.test($("#newPw").val()) || $("#newPw").val().length < 6){
			$('#newPwMsg').html('<b>특수문자 포함 6자 이상 입력하세요</b>');
			chk2 = false;
		} else {
			$('#newPwMsg').html('');
			chk2 = true;
		}
				
	}); //end of new password
				
				
	//비밀번호 확인
	$('#newPwCheck').on('keyup', function() {
		
		if($("#newPwCheck").val() === "") {
			$('#newPwMsg').html('<b">비밀번호 확인은 필수 정보입니다.</b>');
			chk3 = false;
		} else if( $("#newPw").val() != $("#newPwCheck").val() ) {
			$('#newPwMsg').html('<b>비밀번호가 일치하지 않습니다.</b>');
			chk3 = false;
		} else {
			$('#newPwMsg').html('');
			chk3 = true;
	}
		
				});
	</script>
</body>
</html>