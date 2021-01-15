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

.nBtn{
	float: right;
	margin-top: 50px;
	width: 100px;
	height: 30px;
	background: #F42B03;
	color: white; 
	border: none;
	border-radius: 50px; 
/* 	border: 0px !important; */   
}

th{border-bottom: 3px solid #1D3557 !important;}
td{border-bottom: 1px solid #1D3557 !important;}

.aPage{
	color: black !important;
}

.aTitle{
	color: black;
}
</style>
</head>
<body style="font-family: 'Gugi';">
	<c:import url="../common/menubar.jsp" />
	<br>
	<br>
	<h1 style="text-align: center;">QNA></h1>
	<div class="row">
		<div class="col-1"></div>
		<div class="sArea">
			<c:import url="../common/noticeSidebar.jsp" />
		</div>

		<div class="bArea">
			<table class="table">
				<thead>
					<tr>
						<th class="th" scope="col" style="width: 15%">No</th>
						<th class="th" scope="col" style="width: 45%">Title</th>
						<th class="th" scope="col" style="width: 20%">Writer</th>
						<th class="th" scope="col" style="width: 20%">Date</th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${ !empty list }">			
				<c:forEach var="b" items="${ list }">
					<tr class="nContents">
						<td scope="row">${ b.bNo }</td>
						<td class="nTitle">
							<c:url var="qdetail" value="qdetail.no">
								<c:param name="bNo" value="${ b.bNo }"/>
								<c:param name="page" value="${ pi.currentPage }"/>
							</c:url>
							<a href="${ qdetail }" class="aTitle">${ b.bTitle }</a>
						</td>
						<td>${ b.mId }</td>
						<td>${ b.bWrite }</td>
					</tr>				
				</c:forEach>
				</c:if>
				
				</tbody>
				
				<!-- 페이징 처리 -->
		<tr align="center" height="20" id="buttonTab">
			<td colspan="6">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage <= 1 }">
					[이전]
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<c:url var="before" value="qList.no">
						<c:param name="page" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a class="aPage" href="${ before }">[이전]</a> &nbsp;
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<font color="red" size="4"><b>[${ p }]</b></font>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="pagination" value="qList.no">
							<c:param name="page" value="${ p }"/>
						</c:url>
						<a class="aPage" href="${ pagination }">${ p }</a> &nbsp;
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					[다음]
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="after" value="qList.no">
						<c:param name="page" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a class="aPage" href="${ after }">[다음]</a>
				</c:if>
			</td>
		</tr>
				
			</table>
			
			<!-- @@@@@버튼 : 관리자만 보이게 추후 수정 필요@@@@@ -->
			<button class="nBtn" onclick="qInsert();">글쓰기</button>
		</div>
		<div class="col-2"></div>
	</div>

	<c:import url="../common/footer.jsp" />
	
	<script>
		function qInsert(){
			location.href = "${ contextPath }/qInsertForm.no"
		}
		
		$(function(){
			$('.nContents').mouseenter(function(){
				$(this).css({'color':'orange', 'font-weight':'bold', 'cursor':'pointer'});
			}).mouseout(function(){
				$(this).css({'color':'black', 'font-weight':'normal'});
			}).click(function(){
				var bNo = $(this).children('td').eq(0).text();
				
				location.href="qdetail.no?bNo=" + bNo + '&page=' + ${pi.currentPage};
			});
		});
	</script>
</body>
</html>