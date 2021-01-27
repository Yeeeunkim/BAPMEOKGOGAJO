<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
  	/*사이브 메뉴바 높이*/
	#sideBar{ margin-top:  -550px; text-align: center; color: white;
       width: 200px; height: 300px; background: white; border: none;}
       
  	/*전체*/
    .outer{
		width: 600px; min-height:30px;   padding-bottom: 50px; 
		margin-left: auto; margin:auto; margin-top: 10px; margin-bottom: 50px; font-family: 'Gugi';
	}
	
	/*테이블관련*/
	table{border: 0px; font-size: 20px; text-align: center;  }
	#qnaTable{text-align:center;  margin: auto; width: 650px; line-height: 50px; margin-top: 30px; margin-right: 350px;  border-spacing: 0 50px;}
	#qnaTable th{background: #1D3557; border-bottom: 3px solid lightgray; height: 30px; color:white;}
	#qnaTable td{border-bottom: 1px solid #1D3557 ; }
	#searchArea{ margin: auto; width: auto;}
	
	/*페이징*/
	#pageul { text-align:center; margin-top::5px; }
	.pageli { display:inline; vertical-align:middle;}
	.pagea { display:-moz-inline-stack;	/*FF2*/ display:inline-block; vertical-align:top; padding:4px; margin-right:3px;
	width:15px !important; color:#000; font:bold 12px tahoma; border:1px solid #eee; text-align:center;
	text-decoration:none; width /**/:26px;	/*IE 5.5*/ margin-top: -30px; }
	 .pagea.now {color:#fff; background-color:#f40; border:1px solid #f40; }
	.pagea:hover, .pageafocus { color:#fff; border:1px solid #f40; background-color:#f40;}
	
	/*하단 검색창 관련*/
	#searchValue{margin-left: 490px;  width: 260px;  border: none;}
	#searchBtn{ margin-right: 10px; padding-right:100px;  background: white; border: none; width: 30px; height: 30px;} 
	
	/*글쓰기 버튼*/
	.btn1{ width: 100px; height: 30px; border: none; border-radius: 50px;  background: #F42B03; color:white;  margin-right: 300px;  } 

	
</style>
</head>
<body>
 <c:import url="../common/menubar.jsp" />
	<div class="outer">
			<br><br>
			<br><br>
			<h1 align="center">QnA ></h1><br><br>
			<table id="qnaTable">
				<tr>
					<th>번호</th>
					<th>제목 </th>
					<th>작성자</th>
					<th>등록일</th>
				</tr>
				<tr>
					<td>1</td>
					<td>안녕하세요 밥먹고가조 입니다.</td>
					<td>user01</td>
					<td>2020.01.01</td>
				</tr>
				<tr>
					<td>1</td>
					<td>안녕하세요 밥먹고가조 입니다.</td>
					<td>user01</td>
					<td>2020.01.01</td>
				</tr>
				<tr>
					<td>1</td>
					<td>안녕하세요 밥먹고가조 입니다.</td>
					<td>user01</td>
					<td>2020.01.01</td>
				</tr>
				<tr>
					<td>1</td>
					<td>안녕하세요 밥먹고가조 입니다.</td>
					<td>user01</td>
					<td>2020.01.01</td>
				</tr>
				<tr>
					<td>1</td>
					<td>안녕하세요 밥먹고가조 입니다.</td>
					<td>user01</td>
					<td>2020.01.01</td>
				</tr>
			</table>

	</div>
	
	<!-- 페이징 처리 -->
		<ul align="center" height="20" id="pageul">
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<li class="pageli"><a class="pagea">[${ p }]</a></li>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="pagination" value="blist.bo">
							<c:param name="page" value="${ p }"/>
						</c:url>
						<li class="pageli"><a href="${ pagination }" class="pagea">${ p }</a></li>&nbsp;
					</c:if>
				</c:forEach>
		</ul>
	
	<!-- 검색창, 글쓰기 버튼 -->
	<div id="searchArea" align="center">
		<input id="searchValue" type="search" placeholder="검색어를 입력하세요 ">
		<button onclick="searchBoard();" id="searchBtn"><i class="fa fa-search"></i></button>
		<button class="btn1" onclick="location.href='qInsertForm.no'">글쓰기</button>
		<hr style="width: 300px; margin-right: 100px; margin-top: 5px; border-bottom: 3px solid black;">
	</div>
    
     <c:import url="../common/noticeSidebar.jsp" />
	 <br><br><br><br><br><br><br><br><br>
     <c:import url="../common/footer.jsp" /> 

   
	<script type="text/javascript">
	/*상세*/
	$(function(){
					$("#boardTable").find("td").mouseenter(function(){
						$(this).parents("tr").css({"background":"white", "color":"#F48C06", "cursor":"pointer"});
					}).mouseout(function(){
						$(this).parents("tr").css({"background":"none", "color":"black"});
					}).click(function(){
						var bId=$(this).parents().children("td").eq(0).text();
	
						location.href="selectOne.bo?bId="+bId;
					});
				});
	/*검색*/
		function searchBoard(){
			var searchCondition = $("#searchCondition").val();
			var searchValue = $("#searchValue").val();
			
			location.href="search.bo?searchCondition="+searchCondition+"&searchValue="+searchValue;
		}
	</script>
         
</body>
</html>