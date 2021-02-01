<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7293f5b137.js" crossorigin="anonymous"></script>
<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.5.1.min.js"></script>

<style>

	#body{
		align:center;
		font-family: 'Gugi';
	}

	#cancle {
   background-color: white;
   color: gray;
   font-weight: bold;
   border: 1px solid black;
   border-radius: 5px;
   width: 100px;
   height: 40px;
   position: relative;
   right: 100px;
   font-size :large;
}

#send {
   background-color: #F42B03;
   color: white;
   font-weight: bold;
   border: 1px solid white;
   border-radius: 5px;
   width: 100px;
   height: 40px;
   position: relative;
   left:100px;
   
   font-size :large;
}
	#file[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
		
	}
	.reviewScore{
	 color:black;
	  background: no-repeat right 0;
	  font-size: 50px;
	}
	.my-rating input[type="radio"]{
		display: none;
		background: yellow;
		
	}
	.my-rating input[type="radio"] + sapn{
		display: inline-block;
		background: none;
		border: 1px solid;
		paddding:10px;
		
		
	}
	.str{
		font-size: 70px;
		 cursor:pointer;
		 font-weight: 100;
		  
	}
	#shopName{
		color:red;
	}
	

    
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/menubar.jsp"%>
	<br><br>
	<div id="body">
		<h1 align="center"><b>리뷰 작성></b></h1>
		<br><br>
		
		<form action="reviewinsert.sh" method="post" align="center" enctype="multipart/form-data" id="form">
			<input type="hidden" name="memberId">
			<input type="hidden" name="shopNo">
			<div id="reviewran"><h2><b>${ shopName }</b> 에 솔찍한 리뷰를 써주세요</h2></div>
			
			 <div class="my-rating">
				<label class="label"><input type="radio" name="reviewScore" value="1"/><span class="str">☆</span></label>
				<label class="label"><input type="radio" name="reviewScore" value="2"/><span class="str">☆</span></label>
				<label class="label"><input type="radio" name="reviewScore" value="3"/><span class="str">☆</span></label>
				<label class="label"><input type="radio" name="reviewScore" value="4"/><span class="str">☆</span></label>
				<label class="label"><input type="radio" name="reviewScore" value="5"/><span class="str">☆</span><br></label>
			 </div> 
				<div id="ratingValue"></div>
			<br>
			<textarea rows="15" cols="90" name="reviewContents" id="content"></textarea><br><br>
			<input type="file" name="uploadFile"><br><br>
			
			
			<div class="btn">
				<input type="button" id="cancle" onclick="location.href='relist.sh'"value="취소">
				<input type="submit" id="send" value="등록">
			</div>
		</form>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

	<script>
	$(function(){
		$("input:radio[name=reviewScore]").on("click",function(){
			var value = $(this).val();
		});
		$(".label").on("click", function () {
			  var stars = $(".my-rating");
			  var input = $(this).find("input");
			  var value = input.attr("value");
			  stars.find("span").text("☆").css('color', 'black');

			  for (let i = 0; i < value; i++) {
			    var span = $(stars.children()[i]).find("span");
			    span.text("★").css({'color' : '#F7FE2E'});
			  }
			  $ratingVal = $('#ratingValue');
			  
			  
			  if(value){
				 if(value == 1){
					 $ratingMsg = $ratingVal.text("(1점) 별로예요");
				 }
				 else if(value == 2){
					 $ratingMsg = $ratingVal.text("(2점) 그저그래요");
				 }
				 else if(value == 3){
					 $ratingMsg = $ratingVal.text("(3점) 괜찮아요");
				 } 
				 else if(value == 4){
					 $ratingMsg = $ratingVal.text("(4점) 좋아요");
				 } 
				 else if(value == 5){
					 $ratingMsg = $ratingVal.text("(5점) 최고에요");
				 } 
			  }
			  $ratingVal.css({"font-size": "20px", 'color': "#08088A" });
			  
			  
			});
		
		
	});	
	
	</script>
</body>
</html>