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
	.mid{
		width: 800px;
		margin: 50px auto;
	}
	.inner{
		text-align: center;
	}
	.updateBtn{
		font-size: 18px;
		color:#fff;
		border: 1px solid #F42B03;
		border-radius: 30px;
		background-color: #F42B03;
		width:150px; height:30px;
		margin-top: 50px;
	}
	table{
		margin: auto;
		text-align: left;
	}
	.status{
		height: 25px;
		width: 95px;
		background-color: #3ABD37;
		text-align: center;
	}
	.cancelBtn{
		height: 25px;
		width: 95px;
		color: red;
		text-align: center;
	}
</style>
</head>
<body>
	<c:import url="../common/header.jsp"/>
	<c:if test="${ !empty sessionScope.loginUser }">
	<div class="outer">
		<h1><c:out value="${ loginUser.member_name}님 환영합니다."/></h1>
		<div class="mid">
			<h5>예약 내역 조회</h5>
			<div class="inner">
				<table>
					<tr height="30px">
						<td rowspan="3" width="160px"><img src="resources/images/파스타.jpg" height="80px" width="130px"></td>
						<td width="500px">가게 : TEST파스타</td>
						<td width="100px"><div class="status">예약중</div></td>
					</tr>
					<tr height="30px">
						<td>메뉴 : 토마토파스타1 알리오올리오1</td>
						<td><div class="cancelBtn">예약취소</div></td>
					</tr>
					<tr height="30px">
						<td>총금액 : 24400원</td>
						<td>2020-11-28</td>
					</tr>
					<tr height="30px">
						<td rowspan="3" width="160px"><img src="resources/images/파스타.jpg" height="80px" width="130px"></td>
						<td>가게 : TEST파스타</td>
						<td><div class="status">예약중</div></td>
					</tr>
					<tr height="30px">
						<td>메뉴 : 토마토파스타1 알리오올리오1</td>
						<td><div class="cancelBtn">예약취소</div></td>
					</tr>
					<tr height="30px">
						<td>총금액 : 24400원</td>
						<td>2020-11-28</td>
					</tr>
				</table>
				<c:url var="myinfo" value="minfoUpate.me"/>
				<button class="updateBtn" onclick="location.href='${myinfo}'">회원 정보 수정</button>
			</div>
		</div>
	  </div>
	</c:if>
	<c:import url="../common/footer.jsp"/>
</body>
</html>