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
<body style="font-family: 'Gugi'; " >

	<jsp:include page="../common/menubar.jsp" />
	<div class="outer"><br><br>
		<h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="${ loginUser.member_name}님 환영합니다  🙌 ‍"/></h1>
		<div class="mid">
		 <hr class="line"> 
			<!-- <div class="inner"> -->
			<h5>◼&nbsp예약 내역</h5>
			 <hr class="line"> 
				<table>
					<tr height="5px">
					</tr>
					<tr height="30px">
					<c:forEach var="re" items="${ re }">
						<td width="100px">📌 ${ re.reserveTime }</td>
					</c:forEach>
					</tr>
					<tr height="30px">
					<c:forEach var="sp" items="${ sp }">
						<td rowspan="3" width="160px"> <img id="thumbImg" width="160px" height="140px" src="${ contextPath }/resources/shopuploadFiles/${ sp.shopRename }"></td>
						<td width="500px">식당명&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : ${ sp.shopName }</td>
					</c:forEach>
					</tr>
					<tr height="30px">
					<c:forEach var="reme" items="${ reme }">
						<td>메뉴&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : ${ reme.menuName }</td>
						</c:forEach>
						<td><div class="cancelBtn" >예약취소</div></td>
					</tr>
					<tr height="30px">
					<c:forEach var="re" items="${ re }">
						<td>총 결제 금액 :  ${ re.totalPrice }원</td>
					</c:forEach>
					</tr>
					<tr height="30px">
						<td width="200px"></td>
					</tr>
					<tr height="5px">
					</tr>
				</table>
		 <hr class="line"> 
			<h5>◼&nbsp리뷰 내역 </h5>
			 <hr class="line"> 
				<table>
					<tr height="10px">
					<td width="100px">
					</tr>
					<tr height="30px">
					<td rowspan="3" width="160px"><img src="resources/images/파스타.jpg" height="140px" width="160px"></td>
					<c:forEach var="rev" items="${ rev }">
						<td width="500px">리뷰내용: ${ rev.reviewContents }</td>
						</c:forEach>
					</tr>
					<tr height="30px">
					<c:forEach var="sp" items="${ sp }">
						<td width="500px">리뷰식당: ${ sp.shopName}</td>
					</c:forEach>
					<c:forEach var="rev" items="${ rev }">
						<td width="100px">작성일 : ${ rev.reviewWrite }</td>
					</c:forEach>
					</tr>
					<tr height="30px">
					<c:forEach var="rev" items="${ rev }">
						<td width="100px">리뷰점수 : ${ rev.reviewScore }점</td>
					</c:forEach>
					</tr>
					<tr height="5px">
					</tr>
				</table>
				<div class="inner"> 
				 <hr class="line"> 
				<c:url var="pwdUpdate" value="mPwdUpdate.me"/>
				<button class="updateBtn" onclick="location.href='${pwdUpdate}'">비밀번호 변경</button>
				<c:url var="myinfo" value="mInfoPwdForm.me"/>
				<button class="updateBtn" onclick="location.href='${myinfo}'">회원 정보 수정</button>
			</div>
		</div>
	  </div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>