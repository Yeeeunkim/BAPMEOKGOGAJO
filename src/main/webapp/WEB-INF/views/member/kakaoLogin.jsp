<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script typ='text/javascript'>
	kakao.inint('97b21c3a08d201b9a56b90370c60f34e');
  	
  	kakao.Auth.authorize({
  		redirectUri: 'https://localhost:8580/bob/kakaoRedirectForm.jsp'
  		
  		
  	});
</script>
</body>
</html>