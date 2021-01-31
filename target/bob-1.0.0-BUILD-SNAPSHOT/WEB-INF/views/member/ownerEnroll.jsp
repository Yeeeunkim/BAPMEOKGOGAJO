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

	<form>
	<div id="enrollArea">
		<h1 style="text-align: center;">사업자 회원가입 ></h1>
		<br>
		<br>
	<p><b style="color: red;">*</b>&nbsp;&nbsp;은 필수 입력란 입니다.</p><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;사업자명</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="member_name" id="member_name" placeholder="사업자명">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;사업자 번호</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="tel" name="business_number" id="business_number" placeholder="사업자 번호(-없이 입력해주세요)">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;식당명</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="shopName" id="shopName" placeholder="식당명">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;아이디</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="member_id" id="member_id" placeholder="아이디">
	</div><p class="pp"></p><pre style="color: red; text-align: left; display: inline-block;">8~16자리 영문 소문자, 숫자가 사용 가능합니다</pre><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;비밀번호</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="password" name="member_pwd1" id="member_pwd1" placeholder="비밀번호">
	</div><p class="pp"></p><pre style="color: red; text-align: left; display: inline-block;">8~16자리 영문 소문자, 숫자, 특수문자가 사용 가능합니다</pre><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;비밀번호 확인</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="password" name="member_pwd2" id="member_pwd2" placeholder="비밀번호 확인">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;이메일</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="email" name="email" id="email" placeholder="이메일">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b>*</b>&nbsp;&nbsp;홈페이지</p>&nbsp;&nbsp;
		<input class= "cInput" type="text" name="webAddress" id="webAddress" placeholder="홈페이지 주소">
	<br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;업체 주소</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="shopAddress" id="shopAddress" placeholder="업체 주소">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;업체 번호</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="tel" name="shopPhone" id="shopPhone" placeholder="업체 번호">
	</div><br><br>
	
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
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;대표사진</p>&nbsp;&nbsp;
	<div class="mb-3">
  		<input class="form-control form-control-sm" id="formFileSm" type="file" onchange="readURL(this)">
	</div><br>
	<p class="pp"></p><pre style="color: red; text-align: left; display: inline-block;">가로/세로 250px로 변환되어 나타납니다.</pre><br>
	<br>
	<p class="pp"></p><p class="pInput"><b style="color: red;"></b>&nbsp;&nbsp;미리보기</p>&nbsp;&nbsp;
	<div id="uploadImg" style="width: 400px; height: 400px;"></div>
	<br><br><br><br><br>
	
	
	<button type="submit" name="auth_code" value="2" class="btn btn-primary enrollBtn"> 가입하기 </button>
	
	<br><br><br>
	</div>
	</form>
	
	<jsp:include page="../common/footer.jsp"/>
	 
	<script>
		function readURL(input){
			if(input.files && input.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					$('#uploadImg').html("<img id=img src=''>")
					$('#img').attr('src', e.target.result).css('width', '250px').css('height', '250px');
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
</body>
</html>