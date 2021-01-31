<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트 스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="${ contextPath }/js/jquery-3.5.1.min.js"></script>
<!-- 폰트 -->
<script src="https://kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<style>
#loginArea {
/* 	border: 1px solid lightgray; */
/* 	width: 60%; */
	height: 800px;
	position: relative;
	margin: 0 auto;
	margin-top: 50px;
}

.inputTilte {
/* 	border: 1px solid lightgray !important; */
	display: inline-block !important;
	width: 15% !important;
	position: relative !important;
	
}

.inputForm {
/* 	border: 1px solid lightgray !important; */
	display: inline-block !important;
	width: 250px !important;
	position: relative !important;
}

.hidden {
	width: 5% !important;
}

.mb-4 {
	text-align: center !important;
}

.loginBtn {
	display: block !important;
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	width: 250px !important;
	height: 50px;
}

.aForm {
	color: black;
} 

/*메뉴바 */
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
		margin-left: 400px;
	}
	
	.navbar_logo i{
		color:#1D3557;
	}	
	
	.navbar_icons{
		list-style:none;
		color:white;
		display:flex;
		padding-left: 0;
		margin-right: 370px;
		
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
<body style="font-family: 'Gugi'; ">
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>

	 <div class="loginArea" align="right">
	   <!-- 로그인  안한상태 -->
			<nav class="navbar" id="gnb">
				<span class="navbar_logo">
					<img id="logo" src="resources/images/logo.png">
					<a href="">밥먹고 가조</a>
						<span class="searchbar">
	          				 <input class="search_input" type="text" name="" placeholder="Search...">
	         				 <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
	       				 </span>
				</span>  
				<ul class="navbar_icons" >
					<li class="menu" onclick="shop();"><a href="#">About</a></li>
				     <li class="menu" onclick="location.href='loginView.me'" ><a href="#">Login</a></li> 
				     <li class="menu" onclick="location.href='enrollForm.me'" ><a href="#">Join</a></li> 
				</ul>
			</nav>
	 </div>

	<div id="loginArea">
		<form>
			<br><br><br>
			<h1 style="text-align: center;">아이디 찾기 성공 ></h1>
			<br><br>
			<div style="border: 1px solid lightgray; width: 60%; height: 250px; margin: 0 auto;"><br>
			<p style="text-align: center;">고객님의 아이디 조회 결과 입니다.</p>
			<br><br>
			<div class="mb-4">
				<label class="form-label inputTilte">아이디</label> 
				<input type="text" class="form-control inputForm" id="inputId" readonly="readonly" value="${ findId.memberId }">
				<label class="hidden"></label>
			</div>
			</div>
			<br>
			<button type="button" class="btn btn-primary loginBtn" onclick="location.href='loginView.me'"> 로그인 </button>
			<br>
			<button type="button" class="btn btn-primary loginBtn" onclick="location.href='findFormPwd.me'"> 비밀번호 찾기 </button>
		</form>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>