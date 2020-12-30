<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<title>MyPage</title>
<style>
	/*사이브 메뉴바 높이*/
	#sideBar{ margin-top:  15px;  text-align: center; color: white;
       width: 200px; height: 300px; background: white; border: none; }
	
	/* faq리스트 */
	* {margin:0; padding:0;}
	.accordion {position:absolute; top:34%; left:50%;transform:translateX(-50%);width:600px;  font-family: 'Gugi';}
	input[id*="answer"] {display:none;}
	input[id*="answer"] + label {display:block;padding:20px; border-bottom:1px solid lightgray; border-top: 1px solid lightgray; 
								font-weight:900;background:white;cursor:pointer;position:relative;}
	input[id*="answer"] + label em {position:absolute;top:50%;right:10px;width:30px;height:30px;margin-top:-15px;
									display:inline-block;background:url('resources/images/arrow.png') 0 0 no-repeat;}
	input[id*="answer"] + label + div {max-height:0;transition: all .35s;overflow:hidden;background:#ebf8ff;font-size:17px;}
	input[id*="answer"] + label + div p {display:inline-block;padding:20px;}
	input[id*="answer"]:checked + label + div {max-height:100px;}
	input[id*="answer"]:checked + label em {background-position:0 -30px;}
	
	/*글쓰기 버튼*/
	.btn1{ margin-top: 130px; margin-left: 1080px; width: 100px; height: 30px; border: none; border-radius: 50px;  background: #F42B03; color:white;} 
	
</style>
</head>
<body>
 <c:import url="../common/menubar.jsp" />	
		<br><br><br><br>
			<h1 align="center" style="font-family: 'Gugi';">FAQ ></h1>
		<div class="accordion">
		<input type="radio" name="accordion" id="answer01">
			<label for="answer01">Q. 회원 가입시 사용 가능한 메일은?<em></em></label>
			<div><p>A. 회원가입시 기입하는 메일 계정중 msn.com, aol.com, hotmail.com 계정은 메일 발송이 정상적으로 발송되지 않을 수도 있습니다.</p></div>
		<input type="radio" name="accordion" id="answer02">
			<label for="answer02">Q. 로그인이 안되는데 어떻게 하죠?<em></em></label>
			<div><p>A.온라인상에서 "비밀번호 조회"를 하여 받은 메일에 있는 아이디와 비밀번호를 마우스로 복사하여 붙인 경우 공란이 생기게 되어 로그인이 안되는 경우도 있습니다. </p></div>
		<input type="radio" name="accordion" id="answer03">
			<label for="answer03">Q. 식당 단체예약은 가능한가요?<em></em></label>
			<div><p>A. 25인 이상의 경우 전화(☎ 02-502-6743) 예약 할 수 있습니다. 단체예약 상담업무는 매주 화요일~일요일 오전 10시에서 오후 5시까지입니다. </p></div>
		<input type="radio" name="accordion" id="answer04">
			<label for="answer04">Q. 컨텐츠 제목 부분<em></em></label>
			<div><p>A. 여기에 추가되는 부분이 자주묻는 질문의 답변내용이 이 영역에 들어갑니다. 이곳에서 자연스럽게 나오는 효과를 볼 수 있습니다. 이 기능으로 자주묻는 질문컨텐츠를 만들 수 있습니다.</p></div>
		<input type="radio" name="accordion" id="answer05">
			<label for="answer05">Q. 컨텐츠 제목 부분<em></em></label>
			<div><p>A. 여기에 추가되는 부분이 자주묻는 질문의 답변내용이 이 영역에 들어갑니다. 이곳에서 자연스럽게 나오는 효과를 볼 수 있습니다. 이 기능으로 자주묻는 질문컨텐츠를 만들 수 있습니다.</p></div>
		</div>
		
    <!-- 사이드 메뉴 -->
     <c:import url="../common/noticeSidebar.jsp" />
		
	<button class="btn1" onclick="location.href='fInsertForm.no'">글쓰기</button>
	<br><br>
	<br><br>
   
     <c:import url="../common/footer.jsp" />
   
	<script type="text/javascript">
	/*상세*/
	$(function(){
					$("#boardTable").find("td").mouseenter(function(){
						$(this).parents("tr").css({"background":"black", "color":"white", "cursor":"pointer"});
					}).mouseout(function(){
						$(this).parents("tr").css({"background":"none", "color":"black"});
					}).click(function(){
						var bId=$(this).parents().children("td").eq(0).text();
	
						location.href="selectOne.bo?bId="+bId;
					});
				});

	</script>
         
</body>
</html>