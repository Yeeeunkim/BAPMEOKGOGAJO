<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> -->
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<style>
	#logo{
		width: 60px;
		height: 40px;
		src:"resources/images/logo.png"  
	}
	nav{
		margin:0;
		font-family: 'Gugi';
	}
	
	a{
		text-decoration: none;
		color:white;
	}
	a:hover {
		color:orange;
	}
	
	.navbar {
		display:flex; 
		justify-content:space-between;
		align-items:center;
		background-color: #F42B03;
		padding:  8px 12px;
	}
	
	
	.navbar_logo{
		font-size:24px;
		color:white;
		margin-left: 250px;
	}
	
	.navbar_logo i{
		color:#1D3557;
	}	
	
	.navbar_icons{
		list-style:none;
		color:white;
		display:flex;
		padding-left: 0;
		margin-right: 200px;
		
	}
	
	.naver_icons li {
		padding:8px 12px;
	}
	
	.menu {
		font-weight:bold;
		padding-right:30px;
		padding-left: 30px;
		margin-top: 10px;	
	}
	@media screen and (max-width: 780px) {
		.navbar{
			flex-direction:column;
			align-items: flex-start;  /*수직으로 설정*/
			padding:8px 24px;
		}	
		
		.search_icon {
			flex-direction: column;
			align-items:center;
			text-align: center;
			width:100%
		}
		
		.naver_menu li {
			width:100%;
			
		}
		
		.navbar_icons {
			lex-direction: column;
			justify-content: center;
			width:100%;
		}
		
		.navbar_icons li {
			width:100%;
			text-align: center;
		}
	}

	/*--------------------------------------------------------------------*/
	
 	.searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    background-color:#F42B03;
    border-radius: 30px;
    padding: 10px;
    }
    
   .searchbar {
   	list-style:none;
   } 
    .search_input{
	    color: black;
	    border: 0;
	    outline: 0;
	    background: none;
	    width: 0;
	    caret-color:transparent;
	    line-height: 40px;
	    transition: width 0.4s linear;
    }
    .searchbar:hover > .search_input{
	    padding: 0 10px;
	    width: 200px;  /*수정 보류!*/
	    caret-color:black;
	    transition: width 0.4s linear;
	    background-color: white;
	    border-radius:4px;
    }
    .searchbar:hover > .search_icon{
	    background: white;
	    color: #e74c3c;
    }
    .search_icon{
	    height: 50px;
	    width: 50px;
	    float: right;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    border-radius: 50%;
	    color:white;
	    text-decoration:none;
    }
	 
</style>
</head>
<body>

 <c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/> 
	
   <div class="loginArea" align="right">
   <!-- 로그인  안한상태 -->
	<c:if test="${ empty sessionScope.loginUser }">
		<nav class="navbar" id="gnb">
			<span class="navbar_logo">
				<img id="logo" src="resources/images/logo.png" href="home.do">
				<a href="home.do">밥먹고 가조</a>
					<span class="searchbar">
          				 <input class="search_input" type="text" id="searchInput" name="searchContents" placeholder="Search...">
         				 <a href="#" class="search_icon"><i onclick="search();" class="fas fa-search"></i></a>
       				 </span>
			</span>  
			<ul class="navbar_icons" >
				<li class="menu" onclick="shop();"><a href="#">About</a></li>
			     <li class="menu" onclick="location.href='loginView.me'" ><a href="#">Login</a></li> 
			     <li class="menu" onclick="location.href='enrollForm.me'" ><a href="#">Join</a></li> 
			</ul>
		</nav>
	</c:if>


	<!-- 로그인 성공 -->
	<c:if test="${ !empty sessionScope.loginUser }">
		<nav class="navbar" id="gnb">
			<span class="navbar_logo">
				<img id="logo" src="resources/images/logo.png" href="home.do">
				<a href="home.do">밥먹고 가조</a>
					<span class="searchbar">
          				 <input class="search_input" type="text" id="searchInput" name="searchContents" placeholder="Search...">
         				 <a href="#" class="search_icon"><i onclick="search();" class="fas fa-search"></i></a>
       				 </span>
			</span> 
			<ul class="navbar_icons" >
				<li class="menu" onclick="shop();"><a href="#">About</a></li>
				<li class="menu" onclick="location.href='logoutView.me'" ><a href="#">Logout</a></li> 
				<c:if test="${ loginUser.auth_code eq '1' }">
					<li class="menu" ><a href="myPage.me"><i class="fas fa-user"></i></a></li>
				</c:if>
				 <c:if test="${ loginUser.auth_code eq '2'  }">
					<li class="menu" ><a href="shopMypage.me"><i class="fas fa-user"></i></a></li>

				</c:if>
				 <c:if test="${ loginUser.auth_code eq '0'  }">
				 	<li class="menu" onclick="manager();" ><a href="#">M</a></li> 
				 </c:if>
			</ul>
		</nav>
	</c:if>
	</div>

	<script>
		function shop() {
			location.href = "${contextPath }/shop.do"
		}


		function manager() {
			location.href = "${contextPath }/manager.ma"
		}

		function mypage() {
			location.href = "${contextPath}/myPage.me"
		}
		
		function search() {
			var searchContents = $('#searchInput').val();
			location.href = "${contextPath}/shopSearch.sh?searchContents=" + searchContents;
		}
	</script>
</body>
</html>