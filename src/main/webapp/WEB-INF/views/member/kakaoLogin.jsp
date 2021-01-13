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
	kakao.inint('ebec4584a30ed61834650763475ef4ae');
  	
  	/* kakao.Auth.authorize({
  		redirectUri: 'https://localhost:8580/bob/loginView.me'
  	}); */
	Kakao.Auth.loginForm({
		success: function(authObj){
			Kakao.API.request({
				url: 'v2/user/me',
				success: function(res){
					console.log(res);
					var id  = res.id;
					var email = res.kakap.account.email;
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