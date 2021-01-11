<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>

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
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>	
<style>
#loginArea {
/* 	border: 1px solid lightgray; */
/* 	width: 60%; */
	height: 800px;
	position: relative;
	margin: 0 auto;
	margin-top: 50px;
}

.inputTilte {
/* 	border: 1px solid lightgray !important; */
	display: inline-block !important;
	width: 15% !important;
	position: relative !important;
	
}

.inputForm {
/* 	border: 1px solid lightgray !important; */
	display: inline-block !important;
	width: 250px !important;
	position: relative !important;
}

.hidden {
	width: 5% !important;
}

.mb-4 {
	text-align: center !important;
}

.loginBtn {
	display: block !important;
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	width: 250px !important;
	height: 50px;
}

.aForm {
	color: black;
}

 .snsBtn {
 	display: block !important;
	margin: 0 auto !important;
	border: none; 
    width: 250px;
    height: 50px;
	margin: 0 auto !important;
 } 

</style>
</head>

<body style="font-family: 'Gugi'; ">
	<jsp:include page="../common/menubar.jsp" />

	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	<div id="loginArea">
	   <form action="login.me" method="post" id="loginForm">
	      <table id="loginTable" style="text-align:center;">
			<br><br><br>
			<h1 style="text-align: center;">회원 로그인 ></h1>
			<br><br>
			<div class="mb-4">
				<label class="form-label inputTilte">아이디</label> 
				<input type="text" class="form-control inputForm" id="inputId" placeholder="아이디를 입력해주세요" name="member_id">
				<label class="hidden"></label>
			</div>
			<div class="mb-4">
				<label class="form-label inputTilte">비밀번호</label>
				<input type="password" class="form-control inputForm" id="inputPw" placeholder="비밀번호를 입력해주세요" name="member_pwd">
				<label class="hidden"></label>
			</div>
			<div class="mb-4">
				<br>
				<a href="#" onclick="findId();" class="aForm">아이디 찾기</a>|<a href="#" onclick="findPw();" class="aForm">비밀번호 찾기</a>|<a href="#"onclick="enroll();" class="aForm">회원가입</a>
			</div>
			<br>
			<button type="submit" class="btn btn-primary loginBtn" onclick="return loginVal();"> 로그인 </button>
			<br>
			<a href="#" class="snsBtn"><img class="snsBtn" src="resources/images/naver.png"></a>
			<br>
			<a id="kakao-login-btn"></a><p>
			<a href="https://developers.kakao.com/logout"></a>

			
			<!-- <a href="kakaoLogin.jsp" class="snsBtn"><img class="snsBtn" src="resources/images/kakao.png"></a> -->
		  </table>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp"/>
	
	
	<script type='text/javascript'>
		function findId(){
			location.href= "${ contextPath }/findFormId.me"
		}
		
		function findPw(){
			location.href= "${ contextPath }/findFormPwd.me"
		}
		
		function enroll(){
			location.href= "${ contextPath }/enrollForm.me"
		}
		
		/*공란 시 alert창*/
		function loginVal(){
			if($('#inputId').val() == 0){
				alert('아이디를 입력해주세요');
				$('#inputId').focus();
				return false;
			}else if($('#inputPw').val() == 0){
				alert('비밀번호를 입력해주세요');
				$('#inputPw').focus();
				return false;
			}else{
				$('#loginForm').submit();
				
			}
		}
		
		/*카카오톡 로그인*/
		Kakao.init('97b21c3a08d201b9a56b90370c60f34e');
			
			// 카카오 로그인 버튼을 생성합니다.
			Kakao.Auth.createLoginButton({
			  container: '#kakao-login-btn',
			  success: function(authObj) {
				alert(JSON.stringify(authObj));
			  },
			  fail: function(err) {
				 alert(JSON.stringify(err));
			  }
			});







	</script>
</body>
</html>