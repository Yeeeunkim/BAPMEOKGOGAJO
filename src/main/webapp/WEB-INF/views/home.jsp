<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %> <!-- 현재 페이지 데이터를 세션에 담지 않겠다 -->
<html>
<head>
	<title>Home</title>
<style>
footer{ background:#1D3557;  bottom: 0px; left: 0px; width: 100%; height: 350px; color: white; margin-top:700px;}
</style>
</head>
<body>
	<c:import url="WEB-INF/views/common/menubar.jsp"/>
	<c:import url="WEB-INF/views/common/footer.jsp"/>
</body>
</html>
