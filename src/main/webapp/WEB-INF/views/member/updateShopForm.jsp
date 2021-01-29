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
<body style="font-family: 'Gugi';">
	<c:import url="../common/menubar.jsp"/>
	<div class="outer">
		<h2 style="text-align: center;">사장님 정보 수정 ></h2>
		<form action="oInfoUpdate.me" method="post" id="updateForm" name="updateForm">
			<table align="center">
				<tr height="70px">
					<td width="150px">사업자 이름 : </td>
					<td width="400px"><input type="text" class="input" name="member_name" value="${ loginUser.member_name }"></td>
				</tr>
				<tr height="70px">
					<td>아이디</td>
					<td><input type="text" class="input" name="memberId" value="${ loginUser.memberId }" style="background:lightgray;" readonly></td>
				</tr>
				<tr height="70px">
					<td>생년월일 : </td>
					<td><input type="text" class="input" name="member_birth" value="${ loginUser.member_birth }"  ></td>
				</tr>
				<tr height="70px">
					<td>이메일 : </td>
					<td><input type="email" class="input" name="email" value="${ loginUser.email }"></td>
				</tr>
				<tr height="70px">
					<td>성별 : </td>
					<c:if test="${ loginUser.gender eq 'M' }">
						<td>
							<input type="radio" name="gender" value="M" checked><label>남자</label>
							<input type="radio" name="gender" value="F" ><label>여자</label>
						</td>
					</c:if>
					<c:if test="${ loginUser.gender eq 'F' }">
						<td>
							<input type="radio" name="gender" value="M" ><label>남자</label>
							<input type="radio" name="gender" value="F" checked><label>여자</label>
						</td>
					</c:if>
				</tr>
				<tr height="70px">
					<td>핸드폰 : </td>
					<td><input type="text" class="input phone" maxlength="11" name="phone" placeholder="핸드폰(-없이 입력해주세요)" value="${ loginUser.phone }"><button class="phoneBtn">인증번호 전송</button></td>
				</tr>
				<tr height="70px">
					<td></td>
					<td><input type="text" class="input phone" maxlength="6" name="phoneCheck" placeholder="인증번호" value=""><button class="phoneBtn">인증번호 확인</button></td>
				</tr>
			</table>
			
			<div class="btns" align="center">
				<input type="submit" id="updateBtn" value="수정 완료">
				<c:url var="mdelete" value="mdeleteShopForm.me">
					<c:param name="memberId" value="${ loginUser.memberId }"/>
				</c:url>
				<input type="button" id="deleteBtn" onclick="location.href='${ mdelete}'" value="회원 탈퇴">
			</div>		
		</form>
	</div>
	<c:import url="../common/footer.jsp"/>
</body>
</html>