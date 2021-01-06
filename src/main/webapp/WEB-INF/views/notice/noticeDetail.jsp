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
<title>MyPage</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>

/*사이브 메뉴바 높이*/
#sideBar {
	margin-top: -650px;
	text-align: center;
	color: white;
	width: 200px;
	height: 300px;
	background: white;
}

/*테이블관련*/
table {
	width: 500px;
	font-family: 'Gugi';
}

#noticeTable {
	text-align: left;
	margin: auto;
	width: 500px;
	margin-top: 45px;
}

#noticeTable th {
	border-bottom: 3px solid #1D3557;
}

#noticeTable td {
	border-bottom: 1px solid #1D3557;
}

#content_text {
	display: block;
	margin-right: auto;
	width: 500px;
	height: 250px;
	resize: none;
	outline: none;
	border: none;
	font-family: 'Gugi';
}

#text {
	border: none;
}

/*글쓰기 버튼*/
.btn1 {
	width: 100px;
	height: 30px;
	border: none;
	border-radius: 50px;
	background: #F42B03;
	color: white;
	margin-left: 310px;
	margin-top: 40px;
}

.btn2 {
	width: 100px;
	height: 30px;
	border: none;
	border-radius: 50px;
	background: #F42B03;
	color: white;
	margin-left: 200px;
	margin-top: 40px;
}

/*푸터 높이 조절*/
footer {
	margin-top: 300px;
}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp" />
	<h1 align="center" style="margin-top: 110px; font-family: 'Gugi';">공지사항
		></h1>
	<table id="noticeTable">
		<th></th>
		<th></th>
		<th></th>
		<tr>
			<th>&nbsp제목&nbsp&nbsp <input value="${board.bTitle}"
				style="border: 0px; width: 87%;" readonly="readonly"></th>
			<th></th>
			<th></th>
		</tr>
		<tr>
			<div id="fileArea">
				<th>&nbsp첨부파일&nbsp&nbsp <a
					href="${ contextPath }/resources/buploadFiles/${ attachment.saveName }"
					download="${ attachment.originName }" style="color: black;">${ attachment.originName }</a>
				</th>
			</div>
			<br>
		<tr>
			<th colspan="3">
				<div id="titleImgArea" style="width: 100%; height: 100%;">
					<c:if test="${ !empty attachment.saveName }">
					<img id="titleImg" width="100%" height="100%" src="${ contextPath }/resources/buploadFiles/${ attachment.saveName }">
					</c:if>
					<img id="titleImg" width="100%" height="100%">
				</div>
			</th>
		</tr>
		</tr>
		<tr>
			<th>
				<textarea id="content_text" name="content" style="font-family: ' Gugi;" readonly="readonly">${board.bContents}</textarea>
			</th>
		</tr>

		<c:url var="nupView" value="nupView.no">
			<c:param name="bNo" value="${ board.bNo }" />
			<c:param name="page" value="${ page }" />
		</c:url>
		<c:url var="ndelete" value="ndelete.no">
			<c:param name="bNo" value="${board.bNo}" />
		</c:url>

		<%-- 				<c:if test="${ # }"> --%>
		<tr style="border: none;">
			<td colspan="2" align="center" style="border: none;">
				<button class="btn1" onclick="location.href='${ nupView }'"	style="position: absolute;">수정하기</button>
				<button class="btn2" onclick="nDelete();">삭제하기</button>
			</td style="border: none;">
		</tr style="border: none;">
		<%-- 				</c:if> --%>
	</table>


	<c:import url="../common/footer.jsp" />
	<script>
		// 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 함수
		function LoadImg(value, num) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					switch (num) {
					case 1:
						$("#titleImg").attr("src", e.target.result);
						break;
					}
				}
				reader.readAsDataURL(value.files[0]);
			}
		}
		
		function nDelete(){
       		 var bool = confirm('정말 삭제하시겠습니까?');   
	         if(bool){
	        	 location.href= '${ ndelete }';
	         }
		}
	</script>
</body>
</html>