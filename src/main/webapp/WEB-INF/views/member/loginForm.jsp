<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<!-- 구글 api -->	
<script src="https://apis.google.com/js/platform.js" async defer></script>
<!-- <meta name="google-signin-client_id" content="1057917963809-pudrp1s95ujocaosdl1kj0tv5h91pptn.apps.googleusercontent.com"> -->

<style type="text/css"> 


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
  html, div, body,h3{
      margin: 0;
      padding: 0;
  }
  h3{
      display: inline-block;
      padding: 0.6em;
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
				<input type="text" class="form-control inputForm" id="inputId" placeholder="아이디를 입력해주세요" name="memberId">
				<label class="hidden"></label>
			</div>
			<div class="mb-4">
				<label class="form-label inputTilte">비밀번호</label>
				<input type="password" class="form-control inputForm" id="inputPw" placeholder="비밀번호를 입력해주세요" name="member_pwd">
				<label class="hidden"></label>
			</div>
			<div class="mb-4">
				<br>
				<a href="findFormId.me"  class="aForm">아이디 찾기</a>&nbsp|&nbsp<a href="findFormPwd.me" onclick="findPw();" class="aForm">비밀번호 찾기</a>&nbsp|&nbsp<a href="enrollForm.me"onclick="enroll();" class="aForm">회원가입</a>
			</div>
			<br>
			<button type="submit" class="btn btn-primary loginBtn" onclick="return loginVal();"> 로그인 </button>
			<br>
			<span id="name"></span>
		
			<!-- <div class="g-signin2" data-onsuccess="onSignIn"></div> -->
			<br>
			 <!-- <a href="naverLogin.me" class="snsBtn"><img class="snsBtn" src="resources/images/naver.png" ></a> -->
			<br>

			 <!-- <img class="snsBtn" src="resources/images/naver.png" id="naver_id_login" >  -->
			<br>
			<!-- <a id="kakao-login-btn" onclick="location.href='kakaoLogin.me'" class="snsBtn"></a><p> 
			<a href="javascript:kakaoLogin();"  ><img  src="resources/images/kakao.png" style="height:60px; width: auto;"></a> -->
		<!-- 	<input type="button" value="카카오톡 로그아웃" onclick="ktout()"> -->
			<!-- <a href="https://developers.kakao.com/logout">로그아웃</a> -->
			
			<!-- <a href="kakaoLogin.jsp" class="snsBtn"><img class="snsBtn" src="resources/images/kakao.png"></a> -->
		  </table>
		</form>
	  </div>
	
	<jsp:include page="../common/footer.jsp"/>
	
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
	<script type='text/javascript'>
		
		
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
		
		//카카오 로그인
		Kakao.init('ebec4584a30ed61834650763475ef4ae');
			// 카카오 로그인 버튼을 생성합니다.
			 Kakao.Auth.createLoginButton({
			  container: '#kakao-login-btn',
			  success: function(authObj) {
				Kakao.API.request({
					url: 'v2/user/me',
					success: function(res){
						console.log(res);
						var id = res.id;
						var email = res.kakao_account.email;
						var name = res.properties.nickname;
						var image = res.properties.profile_image;
						var html = '<BR>' + email + '<BR>' + name;
						
						html += '<BR><img src="' + image + '">';
						
						$('body').append(html);
					 alert(res.properties.name + '님 환영합니다.');
					 //location.href="./result?name="+ res.properties.nickname;
					}
				})
				console.log(authObj);
				var token = authObj.access_token;
			 	 },
				fail: function(err){
					alert(JSON.stringify(error));
				}
				});
			
		/*네이버 로그인 */
		<script type="text/javascript">
 		var naver_id_login = new naver_id_login("8BouCQy59lvnn9DvL7oJ", "http://localhost:8580/bob/home.do");	// Client ID, CallBack URL 삽입
											// 단 'localhost'가 포함된 CallBack URL
 		var state = naver_id_login.getUniqState();
		
 		naver_id_login.setButton("white", 2, 40);
 		naver_id_login.setDomain("http://127.0.0.1:8580/bob/loginForm");	//  URL
 		naver_id_login.setState(state);
 		naver_id_login.setPopup();
 		naver_id_login.init_naver_id_login();
	</script>
	</script>
</body>
</html>