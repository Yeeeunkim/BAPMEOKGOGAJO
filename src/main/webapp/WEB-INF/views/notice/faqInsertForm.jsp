<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<title>MyPage</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
  
  	/*사이브 메뉴바 높이*/
	#sideBar{ margin-top:  -650px; text-align: center; color: white;
       width: 200px;  height: 300px; background: white;}
     
    /*테이블관련*/   
	table{ width: 500px; font-family: 'Gugi'; }
	#boardTable {text-align: left;  margin: auto; width: 500px;  margin-top: 45px; }
	#boardTable th{border-bottom: 3px solid #1D3557;}
	#boardTable td{border-bottom: 1px solid #1D3557;}

	 #content_text {display: block; margin-right: auto; width: 500px;
		height: 250px; resize: none; outline: none; border: none;  font-family: 'Gugi'; } 

	#titleInput {
		outline: none;
		width: 87%;
		border: 0px solid lightgray;
	}
	
	
	/*글쓰기 버튼*/
	.btn1{ width: 100px; height: 30px; border: none; border-radius: 50px;  background: #F42B03; color:white; margin-left: 310px; margin-top: 40px;} 
	.btn2{ width: 100px; height: 30px; border: none; border-radius: 50px;  background: #F42B03; color:white; margin-left: 200px; margin-top: 40px;}

	/*푸터 높이 조절*/
	footer{margin-top: 300px;}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	<h1 align="center" style="margin-top: 110px; font-family: 'Gugi';">FNQ 등록 ></h1>
	<form action="fInsert.no" method="post" encType="multipart/form-data"> 
			<table id="boardTable">
				<th></th><th></th><th></th>
				<tr>
					<th>&nbspQ&nbsp&nbsp <input type="text" id="titleInput" name="bTitle" placeholder="질문을 입력하세요."></th>
					<th></th>
					<th></th>
				</tr>
				<tr>  
					<th>
						<textarea id="content_text" name="bContents" placeholder="답변을 입력해주세요." style="font-family: 'Gugi;"></textarea>
					</th>
				</tr>
				<tr style="border: none;">
					<td colspan="2" align="center" style="border: none;">
					 <button type="submit" class="btn1"  style="position: absolute;">작성완료</button>
					 <button type="button" class="btn2" id="cancelBtn" onclick="location.href='fList.no'">목록으로</button>
					</td style="border: none;"> 
				</tr style="border: none;">
			</table>
			
			<!-- 작성자 보내기 위함 -->
			<input type="hidden" name="mId" value='${loginUser.member_id}'>
	</form> 
	  
   
    <c:import url="../common/footer.jsp"/>  
</body>
</html>