<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
</head>
<body>
<<<<<<< HEAD
<script>
	$(document).ready(function(){
		location.href='home.do';
	});
</script>
=======
		 <c:import url="WEB-INF/views/shop/shopReservation.jsp"/>
<%--  <%@ include file="WEB-INF/views/home.jsp" %>  --%>
>>>>>>> parent of 088d556... 리뷰 등록, 삭제
</body>
</html>