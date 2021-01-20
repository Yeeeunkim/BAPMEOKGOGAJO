<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap"
	rel="stylesheet">
<title>밥먹고가조 FAQ</title>
<style>

.sArea {	
	width: 200px !important;
	display: inline-block !important;
}

.bArea {
	width: 60% !important;
	display: inline !important;
	position: relative;
	top: 80px;
	margin: auto;
}

.check {
	display: none;
}

.title {
	width: 100%;
	font-weight: bold;
	padding: 0px;
	margin: 0px;
}

.desc {
	max-height: 0px;
	overflow: hidden;
}

.check:checked+.title+.desc {
	max-height: 1000px;
}

.btn1 {
	float: right;
	margin-top: 50px;
	width: 100px;
	height: 30px;
	border: none;
	border-radius: 50px;
	background: #F42B03;
	color: white;
	margin-bottom: 50px;
	margin-left: 10px;
}
.hr{
	background-color: navy;
	padding: 0px;
	margin-top: 10px;
	margin-bottom: 16px;
}
</style>
</head>
<body style="font-family: 'Gugi';">
	<c:import url="../common/menubar.jsp" />
	<br>
	<br>
	<h1 align="center" style="font-family: 'Gugi';">FAQ ></h1>
	<div class="row">
		<div class="col-1"></div>
		<div class="sArea">
			<c:import url="../common/noticeSidebar.jsp" />
		</div>
		<div class="bArea">
			<c:if test="${ !empty list }">
				<hr class="hr">
				<c:forEach var="b" items="${ list }">
					<input type="checkbox" class="check" id=${ b.bNo }>
						<label for=${ b.bNo } class="title">Q. ${ b.bTitle }</label>
						<p class="desc">
			 			<br>A. ${ b.bContents }
						</p>
						<hr class="hr">
				</c:forEach>
			</c:if>
			
			<c:if test="${ loginUser.member_id eq 'admin' }">
			<button class="btn1" onclick="location.href='fInsertForm.no'">글쓰기</button>
			<button class="btn1" onclick="location.href='fDeleteView.no'">삭제하기</button>
			</c:if>
		</div>
		<div class="col-2"></div>
	</div>
	<div class="row" style="height: 50px;"></div>
	<c:import url="../common/footer.jsp" />

</body>
</html>