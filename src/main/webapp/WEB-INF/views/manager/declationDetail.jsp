<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.5.1.min.js"></script>

<style>
	#body{
		align:center;
		font-family: 'Gugi';
	}
	#cancle {
   background-color: white;
   color: gray;
   font-weight: bold;
   border: 1px solid black;
   border-radius: 5px;
   width: 100px;
   height: 40px;
   position: relative;
   right: 100px;
   font-size :large;
}
#send {
   background-color: #F42B03;
   color: white;
   font-weight: bold;
   border: 1px solid white;
   border-radius: 5px;
   width: 100px;
   height: 40px;
   position: relative;
   left:100px;
   
   font-size :large;
}
	.str{
		font-size: 70px;
		 cursor:pointer;
		 font-weight: 100;
		  
	}
	.dTable{
		font-size: 22px;
	}
	.dTd{
		min-width: 170px;
	}
    
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/menubar.jsp"%>
	<br><br>
	<div id="body">
		<h1 align="center"><b>신고 내용</b></h1>
		<br><br>
		
		<form action="dRepleInsert.ma" method="post" align="center">
			<input type="hidden" name="dNo" value="${ declationDetail.dNo }">
			<div id="reviewran">
				<table class="dTable" align="center">
					<tr>
						<td>신고자 : </td>
						<td class="">${ declationDetail.memberId }</td>
						<td>신고 식당 : </td>
						<td class="dTd">${ declationDetail.sName }</td>
					</tr>
					<tr>
						<td>신고일 : </td>
						<td class="dTd">${ declationDetail.dWrite }</td>
						<td>처리상태 : </td>
						<td class="dTd">${ declationDetail.dStatus }</td>
					</tr>
				</table>
			</div>
			
			<br>
			<textarea rows="15" cols="90" readonly>${ declationDetail.dComment }</textarea><br><br>
			<c:if test="${ declationDetail.dStatus eq 'N'.charAt(0) }">
				<textarea rows="15" cols="90" name="declationComment" id="content"></textarea><br><br>
				<div class="btn">
					<input type="button" id="cancle" onclick="location.href='declaration.ma'"value="취소">
					<input type="submit" id="send" value="답변등록">
				</div>
			</c:if>
			<c:if test="${ declationDetail.dStatus eq 'Y'.charAt(0) }">
				<textarea rows="15" cols="90" name="declationComment" id="content" readonly>${ declationReple.dRComment }</textarea><br><br>
				<div class="btn">
					<input type="button" id="cancle" onclick="location.href='declaration.ma'"value="취소">
				</div>
			</c:if>
			
			
			
			
		</form>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</body>
</html>