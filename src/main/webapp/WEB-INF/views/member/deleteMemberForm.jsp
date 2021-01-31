<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#outer{
		width: 70%;
		margin: auto;
		margin-top: 50px;
	}
	#checkPwdOut{
		width: 500px;
		margin: 25% auto;
	}
	#checkPwdMid{
		display: inline-block;
		text-align: center;
	}
	#checkPwdIn{
		margin-top: 5px;
		display: inline-block;
		border: 1px solid black;
		width: 500px;
		height: 200px;
		text-align: center;
	}
	table{
		margin-top: 30px;
	}
	#label{
		margin-top: 20px;
		align: left;
		color: #F42B03;
	}
	.input{
		margin-left: 20px;
		width: 300px;
		height: 40px;
	}
	#btn{
		font-size: 18px;
		color:#fff;
		border: 1px solid gray;
		border-radius: 30px;
		background-color: gray;
		width:150px; height:30px;
		margin-top: 50px;
	}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	<div id="outer">
		<form action="mdelete.me" method="post" id="checkPwd" name="checkPwd">
			<h1>회원 탈퇴</h1>
			<div id=checkPwdOut>
				<label id="label">회원 탈퇴를 위해 아이디와 비밀번호를 다시 입력 해주세요.</label><br>
				<div id="checkPwdMid">
					<div id="checkPwdIn">
						<table align="center">
							<tr height="70px">
								<td width="100px">아이디 : </td>
								<td width="300px"><input type="text" class="input" name="memberId"></td>
							</tr>
							<tr height="70px">
								<td>비밀번호 : </td>
								<td><input type="text" class="input" name="member_pwd"></td>
							</tr>
						</table>
					</div>
					<br>
					<input type="submit" id="btn" value="회원 탈퇴">
				</div>
			</div>
		</form>
	</div>
	<c:import url="../common/footer.jsp"/>
</body>
</html>