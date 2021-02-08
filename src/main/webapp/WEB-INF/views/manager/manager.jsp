<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<title>매출통계</title>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<style>
*{margin:0; padding:0; list-style:none; text-decoration:none;}
.sidebar {position:fixed; left:0; width:200px; height:100%; background:#F42B03;}
.sidebar header{font-size: 22px; color:white; text-align:center; line-height:70px;  user-select:none;}
.sidebar ul a{display::block; height:100%; width:100%; line-height:65px; font-size:20px; color:white; padding-left:15px;box-sizing:border-box; }
.sidebar ul li:hover a{padding-left:50px;}

.dropdown{margin-left:85%; margin-top:20px; z-index} 
.container {width:80%;}
.row {width:80%; padding-left:10%;}
</style>
</head>
<body>
	<c:import url="../common/menubar.jsp"/>
	
	<div class="sidebar">
		<header><b>Manager Page</b></header>
		<ul>
			<!-- <li><a href="#"><i class="fas fa-qrcode">메뉴바</i></a></li>	 -->	
			<li><a href="manager.ma"><i class="fas fa-signal">통계</i></a></li>	
			<li><a href="shopSearch.ma"><i class="fas fa-pen-fancy">리뷰관리</i></a></li>	
			<li><a href="declaration.ma"><i class="fas fa-exclamation-circle">신고식당</i></a></li>	
		</ul>	
	</div>	
	
<!-- 	<div class="dropdown"> -->
<!--   <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false"> -->
<!--     		통계카테고리 -->
<!--   </button> -->
<!--   <ul class="dropdown-menu" aria-labelledby="dropdownMenu2"> -->
<!--     <li><button class="dropdown-item" type="button">음식점별</button></li> -->
<!--     <li><button class="dropdown-item" type="button">올해 음식</button></li> -->
<!--     <li><button class="dropdown-item" type="button">20대 인기 메뉴</button></li> -->
<!--   </ul> -->
<!-- </div> -->
		
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<canvas id="myChartOne"></canvas>
			</div>		
		</div>
	</div>	
	
	<script>
		var myChartOne=document.getElementById('myChartOne').getContext('2d');
		var barChart =new Chart(myChartOne,{
			type:'bar',
			data:{
				labels:[
					<c:forEach var="cs" items="${ cs }" varStatus="status">
						"${ cs.shopCategory }"<c:if test="${ !status.last }">,</c:if>
					</c:forEach>
				],
				datasets:[{

					label:'카테고리별 매출',

					data:[
						<c:forEach var="cs" items="${ cs }" varStatus="status">
							${ cs.sales }<c:if test="${ !status.last }">,</c:if>
						</c:forEach>
					],
				}]
			}
		})
	</script>
</body>
</html>