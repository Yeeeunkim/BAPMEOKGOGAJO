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
<title>밥먹고가조 QNA</title>
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
							<c:if test="${ loginUser.member_id eq b.mId || loginUser.member_id eq 'admin'}">
								<c:url var="qdetail" value="qdetail.no">
									<c:param name="bNo" value="${ b.bNo }"/>
									<c:param name="page" value="${ pi.currentPage }"/>
								</c:url>
								<a href="${ qdetail }" class="aTitle">${ b.bTitle }</a>
							</c:if>
							<c:if test="${ loginUser.member_id ne b.mId && loginUser.member_id ne 'admin'}">
								<a onclick="noWriter();" class="aTitle">${ b.bTitle }</a>
							</c:if>
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
						<font color="orange" size="4"><b>[${ p }]</b></font>
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
			

			<c:if test="${ !empty loginUser.member_id }">
			<button class="nBtn" onclick="qInsert();">글쓰기</button>
			</c:if>
		</div>
		<div class="col-2"></div>
	</div>

	<c:import url="../common/footer.jsp" />
	
	<script>
		function qInsert(){
			location.href = "${ contextPath }/qInsertForm.no"
		}
		
		function noWriter(){
			alert("작성자만 접근이 가능합니다.");
		}

	</script>
</body>
</html>