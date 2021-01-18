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
	#file[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
		
	}
    
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	<br><br>
	<div id="body">
		<h1 align="center"><b>리뷰 작성></b></h1>
		<br><br>
		
		<form action="" align="center">
			<div id="reviewran"><h2><b name="shopName">행복한 찜닭</b> 에 솔찍한 리뷰를 써주세요</h2></div>
			<br><br>
			<textarea rows="15" cols="120"></textarea><br><br>
			<div>
			<span class="glyphicon glyphicon-plus" id="file" aria-hidden="true"></span>
			<input type="file"><br><br>
			</div>
			<div class="btn">
				<input type="button" id="cancle" value="취소">
				<input type="submit" id="send" value="등록">
			</div>
		</form>
	</div>
	<c:import url="../common/footer.jsp"/>

</body>
</html>