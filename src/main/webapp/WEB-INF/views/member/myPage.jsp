<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>
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
		width:160px; height:40px;
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
	
	.status{
		height: 25px;
		width: 100px;
		text-align: center;
		background-color: #F4F3EE;
	}
	
	.statusfinal{
		height: 25px;
		width: 100px;
		background-color: #3ABD37;
		text-align: center;
	}
	
	#enrollArea {
	width: 50%;
	height: 600px;
	position: relative;
	margin: 0 auto;
	margin-top: 50px;
}

.enrollDiv {
	text-align: center;
	align-content: center;
}

.enrollBtn {
	display: block !important;
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	width: 250px !important;
	height: 50px;
}
 img:hover{opacity:0.5}
</style>
</head>
<body style="font-family: 'Gugi'; " >

	<jsp:include page="../common/menubar.jsp" />
	<div id="enrollArea">
			<h1 style="text-align: center;"><c:out value="${ loginUser.member_name}님 환영합니다  🙌 ‍"/> </h1><br><br>
			<hr class="line"> 
			<div class="row">
				<div class="col-4 enrollDiv">
					<c:url var="myinfo" value="mInfoPwdForm.me"/> 
					<img src="<%= request.getContextPath() %>/resources/images/user.png"
						style="width: 200px; height: 200px;" onclick="location.href='${myinfo}'">
					<br><br><br>
				<c:url var="myinfo" value="mInfoPwdForm.me"/>
				<button class="updateBtn" onclick="location.href='${myinfo}'">회원 정보 수정</button>
				</div>
				<div class="col-4 enrollDiv">
				<c:url var="reinfo" value="reinfo.me"/>
					<img src="<%= request.getContextPath() %>/resources/images/re.png"
						style="width: 250px; height: 250px;"  onclick="location.href='${reinfo}'">
					<br>
				<c:url var="reinfo" value="reinfo.me"/>
					<button class="updateBtn"  onclick="location.href='${reinfo}'">예약 내역 조회</button>
				</div>
				<div class="col-4 enrollDiv">
				<c:url var="pwdUpdate" value="mPwdUpdate.me"/>
					<img src="<%= request.getContextPath() %>/resources/images/pwd.png"
						style="width: 200px; height: 200px;" onclick="location.href='${pwdUpdate}'">
					<br><br><br>
					<c:url var="pwdUpdate" value="mPwdUpdate.me"/>
				<button class="updateBtn" onclick="location.href='${pwdUpdate}'">비밀번호 변경</button>
				</div>
			</div>
			<hr class="line"> 
	</div>	
		<%-- <c:url var="reinfo" value="reinfo.me">
						<c:param name="sn" value="${rei.shopNo}"/>
						<c:param name="rsn" value="${rei.reserveNo}"/>
					</c:url> --%>
	<jsp:include page="../common/footer.jsp"/>
	
	<script>
	/* function reInfo(){
		/* location.href='${ reinfo }' */
		location.href = "${contextPath }/reinfo.me"
	} */
	</script>
</body>
</html>