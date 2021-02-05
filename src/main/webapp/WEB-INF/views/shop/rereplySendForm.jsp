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
	${ reNo }
	${ shopNo }
	<h2>답글 달기</h2>        
	<form action="rereplyinsert.sh" id="form" target="'Reservation.do?SHOP_NO='+shopNo">
	<input type="hidden" name="reid" value="${ reNo }">
	<input type="hidden" name="shopNo" value="${ shopNo }">
	<textarea rows="10" cols="70" name="rereContent"></textarea><br>
	<input type="submit" value="답글 등록" onclick="window.close()" >
	<input type="button" class="recancle" value="취소" onclick="window.close();">
	</form>
	<script>
		function popupClose(form){
			form.target = opener.name;
			
			form.submit();
			
			if(opener != null){
				opener.insert = null;
				
				self.close();
			}
		} 
	</script>
</body>
</html>