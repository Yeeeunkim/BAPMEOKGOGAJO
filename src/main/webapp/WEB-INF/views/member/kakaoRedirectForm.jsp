<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script typ='text/javascript'>
	kakao.init('ebec4584a30ed61834650763475ef4ae');
  	
  	kakao.Auth.login({
		success: function(authObj){
			kakao.API.request({
				url:'/v2/user/me',
				success:function(res){
				console.log(res);
				
				var id = res.id;
				var eamil = res.kakao.account.email;
				var name = res.properties.nickname;
				var html = '<BR>' + email + '<BR>' + name;
				
				$('body').append(html);
				}
			})	
				console.log(authObj);
				var token = authObj.access_token;
		},
		fail: function(err){
			alert(JSON.stringify(err));
		}
		  		
  	});
</script>
</body>
</html>