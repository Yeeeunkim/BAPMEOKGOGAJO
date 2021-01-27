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
	#text{
		border: none;
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
					<th>&nbsp제목&nbsp&nbsp <input type="text" id="text" name="title" placeholder="제목을 입력하세요."></th>
					<th></th>
					<th></th>
				</tr>
				<tr>  
					<th>
						<textarea id="content_text" name="content" placeholder="질문을 입력해주세요." style="font-family: 'Gugi;"></textarea>
					</th>
				</tr>
				<tr>  
					<th>
						<textarea id="content_text" name="content" placeholder="답변을 입력해주세요." style="font-family: 'Gugi;"></textarea>
					</th>
				</tr>
				<tr style="border: none;">
					<td colspan="2" align="center" style="border: none;">
					 <button type="submit" class="btn1"  style="position: absolute;">작성완료</button>
					 <button class="btn2" id="cancelBtn" onclick="location.href='nlist.no'">목록으로</button>
					</td style="border: none;"> 
				</tr style="border: none;">
			</table>
	</form> 
	 
	 <c:import url="../common/noticeSidebar.jsp" />  
	  
   
         <c:import url="../common/footer.jsp"/>
	 <script type="text/javascript" >
	 	// 내용 작성 부분의 공간을 클릭할 때 파일 첨부 창이 뜨도록 설정하는 함수
				$(function(){
						$("#fileArea").hide(); 
								
						$("#titleImgArea").click(function(){
							$("#thumbnailImg1").click();
						});
					});
						
				// 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 함수
				function LoadImg(value, num){
					if(value.files && value.files[0]){
						var reader = new FileReader();
								
						reader.onload = function(e){								
							switch(num){
							case 1: 
								$("#titleImg").attr("src", e.target.result);
								break;
							}
						}
								
						reader.readAsDataURL(value.files[0]);
					}
				}
	
	</script>  
</body>
</html>