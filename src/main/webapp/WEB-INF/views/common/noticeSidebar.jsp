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
<title>Insert title here</title>
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

   <!--    <div id="section"> -->
   <!--          <div id="sideBar"> -->
   <%--              <form action="<%= request.getContextPath() %>/" method="post" id="myForm" name="myForm"> --%>
   <!--               <input type="submit" id="userUpadteBtn"  style="font-size: 25px;" value="고객센터"> -->
   <!--                <div id="subMenuDiv"> -->
   <!--                   <ul> -->
   <!--                      <li class="subMenuLi"> -->
   <!--                         <a class="submenuLink" href="nList.no" style="font-size: 20px;">▶ 공지사항</a> -->
   <!--                      </li><br> -->
   <!--                      <li class="subMenuLi"> -->
   <!--                         <a class="submenuLink" href="fList.no" style="font-size: 20px;">▶ FAQ</a> -->
   <!--                      </li><br> -->
   <!--                      <li class="subMenuLi"> -->
   <!--                         <a class="submenuLink" href="qList.no"  style="font-size: 20px;">▶ QNA</a> -->
   <!--                      </li><br> -->
   <!--                    </ul> -->
   <!--                </div> -->
   <!--             </form>  -->
   <!--          </div> -->
   <!--     </div> -->

</body>
</html>