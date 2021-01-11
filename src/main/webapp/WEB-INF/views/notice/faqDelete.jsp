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
/* 	display: none; */
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
					<input type="checkbox" name="check" class="check" id=${ b.bNo } value=${ b.bNo }>
						<label for=${ b.bNo } class="title">Q. ${ b.bTitle }</label>
						<p class="desc">
			 			<br>${ b.bContents }
						</p>
						<hr class="hr">
				</c:forEach>
			</c:if>
			
			<!-- @@@@@버튼 : 관리자만 보이게 추후 수정 필요@@@@@ -->
<!-- 		<button class="btn1" onclick="location.href='fInsertForm.no'">글쓰기</button> -->
			<button class="btn1" onclick="fDelete();">삭제하기</button>
		</div>
		<div class="col-2"></div>
	</div>

	<c:import url="../common/footer.jsp" />
	
	<script>
// 		function fDelete(){
// // 			var check = document.getElmentsByName('check');
// // 			var check = document.getElmentsById('check');
// 			console(check);
// // 	  		var bool = confirm('정말 삭제하시겠습니까?');   
// // 	        if(bool){
// // 	       	 location.href= '${ ndelete }';
// // 	        }
// 		}
		
		function fDelete(){
			var check = document.getElementsByName('check');
			var bNoList = [];
			for(var i in check){	
				if(check[i].checked){
					console.log(check[i].id);
					bNoList.push(check[i].id);
				}
			}
			
			console.log(bNoList.length);
			if(bNoList.length == 0){
				alert("삭제할 게시물을 체크해주세요.");
			} else {
				var bool = confirm('정말 삭제하시겠습니까?');
				if(bool){
					$.ajax({
						url: 'fDelete.no',
						data: {bNoList:bNoList},
						success: function(data){
							console.log(data);
							alert("게시글" + data + "개 삭제 성공");
							location.reload();
						}
					});
				}
			}
		}
	</script>
</body>
</html>