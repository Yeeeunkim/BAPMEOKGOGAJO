<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String value = (String) request.getAttribute("auth_code");
%>
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
#agreeArea {
	/* 	border: 1px solid lightgray; */
	width: 80%;
	position: relative;
	margin: 0 auto;
	margin-top: 50px;
}

/* .enrollDiv { */
/* 	text-align: center; */
/* 	align-content: center; */
/* } */
.enrollBtn {
	display: block !important;
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	width: 250px !important;
	height: 50px;
}
/* style="font-family: 'Gugi';" */


</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div id="agreeArea">
	<form action="${ contextPath }/enroll.me" method="post">
		<input type="hidden" name="auth_code" value="<%= value %>">
		<h1 style="text-align: center; font-family: 'Gugi';">회원약관 동의 ></h1>
		<br> <br>
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">[필수]개인정보
				동의</label>
			<textarea class="form-control" id="exampleFormControlTextarea1"
				rows="9" readonly="readonly">
[제 1 장 총 칙]
제 1 조 (목적)
이 이용약관(이하 '약관')은 주식회사 지커뮤니케이션(이하 회사라 합니다)와 이용 고객(이하 '회원')간에 회사가 제공하는 레포트월드서비스(이하 서비스)의 가입조건 및 이용에 관한 제반 사항과
 기타 필요한사항을 구체적으로 규정함을 목적으로 합니다.

제 2 조 (이용약관의 효력 및 변경)
(1) 이 약관은 레포트월드 웹사이트(www.reportworld.co.kr 이하 '레포트월드 웹')에서 온라인으로 공시함으로써 효력을 발생하며, 합리적인 사유가 발생할 경우 관련법령에 위배되지 않는 범위
안에서 개정될 수 있습니다. 개정된 약관은 온라인에서 공지함으로써 효력을 발휘하며, 이용자의 권리 또는 의무 등 중요한 규정의 개정은 사전에 공지합니다.
(2) 회사는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관을 변경할 경우에는 지체 없이 이를 사전에 공시합니다.
회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 초기 화면상에 그 적용일자 7일이전부터 적용일자 전일까지 공지 합니다.
 다만 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전유예기간을 두어 공지합니다.
(3) 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 회사에서
  책임지지 않습니다.
(4) 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 
약관의 변경 사항에 동의한 것으로 간주됩니다.
(5) 이 약관은 회사와 회원간에 성립되는 서비스이용계약의 기본약정입니다. 회사는 필요한 경우 특정 서비스에 관하여 적용될 사항(이하 "개별약관"이라고 합니다)을 정하여 미리 공지할 수
 있습니다. 회원이 이러한 개별약관에 동의하고 특정 서비스를 이용하는 경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다. 
  		</textarea>
		</div>

		
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value=""
				id="flexCheckDefault"> <label class="form-check-label"
				for="flexCheckDefault"> 위의 약관에 동의합니다 (필수) </label>
		</div><br><br>

		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">[필수]이용약관
				동의</label>
			<textarea class="form-control" id="exampleFormControlTextarea1"
				rows="9" readonly="readonly">
[제 1 장 총 칙]
제 1 조 (목적)
이 이용약관(이하 '약관')은 주식회사 지커뮤니케이션(이하 회사라 합니다)와 이용 고객(이하 '회원')간에 회사가 제공하는 레포트월드서비스(이하 서비스)의 가입조건 및 이용에 관한 제반 사항과
 기타 필요한사항을 구체적으로 규정함을 목적으로 합니다.

제 2 조 (이용약관의 효력 및 변경)
(1) 이 약관은 레포트월드 웹사이트(www.reportworld.co.kr 이하 '레포트월드 웹')에서 온라인으로 공시함으로써 효력을 발생하며, 합리적인 사유가 발생할 경우 관련법령에 위배되지 않는 범위
안에서 개정될 수 있습니다. 개정된 약관은 온라인에서 공지함으로써 효력을 발휘하며, 이용자의 권리 또는 의무 등 중요한 규정의 개정은 사전에 공지합니다.
(2) 회사는 합리적인 사유가 발생될 경우에는 이 약관을 변경할 수 있으며, 약관을 변경할 경우에는 지체 없이 이를 사전에 공시합니다.
회사가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 초기 화면상에 그 적용일자 7일이전부터 적용일자 전일까지 공지 합니다.
 다만 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전유예기간을 두어 공지합니다.
(3) 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못해 발생하는 이용자의 피해는 회사에서
  책임지지 않습니다.
(4) 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴(해지)를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 
약관의 변경 사항에 동의한 것으로 간주됩니다.
(5) 이 약관은 회사와 회원간에 성립되는 서비스이용계약의 기본약정입니다. 회사는 필요한 경우 특정 서비스에 관하여 적용될 사항(이하 "개별약관"이라고 합니다)을 정하여 미리 공지할 수
 있습니다. 회원이 이러한 개별약관에 동의하고 특정 서비스를 이용하는 경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다. 
  		</textarea>
		</div>
		
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value=""
				id="flexCheckDefault"> <label class="form-check-label"
				for="flexCheckDefault"> 위의 약관에 동의합니다 (필수) </label>
		</div><br><br>

		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label">[선택]
				SNS정보 수신 동의</label>
			<textarea class="form-control" id="exampleFormControlTextarea1"
				rows="3" readonly="readonly">
할인쿠폰 및 혜택, 이벤트, 신상품 소식 등 사이트에서 제공하는 유익한 정보를 SMS와 이메일로 받아보실 수 있습니다.

단, 주문/거래 정보 및 주요 정책과 관련된 내용은 수신동의 여부와 관계없이 발송됩니다.

선택 약관에 동의하지 않으셔도 회원가입은 가능하며, 회원가입 후 회원정보수정 페이지에서 언제든지 수신여부를 변경하실 수 있습니다. 
  		</textarea>
		</div>

		
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value=""
				id="flexCheckDefault"> <label class="form-check-label"
				for="flexCheckDefault"> 위의 약관에 동의합니다 (선택) </label>
		</div><br><br>
		
		
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value=""
				id="flexCheckDefault"> <label class="form-check-label"
				for="flexCheckDefault"> 만 14세 이상입니다 (필수) </label>
		</div>
		<br><br><br><br>
		<p>위 서비스 이용약관 및 개인정보 수집/이용안내에 대해 동의하며, 회원가입을 하시겠습니까?</p>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value=""
				id="flexCheckDefault"> <label class="form-check-label"
				for="flexCheckDefault"> 전체 동의합니다 </label>
		</div><br><br>
		
		<button type="submit" class="btn btn-primary enrollBtn"> 가입하기 </button>
		</form>
	</div>
	 
	<jsp:include page="../common/footer.jsp"/>
	 
</body>
</html>