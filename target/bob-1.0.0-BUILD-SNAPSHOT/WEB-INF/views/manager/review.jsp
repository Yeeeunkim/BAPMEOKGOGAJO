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
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	
 	<div class="sidebar">
		<header><b>Manager Page</b></header>
		<ul>
			<li><a href="#"><i class="fas fa-qrcode">메뉴바</i></a></li>		
			<li><a href="review.do"><i class="fas fa-pen-fancy">리뷰관리</i></a></li>	
			<li><a href="#"><i class="fas fa-exclamation-circle">신고식당</i></a></li>	
			<li><a href="#"><i class="fas fa-signal">통계</i></a></li>	
		</ul>	
	</div>	 
	
	
		
		<div class="row">
		
		<table id="example-table-3" width="100%" class="table table-bordered table-hover text-center">
			<thead>
				<tr>
					<th>선택</th>
					<th>No. </th>
					<th>사용자</th>
					<th>신고내용</th>
					<th>신고요청일</th>
				</tr>
			</thead>
			<tbody>				
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>1</td>
					<td>user07</td>
					<td>맛없어요</td>
					<td>2020.01.01</td>
				
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>2</td>
					<td>user08</td>
					<td>위생불량</td>
					<td>2020.01.01</td>
					
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>4</td>
					<td>user09</td>
					<td>넷마블</td>
					<td>2020.01.01</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>5</td>
					<td>user09</td>
					<td>불친절합니다</td>
					<td>2020.01.01</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>6</td>
					<td>user09</td>
					<td>벌레가 나왔어요</td>
					<td>2020.01.01</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="user_CheckBox" ></td>
					<td>7</td>
					<td>user09</td>
					<td>너무 짜요</td>
					<td>2020.01.01</td>
				</tr>
			</tbody>
		</table>
		
			<nav aria-label="Page navigation example">
			  <ul class="pagination">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item"><a class="page-link" href="#">4</a></li>
			    <li class="page-item"><a class="page-link" href="#">5</a></li>
			    <li class="page-item"><a class="page-link" href="#">6</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
			
			
			
			
			
		<div class="d-grid gap-2 d-md-block">
			  <button class="btn btn-primary" type="button">전체선택</button>
			  <button class="btn btn-primary" type="button">선택삭제</button>
			  <button class="btn btn-primary" type="button">삭제하기</button>
		</div>
	</div>
	

	
	
</body>
</html>