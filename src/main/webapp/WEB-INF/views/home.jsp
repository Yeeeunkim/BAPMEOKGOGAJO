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
	
	p,h4,h5{font-family: 'Gugi';} 
	
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
	.center{text-align: center;}
	
	.category {display: inline-block; width:1300px; margin-bottom:100px;}
	.dishtype a{display: inline-block; width:250px; height: 312px;}
	.dishtype img{width:250px; height: 312px;}
	
	 .page_navigation{display:inline-block;text-align: center;}
	
	/*list*/
	ul, li {list-style:none;}
	a { text-decoration:none; color:inherit;}
	.list_wrap {display: inline-block; width:1300px; padding-bottom: 10px;}
	.list_wrap ul {font-size:0;}
	.list_wrap .item {display:inline-block; width:280px; height: 330px; margin-left:2%; margin-top:10px;}
	.list_wrap .item:nth-child(-n+4){margin-top:0;}
	.list_wrap .item:nth-child(4n-3){margin-left:0;}
	.list_wrap .item .image {width:100%; height:160px;  background-position:50% 50%; background-size:cover; }
 	.list_wrap .item .cont {padding:20px;}
	.list_wrap .item strong a {display:block; margin:0 0 10px 0; font-size:16px; letter-spacing: -1px;}
	.list_wrap .item p {font-size:13px; letter-spacing:-1px;}	
	.sIntro{float:left; text-overflow: ellipsis;}
	.go{display:inline-block; margin-top:10px; padding:5px 10px; background: #eee; font-size:13px; letter-spacing:-1px;} 
	
	/*------------------------------------------------------------------*/
	
	 
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
	.item1:hover {
	cursor: pointer;
	border: 1px solid black;
}
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
	
	<div class="center">
		<div class="category">
		  	<div class="dishtype">
				<a href="<%= request.getContextPath() %>/shop.do?SHOP_CATE=1"><img src="<%= request.getContextPath() %>/resources/images/main/한식.png"></a>
			</div>
			<div class="dishtype">
				<a href="<%= request.getContextPath() %>/shop.do?SHOP_CATE=4"><img src="<%= request.getContextPath() %>/resources/images/main/중식.png"></a>
			</div>
			<div class="dishtype">
				<a href="<%= request.getContextPath() %>/shop.do?SHOP_CATE=2"><img src="<%= request.getContextPath() %>/resources/images/main/양식.png"></a>
			</div>
			<div class="dishtype">
				<a href="<%= request.getContextPath() %>/shop.do?SHOP_CATE=3"><img src="<%= request.getContextPath() %>/resources/images/main/일식.png"></a>
			</div>
			<div class="dishtype">
				<a href="<%= request.getContextPath() %>/shop.do?SHOP_CATE=5"><img src="<%= request.getContextPath() %>/resources/images/main/분식.png"></a>
			</div>
			<div class="dishtype">
				<a href="<%= request.getContextPath() %>/shop.do?SHOP_CATE=6"><img src="<%= request.getContextPath() %>/resources/images/main/동남아.png"></a>
			</div>
			<div class="dishtype">
				<a href="<%= request.getContextPath() %>/shop.do?SHOP_CATE=7"><img src="<%= request.getContextPath() %>/resources/images/main/샐러드.png"></a>
			</div>
		</div>
		<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		<script src='http://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.3.15/slick.min.js'></script>
		<script>
			$('.category').slick({slidesToShow:4, slidesToScroll:4, dots:true});
		</script>
		
		<br><br>
		
		<div class="list_wrap">
			<h4  style="text-align:center">	&lt;평점이 높은 인기식당&gt;</h4><br>
			<ul>
				<c:forEach var="hs" items="${ hsList }">
					<li class="item item1 hsContent">
						<input type="hidden" class="sNo" value="${ hs.sNo }">
						<div class="image" style="background-image: url(<%= request.getContextPath() %>/resources/shopuploadFiles/${ hs.sRename });"></div>
						<div class="cont">
							<h5>${ hs.sName }</h5>
							<p class="explain"><i class="far fa-star" style="color:#FFDE32"></i>&nbsp;&nbsp;${ hs.avgScore }</p><br>
							<p class="sIntro">${ hs.sIntro }</p>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
		<script>
			$(function(){
				$('.hsContent').click(function(){
					var sNo=$(this).children('.sNo').val();
					location.href='Reservation.do?SHOP_NO=' + sNo;
				});
			});
		</script>
		<br>
		<div class="page_navigation">
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
						<a class="page-link" href="home.do?page=${ pi.currentPage - 1 }" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						</a>
					</li>
				</c:if>
			    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
			    		<li class="page-item"><b class="page-link">${ p }</b></li>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<li class="page-item"><a class="page-link" href="home.do?page=${ p }">${ p }</a></li>
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
			      		<a class="page-link" href="home.do?page=${ pi.currentPage + 1 }" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
			      		</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
	
	<br>
	<%@ include file="common/footer.jsp" %>
</body>
</html>