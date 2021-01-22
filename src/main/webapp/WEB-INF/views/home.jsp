<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

  <!-- Link Swiper's CSS -->
 <link rel="stylesheet" href="../package/swiper-bundle.min.css">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<style>
	
	p,h4{font-family: 'Gugi';} 
	
	 .img{height:70vh;background-size: cover;margin:0;font-family:'Gugi';
	 	background-image: linear-gradient( rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3) ),url("<%= request.getContextPath() %>/resources/images/main/main.png");}

  	.img .content{
	     position: relative; 
	     top:50%;
	     left:50%;
	     transform: translate(-50%, -50%);                                                                   
	     font-size:5rem;
	     color: white;
	     z-index: 2; 
	     text-align: center;
 	 }
  	 
	.container-4{
	  overflow: hidden;
	  width: 300px; 
	  vertical-align: middle;
	  white-space: nowrap;
	}
  
	input::placeholder {
	  color:#D8D8D8;
	  font-style: italic;
	}

	
	.dishtype{position:relative; display:inline-block; padding:1%; }
	#dishtype1{margin-left:100px;}
	.dishtype img{width:300px; height:400px; }
	.dishtype .text { position:absolute;top:30px;size:50;}
	
	.pagination	{ margin-left:40%;}
	 
	
	/*list*/
	ul, li {list-style:none;}
	a { text-decoration:none; color:inherit;}
	.list_wrap {width:1200px; margin-left:10%;}
	.list_wrap ul {font-size:0;}
	.list_wrap .item {display:inline-block; width:20%; margin-left:5%; margin-top:0.2%;}
	.list_wrap .item:nth-child(-n+4){margin-top:0;}
	.list_wrap .item:nth-child(4n-3){margin-left:0;}
	.list_wrap .item .image {width:120%; height:160px;  background-position:50% 50%; background-size:cover; }
	.list_wrap .item .cont {padding:20px; width:120%;}
	.list_wrap .item strong a {display:block; margin:0 0 10px 0; font-size:16px; letter-spacing: -1px;}
	.list_wrap .item p {font-size:13px; letter-spacing:-1px;}	
	.go{display:inline-block; margin-top:10px; padding:5px 10px; background: #eee; font-size:13px; letter-spacing:-1px;} 
	
	/*------------------------------------------------------------------*/
	
	 .carousel {width:70%; margin-left:15%; margin-bottom:100px;}
	.far fa-star {background:yellow;} 
	
	/*---------------------------------------------------------------------------------------*/
	* {
	  box-sizing: border-box;
	}
	
	form.example input[type=text] { 
	  padding: 10px;
	  font-size: 17px;
	  border:0px;
	  float: left;
	  width: 80%;
	  background: #f1f1f1;
	   border-radius: 15px 0 0 15px; 
	}
	
	
	form.example button {
	  float: left;
	  width: 20%;
	  padding: 10px;
	  background:#F42B03;
	  color: white;
	  font-size: 17px;
	  border: 0px;
	  border-left: none;
	  cursor: pointer;
	    border-radius: 0 15px 15px 0;
	}
	
	
	form.example::after {
	  content: "";
	  clear: both;
	  display: table;
	}
	
	.card { margin-left:10px;} 
	.card{display:inline-block; }   

</style>
<title>Insert title here</title>
</head>
<body>
 <%@ include file="common/menubar.jsp" %>
 
	  <div class="img">
        <div class="content">
            <h1> 솔직한 리뷰, 믿을 수 있는 평점</h1>
            <h2>밥먹고가조!</h2>
			<img src="<%= request.getContextPath() %>/resources/images/main/위치.png"  width="50px" height="50px"><br>
			
			<!-- <span>
				<input type="search" id="a">
			</span>
			<span>
				<button id="button">검색</button>
			</span>  -->
			
			<form class="example" action="addressSearch.sh" style="margin:auto;max-width:500px">
			  <input type="text" placeholder=" 시, 군, 구, 도로명을 입력해 주소를  검색해주세요" name="searchContents" id="searchInput">
			  <button type="submit"><i class="fa fa-search"></i></button>
			</form>
			

        </div>
   	 </div>
    
    		<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
				<script>
					// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
					$(function(){
						$("#postcodify_search_button").postcodifyPopUp();
					});
				</script>


	
	<br><br>
	
  	<span class="dishtype" id="dishtype1" >
		<img src="<%= request.getContextPath() %>/resources/images/main/한식.png">
	</span>
	
	<span class="dishtype" id="dishtype2">
		<img src="<%= request.getContextPath() %>/resources/images/main/중식.png">
	</span>
	
	<span class="dishtype" id="dishtype3">
		<img src="<%= request.getContextPath() %>/resources/images/main/양식.png">
	</span>
	
	<span class="dishtype" id="dishtype4">
		<img src="<%= request.getContextPath() %>/resources/images/main/일식.png">
	</span>  
	



	 
	<br><br>
	<h4  style="text-align:center">평점이 높은 인기식당></h4><br>
	
	
	<div class="list_wrap">
		<ul>
			<li class="item item1"> 
				<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/images/main/main.png);"></div>
				<div class="cont">
					<strong>제목이 들어갑니다.</strong>
					<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;4.4</p>
					<p>이 식당은 이러한 식당입니다.</p>
				</div>
			</li>
			<li class="item item1"> 
				<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/images/main/main.png);"></div>
				<div class="cont">
					<strong>제목이 들어갑니다.</strong>
					<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;4.4</p>
					<p>이 식당은 이러한 식당입니다.</p>
				</div>
			</li>
			<li class="item item1"> 
				<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/images/main/main.png);"></div>
				<div class="cont">
					<strong>제목이 들어갑니다.</strong>
					<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;4.4</p>
					<p>이 식당은 이러한 식당입니다.</p>
				</div>
			</li>
			<li class="item item1"> 
				<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/images/main/main.png);"></div>
				<div class="cont">
					<strong>제목이 들어갑니다.</strong>
					<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;4.4</p>
					<p>이 식당은 이러한 식당입니다.</p>
				</div>
			</li>
			<li class="item item1"> 
				<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/images/main/main.png);"></div>
				<div class="cont">
					<strong>제목이 들어갑니다.</strong>
					<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;4.4</p>
					<p>이 식당은 이러한 식당입니다.</p>
				</div>
			</li>
			<li class="item item1"> 
				<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/images/main/main.png);"></div>
				<div class="cont">
					<strong>제목이 들어갑니다.</strong>
					<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;4.4</p>
					<p>이 식당은 이러한 식당입니다.</p>
				</div>
			</li>
			<li class="item item1"> 
				<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/images/main/main.png);"></div>
				<div class="cont">
					<strong>제목이 들어갑니다.</strong>
					<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;4.4</p>
					<p>이 식당은 이러한 식당입니다.</p>
				</div>
			</li>
			<li class="item item1"> 
				<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/images/main/main.png);"></div>
				<div class="cont">
					<strong>제목이 들어갑니다.</strong>
					<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;4.4</p>
					<p>이 식당은 이러한 식당입니다.</p>
				</div>
			</li>
		</ul>
	</div>
	
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
	
	
	
	<br><br><br>
	<h4 style="text-align:center">메뉴별 인기 맛집></h4>
		
		<div class="carousel">
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png" width="200px">item 1</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png" width="200px">item 2</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png"  width="200px">item 3</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/중식.png" width="200px">item 2</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/한식.png"  width="200px">item 3</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png" width="200px">item 2</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/일식.png"  width="200px">item 3</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/한식.png" width="200px">item 2</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png"  width="200px">item 3</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/중식.png" width="200px">item 2</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png"  width="200px">item 3</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/일식.png" width="200px">item 2</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png"  width="200px">item 3</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/중식.png" width="200px">item 2</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png"  width="200px">item 3</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/한식.png" width="200px">item 2</div>
		  <div><img src="<%= request.getContextPath() %>/resources/images/main/양식.png"  width="200px">item 3</div>
		</div>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.3.15/slick.min.js'></script>
	<script type="text/javascript">
	$('.carousel').slick({slidesToShow:5, slidesToScroll:5, dots:true});	
	
	</script>
	<br><br>
	<%@ include file="common/footer.jsp" %>

	
</body>
</html>