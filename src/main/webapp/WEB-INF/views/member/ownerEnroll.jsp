<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="https://kit.fontawesome.com/7293f5b137.js"
	crossorigin="anonymous"></script>
<style>
#enrollArea {
	/* 	border: 1px solid lightgray; */
	width: 80%;
/* 	height: 600px; */
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

.pp {
	display: inline-block;
	width: 25%;
}

.pInput{
	display: inline-block;
	width: 20%;
}

.input-info{
	display: inline;
}

.cInput {
	width: 30% !important;
}

.authBtn {
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	color: white;
}

.enrollBtn {
	display: block !important;
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	width: 250px !important;
	height: 50px;
}

.mb-3 {
	display: inline-block !important;
}

#uploadImg {
	display: inline !important;
}

</style>
</head>
<body style="font-family: 'Gugi';">
	<jsp:include page="../common/menubar.jsp" />

	<form action="oinsert.me" method="post" id="joinForm">
	<div id="enrollArea">
		<h1 style="text-align: center;">사업자 회원가입 ></h1>
		<br>
		<br>
	<p><b style="color: red;">*</b>&nbsp;&nbsp;은 필수 입력란 입니다.</p><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;사업자명</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="member_name" id="member_name" placeholder="사업자명">
	</div><br><br>
	
	
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;아이디</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="member_id" id="member_id" placeholder="아이디">
		<button  class="authBtn">확인</button>
	</div><p class="pp"></p><pre style="color: red; text-align: left; display: inline-block;">6~20자리 영문 소문자, 숫자가 사용 가능합니다</pre><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;비밀번호</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="password" name="member_pwd" id="member_pwd1" placeholder="비밀번호">
		<button  class="authBtn" onclick="chkPW()">확인</button>
	</div><p class="pp"></p><pre style="color: red; text-align: left; display: inline-block;">6~20자리 영문 소문자, 숫자, 특수문자가 사용 가능합니다</pre><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;비밀번호 확인</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="password" name="member_pwd2" id="member_pwd2" placeholder="비밀번호 확인">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;이메일</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="email" name="email" id="email" placeholder="이메일">
	</div><br><br>
	
		<input type="hidden" name="member_birth" value="owner">
		
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;핸드폰</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="tel" name="phone" id="phone" placeholder="핸드폰(-없이 입력해주세요)">
		<button class="authBtn">인증</button>
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;인증번호</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="tel" name="phoneAuth" id="phoneAuth" placeholder="인증번호">
		<button class="authBtn">확인</button>
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b>*</b>&nbsp;&nbsp;성별</p>&nbsp;&nbsp;
			<input  type="radio" name="gender" id="gender" value="M">&nbsp;&nbsp;남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input  type="radio" name="gender" id="gender" value="F">&nbsp;&nbsp;여자
		<br><br><br>
		
	<button type="submit" name="auth_code" id="nextStep" value="2" class="btn btn-primary enrollBtn"> 가입하기 </button>
	
	<br><br><br>
	</div>
	</form>
	
	<jsp:include page="../common/footer.jsp"/>
	 
	<script>
	 $(document).ready(function(){
			$('#nextStep').click(function(){
				if($('#member_name').prop('checked') == false || $('#member_id').prop('checked') == false
						|| $('#member_pwd').prop('checked') == false || $('#member_pwd2').prop('checked') == false
						|| $('#email').prop('checked') == false || $('#phone').prop('checked') == false
						|| $('#gender').prop('checked') == false){
			    	alert('필수 입력란을 작성하세요.');
			    	return false;
				}else{
					return true;
				}
			});
		});
	 
	 //수정해야함
	 function chkPW(){

		 var pw = $("#member_pwd1").val();
		 var num = pw.search(/[0-9]/g);
		 var eng = pw.search(/[a-z]/ig);
		 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

		 if(pw.length < || pw.length > 20){  
 
		  alert("6자리 ~ 20자리 이내로 입력해주세요.");
		  return false;
		 }else if(pw.search(/\s/) != -1){
		  alert("비밀번호는 공백 없이 입력해주세요.");
		  return false;
		 }else if(num < 0 || eng < 0 || spe < 0 ){
		  alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
		  return false;
		 }else {
				console.log("통과");
		 }

		}
	</script>
</body>
</html>