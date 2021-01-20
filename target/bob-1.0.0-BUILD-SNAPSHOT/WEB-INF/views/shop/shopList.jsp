<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트 스트랩 -->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
   crossorigin="anonymous">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
   integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
   integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
   crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<!-- 폰트 -->
<script src="https://kit.fontawesome.com/7293f5b137.js"
   crossorigin="anonymous"></script>
<style>
#shopListArea {
   /*    border: 1px solid lightgray; */
   width: 80%;
   height: 600px;
   position: relative;
   margin: 0 auto;
   margin-top: 50px;
   text-align: center !important;
}

#shopArea {
   display: block !important;
   width: 100%;
   float: left !important;
}

.form-select {
   display: block !important;
   width: 20% !important;
   float: right !important;
}

.card{
   float: left !important;
}

.paging{
    display: inline-block !important;
    padding: 50px;
}

 .card-img-top{ 
    width: 100% !important; 
    height: 50% !important; 
 }
 
.button {

  background-color: #F42B03;
  border: none;
  color: white;
  text-align: center;
  float: right;
  width: 100px;
  height: 40px;
 }
.button:hover {

  background: tomato; 

  color: white;

}
</style>
</head>
<body style="font-family: 'Gugi';">
   <jsp:include page="../common/menubar.jsp" />

 

   <div id="shopListArea">
      <!--       <h1 style="text-align: center;">한식 ></h1> -->
      <select class="form-select" aria-label="Default select example">
         <option value="" selected="selected" id="all">전체</option>
         <option value="1" id="korean">한식</option>
         <option value="2" id="western">양식</option>
         <option value="3" id="chinese">중식</option>
         <option value="4" id="japanese">일식</option>
         <option value="5" id="school">분식</option>
      </select><br><br><br>
      
      <h2>전체</h2>
      
      
      <div id = "shopArea">            
           <!-- 식당 영역 -->
           <!-- 식당 1행 -->
           <form>
           
<div class="row">

<c:forEach var="shopList" items="${shopList}" varStatus="status" begin="0" end="2" step="1">

     <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>${shopList.IMG_URL}" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text"><c:out value="${shopList.SHOP_NAME}"/> </p>
                          <p class="card-text">★4.8 | 리뷰n개</p>
                          <a href="/bob/Reservation.do?SHOP_NO=${shopList.SHOP_NO}" class="btn btn-primary" value="${shopList.SHOP_NAME}">예약하기</a>
                          </div>
                      </div>
                  </div>
</c:forEach>
           </div>
<br><br>           
           
           <div class="row">
<c:forEach var="shopList" items="${shopList}" varStatus="status" begin="3" end="5" step="1">

     <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>${shopList.IMG_URL}" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text"><c:out value="${shopList.SHOP_NAME}"/> </p>
                          <p class="card-text">★4.8 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div>
</c:forEach>

           </div>           
<br><br>                      
           
             <div class="row">
<c:forEach var="shopList" items="${shopList}" varStatus="status" begin="6" end="8" step="1">

     <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>${shopList.IMG_URL}" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text"><c:out value="${shopList.SHOP_NAME}"/> </p>
                          <p class="card-text">★4.8 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div>
</c:forEach>

           </div>     
           
           
           
           <%--     <div class="row">
               
               
               
                 <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>/resources/images/찜닭.png" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text">뜨끈한 찜닭 - 강남점</p>
                          <p class="card-text">★4.8 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div>
                
            
                 <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>/resources/images/스시.png" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text">바다 스시- 청담점</p>
                          <p class="card-text">★4.8 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div>
                  
                  
                 <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>/resources/images/마라탕.png" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text">장첸 마라탕 - 강남점</p>
                          <p class="card-text">★4.4 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div>
              </div> --%>
           
           
              <br><br>
              
              <!-- 식당 2행 -->
           
           <%--    <div class="row">
              <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>/resources/images/텐동.png" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text">먹고싶다 텐동 - 역삼점</p>
                          <p class="card-text">★4.9 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div>
                
            
                 <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>/resources/images/꼬치.png" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text">양꼬치구이 - 잠실점</p>
                          <p class="card-text">★4.3 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div>
                  
                  
                 <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>/resources/images/샐러드.png" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text">아삭 샐러드 - 강남점</p>
                          <p class="card-text">★4.8 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div>
              </div> --%>
              
              
              <br><br>
              
               <!-- 식당 3행 -->
              
             <%--  <div class="col-4">
                  <div class="card" style="width: 255px; height: 400px;"> 
                       <img src="<%= request.getContextPath() %>/resources/images/치킨.png" class="card-img-top" alt="...">
                         <div class="card-body">
                          <p class="card-text">바삭 치킨 - 송파점</p>
                          <p class="card-text">★4.9 | 리뷰n개</p>
                          <a href="#" class="btn btn-primary">예약하기</a>
                          </div>
                      </div>
                  </div> --%>
           </form> 
      </div>
      

     <button type="button" class="button" onclick="enrollShop();">식당 등록</button>
     
     <br><br><br><br><br><br><br><br><br><br>

      <div class="paging">
         <nav aria-label="Page navigation example">
            <ul class="pagination">
               <li class="page-item"><a class="page-link" href="#"
                  aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
               </a></li> 
               <li class="page-item"><a class="page-link" href="#">1</a></li>
               <li class="page-item"><a class="page-link" href="#">2</a></li>
               <li class="page-item"><a class="page-link" href="#">3</a></li>
               <li class="page-item"><a class="page-link" href="#">4</a></li>
               <li class="page-item"><a class="page-link" href="#">5</a></li>
               <li class="page-item"><a class="page-link" href="#"
                  aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                  </a></li>
            </ul>
         </nav>
      </div>
   </div>
   
   	<script>
		function enrollShop(){
			location.href= "${ contextPath }/shopEnroll.do"
		}
	</script>
   
</body>
</html>