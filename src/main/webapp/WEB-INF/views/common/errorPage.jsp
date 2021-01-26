<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animation.css">
<style>
	#error{
		width: 250px;
		height: 300px;
		padding-top: 40px;
		padding-bottom: 20px;
	}
</style>
</head> 
<body>
	<div id="error-container" style="text-align: center;">
		<br><h1 style="color: red;">ERROR</h1>
		<img id="error" src="resources/images/errorIcon.png">
		<h3 style="color: red;">${ requestScope['javax.servlet.error.message'] }</h3>
	</div><br>
	<div class="row">
		<div class="col text-right">
			<button class="btn btn-outline-secondary" id="main">메인으로</button>
		</div>
		<div class="col text-left">
			<button class="btn btn-outline-secondary" id="back">이전 페이지</button>
		</div>
	</div>

	<script>
		$("#main").click(()=>{
			location.href = "${pageContext.request.contextPath}";
		})
		$("#back").click(()=>{
			window.history.back();
		})
	</script>

</body>
</html>