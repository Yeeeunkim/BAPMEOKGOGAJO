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
   margin: 0 auto;
   }
.navbar {
      display:flex; 
      align-items:center;
      background-color: #F42B03;
      padding:  10px 12px;
      height: 20px;
   }
nav{
   margin: 0px;
}
#title{
   color: white;
}
.button{
   background-color: #F42B03;
   border: none;
   color: white;
   text-align: center;
   width: 100px;
   height: 40px;
   margin-right: 
}
.recancle {
   background-color: lightgray;
}
.buttonBlock {
   margin-top: 15px;
}
.buttonBlock *:nth-child(2) {
   margin-left: 50px;
}
.foot{
   background-color:#1D3557;
   position: fixed; 
   bottom: 0; 
   width: 100%;
   
}
.navbar_logoo{
   position: absolute;
    right: 30px;
}
</style>
</head>
<body align="center" id="boby">
   
   <nav class="navbar" id="gnb">
         <span class="navbar_logo">
            <img id="logo" src="resources/images/logo.png" width="50">
            <span id="title">밥먹고 가조</span>
         </span>  
      </nav>
      
   <h2>답글 달기</h2>   
        
   <form action="rereplyinsert.sh" id="form" target="'Reservation.do?SHOP_NO='+shopNo">
   <input type="hidden" name="reid" value="${ reNo }">
   <input type="hidden" name="shopNo" value="${ shopNo }">
   <textarea rows="10" cols="70" name="rereContent" style="font-size: 10px;"></textarea><br>
   <div class="buttonBlock">
      <input type="submit" value="답글 등록" onclick="window.close()" class="button">
      <input type="button" class="recancle button" value="취소" onclick="window.close();">
   </div>
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
   <nav class="navbar foot" id="gnb">
         <span class="navbar_logoo">
            <img id="logo" src="resources/images/logo.png" width="50">
            <span id="title">밥먹고 가조</span>
         </span>  
      </nav>
</body>
</html>