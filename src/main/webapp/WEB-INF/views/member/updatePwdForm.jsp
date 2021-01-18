<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title>Insert title here</title>
=======
<title>비밀번호 수정</title>
>>>>>>> master
<style>
	.outer{
		width: 70%;
		margin: auto;
		margin-top: 50px;
	}
	table{
		margin-top: 50px;
		min-width: 550px;
	}
	.input{
		height: 40px;
		width: 400px;
	}
	.phone{
		width: 270px;
	}
	.phoneBtn{
		margin: 0px;
		height: 39px;
		width: 130px;
		border: 1px solid #F42B03;
		background-color: #F42B03;
		color:#fff;
	}
	.btn{
		font-size: 18px;
		color:#fff;
		width:150px; height:30px;
		margin-top: 50px;
	}
	#updateBtn{
		border: 1px solid #F42B03;
		border-radius: 30px;
		background-color: #F42B03;
		font-size: 18px;
		color:#fff;
		width:150px; height:30px;
		margin-top: 50px;
		margin-right: 20px;
	}
	#deleteBtn{
		border: 1px solid gray;
		border-radius: 30px;
		background-color: gray;
		font-size: 18px;
		color:#fff;
		width:150px; height:30px;
		margin-top: 50px;
		margin-left: 20px;
	}
</style>
</head>
<body style="font-family: 'Gugi'; ">
	<c:import url="../common/menubar.jsp"/>
	<div class="outer">
		<h2 style="text-align: center;">회원 정보 수정 ></h2>
		<br>
		<form action="updatePwd.me" method="post">
			<table align="center">
				<tr height="70px">
					<td>현재 비밀번호 </td>
					<td><input type="password" class="input" name="member_pwd" ></td>
				</tr>
				<tr height="70px">
					<td>새 비밀번호 </td>
<<<<<<< HEAD
					<td><input type="password" class="input" id="newPwd"name="member_newPwd"></td>
=======
					<td><input type="password" class="input" id="newPwd"name="member_newPwd1"></td>
					<td><label id="pwd1Result"></label></td>
>>>>>>> master
				</tr>
					 <tr height="70px">
					<td>새 비밀번호 확인</td>
					<td><input type="password" class="input" id="newPwCheck" name="member_newPwd2"  ></td>
<<<<<<< HEAD
=======
					<td><label id="pwd2Result"></label></td>
>>>>>>> master
				</tr> 
			</table>
			<br><br><br>
			<div class="btns" align="center">
				<input type="submit" id="updateBtn" value="수정 완료">
			</div>		
		</form>
	</div>
	<c:import url="../common/footer.jsp"/>
	<script>
<<<<<<< HEAD
	$('#newPw').on('keyup', function() {
		//비밀번호 공백 확인
		if($("#newPw").val() === ""){
			$('#newPwMsg').html('<b>비밀번호는 필수 정보입니다.</b>');
			chk2 = false;
		}		         
		//비밀번호 유효성검사
		else if(!getPwCheck.test($("#newPw").val()) || $("#newPw").val().length < 6){
			$('#newPwMsg').html('<b>특수문자 포함 6자 이상 입력하세요</b>');
			chk2 = false;
		} else {
			$('#newPwMsg').html('');
			chk2 = true;
		}
				
	}); //end of new password
				
				
	//비밀번호 확인
	$('#newPwCheck').on('keyup', function() {
		
		if($("#newPwCheck").val() === "") {
			$('#newPwMsg').html('<b">비밀번호 확인은 필수 정보입니다.</b>');
			chk3 = false;
		} else if( $("#newPw").val() != $("#newPwCheck").val() ) {
			$('#newPwMsg').html('<b>비밀번호가 일치하지 않습니다.</b>');
			chk3 = false;
		} else {
			$('#newPwMsg').html('');
			chk3 = true;
	}
		
				});
=======
	$(function(){
		var reg = /^(?=.*?[a-z])(?=.*?[0-9]).{6,}$/;
		
		$('#newPwd').blur(function(){
			 if(false === reg.test($('#newPwd').val())){
				 $('#pwd1Result').text('사용 불가능한 비밀번호입니다.');
				 $('#pwd1Result').css({'color':'red','float':'center','display':'inline-block', 'font-size' : '12px'});  
				 $('#newPwd').val('');
		         $('#newPwd').focus();
		         return false;
			 }else if($('#newPwd').val()==''){
				 $('#pwd1Result').text('비밀번호를  입력해주세요.');
				 $('#pwd1Result').css({'color':'red','float':'center','display':'inline-block', 'font-size' : '12px'});  
				 $('#newPwd').val('');
		         $('#newPwd').focus();
		         return false;
			}else{
					$('#pwd1Result').text('사용 가능한 비밀번호입니다');
					$('#pwd1Result').css({'color':'blue','float':'center','display':'inline-block', 'font-size' : '12px'});  
					return true;
			}	
		});
		
		$('#newPwCheck').blur(function(){
			 if($('#newPwd').val() != $('#newPwCheck').val()){
				 $('#pwd2Result').text('비밀번호가 일치하지 않습니다.');
				 $('#pwd2Result').css({'color':'red','float':'center','display':'inline-block', 'font-size' : '12px'});  
				 $('#newPwCheck').val('');
		         $('#newPwCheck').focus();
		         return false;
			 }else if($('#newPwCheck').val()==''){
				 $('#pwd2Result').text('비밀번호를  입력해주세요.');
				 $('#pwd2Result').css({'color':'red','float':'center','display':'inline-block', 'font-size' : '12px'});  
				 $('#newPwCheck').val('');
		         $('#newPwCheck').focus();
		         return false;
			}else{
					$('#pwd2Result').text('비밀번호가 일치합니다.');
					$('#pwd2Result').css({'color':'blue','float':'center','display':'inline-block', 'font-size' : '12px'});  
					return true;
			}	
		});
	});
>>>>>>> master
	</script>
</body>
</html>