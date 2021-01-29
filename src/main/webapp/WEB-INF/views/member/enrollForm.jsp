<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트 스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="${ contextPath }/js/jquery-3.5.1.min.js"></script>
<!-- 폰트 -->
<script src="https://kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<style>
#enrollArea {
/* 	border: 1px solid lightgray; */
	width: 80%;
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

</style>
</head>
<body style="font-family: 'Gugi'; ">
	<jsp:include page="../common/menubar.jsp" />

	<div id="enrollArea">
			<h1 style="text-align: center;">회원가입 선택 ></h1><br><br>
			
			
			<div class="row">
				<div class="col-6 enrollDiv">
					일반회원<br><br><br><br>
					<img src="<%= request.getContextPath() %>/resources/images/memberLogo.png"
						style="width: 200px; height: 200px;">
					<br><br><br>
					<form action="${ contextPath }/agreeForm.me" method="post">
					<button type="submit" name="auth_code" value="1" class="btn btn-primary enrollBtn"> 가입하기 </button>
					</form>
				</div>
				<div class="col-6 enrollDiv">
					사업자회원<br><br><br><br>
					<img src="<%= request.getContextPath() %>/resources/images/ownerLogo.png"
						style="width: 200px; height: 200px;">
					<br><br><br>
					<form action="${ contextPath }/agreeForm.me" method="post">
					<button type="submit" name="auth_code" value="2" class="btn btn-primary enrollBtn"> 가입하기 </button>
					</form>
				</div>
				</div>
			</div>
			
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>