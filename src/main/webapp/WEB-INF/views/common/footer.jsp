<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.5.1.min.js"/> 
<link rel="preconnect" href="https://fonts.gstatic.com">
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
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">

<!-- 폰트 -->
<script src="https://kit.fontawesome.com/7293f5b137.js"
	crossorigin="anonymous"></script>
<style>
	a{
		text-decoration: none;
		color:white;
	}
	a:hover {
		color:orange;
	}

    .searchbar:hover > .search_input{
	    padding: 0 10px;
	    width: 200px;  /*수정 보류!*/
	    caret-color:black;
	    transition: width 0.4s linear;
	    background-color: white;
	    border-radius:4px;
    }
	
	footer{ background:#1D3557;  margin-top: 50px; bottom: 0px; left: 0px; width: 100%; height: 400px; color: white; }
	#flogo{ width: 110px; height: 60px; margin-top: 15px;} 
/*  	.lrDiv{ width: 21%;} */
	.fTitle{ width: 90px; text-align: right; margin-top: 55px; margin-right: 10px; float: left;}
	.fHr{ width: 100%;}
</style>
</head>
<body>
	<footer>
		<div id="fArea" class="row">
			<div class="lrDiv col-2"></div>
			<div class="col-8">
				<div class="row">
					<img id="flogo" src="resources/images/logo.png">
					<span class="fTitle"><a href="blist.no">회사소개</a></span>
					<span class="fTitle"><a href="nList.no">고객센터</a></span>
					<span class="fTitle"><a href="qList.no">문의하기</a></span>
				</div>
				<hr class="fHr">
		 		<div class="">
					<tr>
					<th><a>이태원 |</a></th>
					<th><a>홍대 |</a></th>
					<th><a>강남역 |</a></th>
					<th><a>가로수길 |</a></th>
					<th><a>신촌 |</a></th>
					<th><a>명동 |</a></th>
					<th><a>대학로 |</a></th>
					<th><a>연남동 |</a></th>
					<th><a>부산 |</a></th>
					<th><a>합정 |</a></th>
					<th><a>대구 |</a></th>
					<th><a>여의도 |</a></th>
					<th><a>건대 |</a></th>
					<th><a>경리단길 |</a></th>
					<th><a>한남동 |</a></th>
					<th><a>대전 |</a></th>
					<th><a>종로 |</a></th>
					<th><a>서촌 |</a></th>
					<th><a>잠실 |</a></th>
					<th><a>인천 |</a></th>
					<th><a>코엑스 |</a></th>
					</tr>
		 		</div>
		 		<hr class="fHr">
				<div class="">
					<tr>
					<th>(주)밥먹고가조</th><br>
					<th>주소 :서울특별시 강남구 역삼동 남도빌딩 3층</th><br>
					<th>대표이사 강건강</th><br>
					<th>사업자등록번호 : 201-81-12345 | 개인정보보호 책임자 : 남나눔</th><br>
					<th>운영시간 : 월~금 / 09:00 ~ 18:00 / 주말, 공휴일 휴무</th><br>
					<th>Copyrightⓒbapmeokgogajo. All Right Reserved</th><br>
				</tr>
				</div>
			</div>
			<div class="lrDiv col-2">
				
			</div>
		</div>
	</footer>
</body>
</html>