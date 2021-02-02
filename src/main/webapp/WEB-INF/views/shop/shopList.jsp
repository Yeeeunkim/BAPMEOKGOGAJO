<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#shopListArea {
	display: block;
	width: 100% !important;
	height: 100px;
	padding: 50px;
}

.form-select {
	width: 20% !important;
	float: right !important;
}

.container-fluid {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

#listArea {
	margin: 0 auto;
}

#imageArea {
	width: 150px;
	height: 150px;
	display: inline-block;
	vertical-align: middle;
	margin: 10px auto;
	padding-left: 10px;
	float: left;
}

#cardArea {
	height: 150px;
	display: inline-block;
	vertical-align: middle;
	font-weight: bold;
	position: relative;
	top: 25px;
}

.btn-warning {
	font-weight: bold !important;
	background-color: orange !important;
	color: white !important;
}

.enrollBtn {
	background-color: #F42B03;
	border: none;
	color: white;
	text-align: center;
	width: 100px !important;
	height: 40px;
	margin: 50px auto;
	float: right !important;
}

.enrollBtn:hover {
	background: tomato;
	color: white;
}

.aPage{
   color: black !important;
}

.aTitle{
   color: black;
}
</style>
</head>
<body>

<%@ include file="/WEB-INF/views/common/menubar.jsp"%>
   
   <div id="shopListArea">
      <select id="selectMenu" class="form-select" aria-label="Default select example" onchange="if(this.value) location.href=(this.value);">
         <option value="<%= request.getContextPath() %>/shop.do" selected="selected" id="all">전체</option>
         <option value="<%= request.getContextPath() %>/shop.do?SHOP_CATE=1" id="korean">한식</option>
         <option value="<%= request.getContextPath() %>/shop.do?SHOP_CATE=2" id="western">양식</option>
         <option value="<%= request.getContextPath() %>/shop.do?SHOP_CATE=3" id="chinese">일식</option>
         <option value="<%= request.getContextPath() %>/shop.do?SHOP_CATE=4" id="japanese">중식</option>
         <option value="<%= request.getContextPath() %>/shop.do?SHOP_CATE=5" id="school">분식</option>
         <option value="<%= request.getContextPath() %>/shop.do?SHOP_CATE=6" id="school">동남아</option>
         <option value="<%= request.getContextPath() %>/shop.do?SHOP_CATE=7" id="school">샐러드</option>
      </select><br><br><br>
   </div>

	<div class="container-fluid">
		<div class="row" style="min-height: 600px;">
			<div class="col-lg-8 col-md-10 col-sm-12" id="listArea">
				<div class="row">
					<c:forEach var="shopList" items="${shopList}">
						<div class="col-lg-6 col-md-6 col-sm-12" style="height: 152px;">
							<div style="width: 98%; height: 98%; border: 1px solid lightgray; text-align: center;">
								<div id="imageArea">
									<img id="images" src="<%= request.getContextPath() %>/resources/shopuploadFiles/${shopList.shopRename}" class="card-img-top" alt="..." style='width:95%; height:80%'>
								</div>
								<div id="cardArea">
									<p><c:out value="${shopList.shopName}"/><br>
										★${ shopList.avgScore } | 리뷰${ shopList.countReview }개<br></p>
									<a href="/bob/Reservation.do?SHOP_NO=${shopList.shopNo}" class="btn btn-warning">예약하기</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 페이징 처리 -->
	<table class="table">
		<tr align="center" height="20" id="buttonTab">
	         <td colspan="6">
	         
	            <!-- [이전] -->
	            <c:if test="${ pi.currentPage <= 1 }">
	               [이전] 
	            </c:if>
	            <c:if test="${ pi.currentPage > 1 }">
	               <c:if test="${ SHOP_CATE ne null }">
	               <c:url var="before" value="shop.do"> 
	                  <c:param name="SHOP_CATE" value='<%= request.getParameter("SHOP_CATE") %>'/>
	                  <c:param name="page" value="${ pi.currentPage - 1 }"/>          
	               </c:url>
	               </c:if>
	               <c:if test="${ SHOP_CATE eq null }">
	               <c:url var="before" value="shop.do">
	                  <c:param name="page" value="${ pi.currentPage - 1 }"/>          
	               </c:url>
	               </c:if>
	               <a class="aPage" href="${ before }">[이전]</a> &nbsp;
	            </c:if>
	            
	            <!-- 페이지 -->
	            <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
	               <c:if test="${ p eq pi.currentPage }">
	                  <font color="red" size="4"><b>[${ p }]</b></font>
	               </c:if>
	               
	               <c:if test="${ p ne pi.currentPage }">
	                  <c:if test="${ SHOP_CATE ne null }">
	                  <c:url var="pagination" value="shop.do">
	                  	 <c:param name="SHOP_CATE" value='<%= request.getParameter("SHOP_CATE") %>'/>
	                     <c:param name="page" value="${ p }"/>
	                  </c:url>
	                  </c:if>
	                  <c:if test="${ SHOP_CATE eq null }">
	                  <c:url var="pagination" value="shop.do">
	                     <c:param name="page" value="${ p }"/>
	                  </c:url>
	                  </c:if>
	                  <a class="aPage" href="${ pagination }">${ p }</a> &nbsp;
	               </c:if>
	            </c:forEach>
				
				<!-- [다음] -->
	            <c:if test="${ pi.currentPage >= pi.maxPage }">
	               [다음]
	            </c:if>
	            <c:if test="${ pi.currentPage < pi.maxPage }"> 
	               <c:if test="${ SHOP_CATE ne null }">
	               <c:url var="after" value="shop.do">
	                  <c:param name="SHOP_CATE" value='<%= request.getParameter("SHOP_CATE") %>'/>
	                  <c:param name="page" value="${ pi.currentPage + 1 }"/>
	               </c:url> 
	               </c:if>
	               <c:if test="${ SHOP_CATE eq null }">
	               <c:url var="after" value="shop.do">
	                  <c:param name="page" value="${ pi.currentPage + 1 }"/>
	               </c:url>
	               </c:if>
	               <a class="aPage" href="${ after }">[다음]</a>
	            </c:if>
	         </td>
	      </tr>
	</table>
    



	<div class="row">
		<div class="col-lg-9 col-md-10 col-sm-8"></div>
		<c:if test="${ loginUser.auth_code eq '2'  }">
		<div class="col-lg-1 col-md-1 col-sm-4">
			<button type="button" class="enrollBtn" onclick="enrollShop();">식당 	등록</button>
		</div>
		</c:if>
		<div class="col-lg-2 col-md-1"></div>

	</div>

	<%@ include file="/WEB-INF/views/common/footer.jsp"%>

	<script>
      function enrollShop(){
         location.href= "${ contextPath }/shopEnroll.do"
      }
   
      $( document ).ready(function() {
	      // 페이지 첫 로드시 URL 에 있는 SHOP_CATE 값으로 셀렉트박스 OPTION SELECT 시킴.
	      var SHOPCATE = <%= request.getParameter("SHOP_CATE") %>;
          $("#selectMenu option:eq("+SHOPCATE+")").attr("selected","selected");     
      });       
   </script>
</body>
</html>