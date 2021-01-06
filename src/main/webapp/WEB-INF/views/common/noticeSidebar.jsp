<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
    #section{ margin-left: auto;  margin-right: 240px; width: 1150px;
      min-height: 390px; font-family: 'Gugi'; } 

   ul { margin-top: 0px; }
   #subMenuDiv{ text-align: center; margin-left: -30px; margin-top: 40px;} 
   
    /* 상위 메뉴  a 태그에 공통으로 설정할 스타일 */
   .submenuLink { text-decoration: none; margin-left: 45px;  display: block;
      width: 150px; font-size: 15px; font-weight: bold; color: black;}  
      
    /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */
   .subMenuLi {  display: block; text-align: left; width: 150px;
      margin-top:  10px; font-size: 15px; font-weight: bold; } 
      
    /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */
   .subMenuLi:hover .submenuLink{ font-color: #F42B03;}

 
   #userUpadteBtn{ background:white; color:black; padding: 10px; font-weight: bold; font-size: 15px;  outline: none; border: none;}

</style>
</head>
<body>
	<div id="section">
             <form action="<%= request.getContextPath() %>/" method="post" id="myForm" name="myForm">
              <input type="submit" id="userUpadteBtn"  style="font-size: 25px;" value="고객센터">
		         <div id="subMenuDiv">
		            <ul>
		               <li class="subMenuLi">
		                  <a class="submenuLink" href="nList.no" style="font-size: 20px;">▶ 공지사항</a>
		               </li><br>
		               <li class="subMenuLi">
		                  <a class="submenuLink" href="fList.no" style="font-size: 20px;">▶ FAQ</a>
		               </li><br>
		               <li class="subMenuLi">
		                  <a class="submenuLink" href="qList.no"  style="font-size: 20px;">▶ QNA</a>
		               </li><br>
		             </ul>
		         </div>
            </form> 
    </div>

</body>
</html>