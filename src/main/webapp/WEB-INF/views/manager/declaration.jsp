<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<style>
*{margin:0; padding:0; list-style:none; text-decoration:none;}
.sidebar {position:fixed; left:0; width:200px; height:100%; background:#F42B03;}
.sidebar header{font-size: 22px; color:white; text-align:center; line-height:70px;  user-select:none;}
.sidebar ul a{display::block; height:100%; width:100%; line-height:65px; font-size:20px; color:white; padding-left:15px;box-sizing:border-box; }
.sidebar ul li:hover a{padding-left:50px;}
.row {width:100%; padding-left:15%; padding-top:5%}
.pagination {margin-left:35%;}
.contentTR:hover {cursor: pointer;}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	
 	<div class="sidebar">
		<header><b>Manager Page</b></header>
		<ul>
<!-- 			<li><a href="#"><i class="fas fa-qrcode">메뉴바</i></a></li>		 -->
			<li><a href="manager.ma"><i class="fas fa-signal">통계</i></a></li>	
			<li><a href="shopSearch.ma"><i class="fas fa-pen-fancy">리뷰관리</i></a></li>	
			<li><a href="declaration.ma"><i class="fas fa-exclamation-circle">신고식당</i></a></li>	
		</ul>	
	</div>	 
	
	
		
	<div class="row">
		<table id="example-table-3" width="100%" class="table table-bordered table-hover text-center">
			<thead>
				<tr>
					<th>No. </th>
					<th>점포명</th>
					<th>신고내용</th>
					<th>작성자</th>
					<th>신고일</th>
					<th>처리상태</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${ mDList }">
					<tr class="contentTR">
						<td>${ d.dNo }</td>
						<td>${ d.sName }</td>
						<td>${ d.dComment }</td>
						<td>${ d.memberId }</td>
						<td>${ d.dWrite }</td>
						<td>${ d.dStatus }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<script>
			$(function(){
				$('.contentTR').click(function(){
					var dNo=$(this).children('td').eq(0).text();
					location.href='declationDetail.ma?dNo=' + dNo;
				});
			});
		</script>
		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<c:if test="${ pi.currentPage <= 1 }">
					<li class="page-item">
						<b class="page-link" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</b>
					</li>
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
					<li class="page-item">
						<a class="page-link" href="declaration.ma?page=${ pi.currentPage - 1 }" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
				</c:if>
			    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
			    		<li class="page-item"><b class="page-link">${ p }</b></li>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<li class="page-item"><a class="page-link" href="declaration.ma?page=${ p }">${ p }</a></li>
					</c:if>
				</c:forEach>
				<c:if test="${ pi.currentPage >= pi.maxPage }">
					<li class="page-item">
				      <b class="page-link" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </b>
				    </li>
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<li class="page-item">
			      		<a class="page-link" href="declaration.ma?page=${ pi.currentPage + 1 }" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
			      		</a>
					</li>
				</c:if>
			</ul>
		</nav>
	</div>
</body>
</html>