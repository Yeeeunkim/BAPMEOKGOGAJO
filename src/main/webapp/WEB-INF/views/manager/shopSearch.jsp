<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상점검색</title>
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
<!-- 			<li><a href="#"><i class="fas fa-qrcode">메뉴바</i></a></li>		 -->
			<li><a href="manager.ma"><i class="fas fa-signal">통계</i></a></li>	
			<li><a href="shopSearch.ma"><i class="fas fa-pen-fancy">리뷰관리</i></a></li>	
			<li><a href="declaration.ma"><i class="fas fa-exclamation-circle">신고식당</i></a></li>	
		</ul>	
	</div>	 
	
	<div class="row">
		<h2 align="center">점포 검색</h2>
		<div id="searchArea" align="center">
			<label>검색 조건</label>
			<select id="searchCondition" name="searchCondition">
				<option value="memberId">회원아이디</option>
				<option value="sName">점포이름</option>
				<option value="bNumber">사업자번호</option>
			</select>
		
			<input id="searchValue" type="search">
			<button onclick="searchBoard();">검색하기</button>
		</div>
		<script type="text/javascript">
			function searchBoard(){
				var searchCondition = $("#searchCondition").val();
				var searchValue = $("#searchValue").val();
				
				location.href="shopList.ma?searchCondition="+searchCondition+"&search="+searchValue;
			}
		</script>
	</div>
</body>
</html>