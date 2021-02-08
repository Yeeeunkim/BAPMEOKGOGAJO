<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
   href="https://fonts.googleapis.com/css2?family=Dosis:wght@700&family=Gugi&display=swap"
   rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<title></title>
<style>
/*  */
.sideArea {
   font-family: 'Gugi';
   width: 200px;
   height: 600px;
   position: relative;
/*    left: 100% !important; */
   top: 100px;
}

.lTitle {
   list-style-type: none;
   font-size: 30px;
}

.ul .li {
   list-style-type: none;
   font-size: 24px;
}

.a {
   color: black !important;
}

.a:hover {
   color: orange !important;
}
</style>
</head>
<body> 
   <div class="sideArea">
      <ul class="ul">
         <li class="lTitle">고객센터</li>
         <br>
         <li class="li" onclick="notice();"><a class="a" href="#">▶ 공지사항</a></li>
         <br>
         <li class="li" onclick="faq();"><a class="a" href="#">▶ FAQ</a></li>
         <br>
         <li class="li" onclick="qna();"><a class="a" href="#">▶ QNA</a></li>
         <br>
      </ul>
   </div>

   <script>
      function notice() {
         location.href = "${ contextPath }/nList.no"
      }

      function faq() {
         location.href = "${ contextPath }/fList.no"
      }

      function qna() {
         location.href = "${ contextPath }/qList.no"
      }
   </script>

</body>
</html>