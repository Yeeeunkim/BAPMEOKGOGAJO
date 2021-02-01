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
	
	<h2>답글 달기</h2>
	<form action="rereplyinsert.sh">
	<input type="hidden" name="reid" value="${ reNo }">
	<textarea rows="10" cols="70" id="textarea"></textarea><br>
	<input type="submit" value="답글 등록" >
	<input type="button" class="recancle" value="취소" onclick="window.close();">
	</form>
	<script>
/* 	function replysend(reid){
			$(function(){
			var textarea = $('#textarea'+reid).val();
			//var reid = ${re.reviewNo};
			console.log(textarea);
			console.log(reid);
			$.ajax({
				url: 'rereplyinsert.sh',
				data: {textarea:textarea, reid:reid},
				success: function(data){
					console.log(data);
					if(data == 'success'){
						$('textarea').val('');
						/* getReplyList(reid); 
					}
				}
			});
			});
		}; */
	</script>
</body>
</html>