<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<style>
#boby{
	font-family: 'Gugi';
	}
</style>
</head>
<body align="center" id="boby">
	${ shopNo }
	${ reNo }
	<h2>답글 달기</h2>
	<form action="rereplyinsert.sh" id="form">
	<input type="hidden" name="reid" value="${ shopNo }">
	<input type="hidden" name="reid" value="${ reNo }">
	<textarea rows="10" cols="70" name="textarea"></textarea><br>
	<input type="submit" value="답글 등록" >
	<input type="button" class="recancle" value="취소" onclick="window.close();">
	</form>
	<script>
		$(function(){
			$('#form').submit(function(event){
				self.close();
				$shopNo = ${ shopNo }
				
				console.log(shopNo);
			});
		});
	</script>
</body>
</html>