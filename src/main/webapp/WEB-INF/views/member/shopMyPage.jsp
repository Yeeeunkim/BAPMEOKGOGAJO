<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .outer{
      width: 1000px;
      margin: auto;
   }
   .inner{
      width: 800px;
      margin: auto;
   }
   .subDiv{
      margin-top: 30px;
      display: inline-block;
      height: 70px;
      width: 380px;
   }
   .mainLabel{
      font-size: 18px;
   }
   .subLabel{
      font-size: 16px;
      color: #F42B03;
   }
   .updateBtn{
      font-size: 18px;
      color:#fff;
      border: 1px solid #F42B03;
      border-radius: 30px;
      background-color: #F42B03;
      width:150px; height:30px;
      margin-top: 50px;
      margin-bottom: 50px;
   }
   #introduceArea{
      background-color: #F4F3EE;;
      height: 150px;
      width: 100%;
      padding: 20px;
   }
   .saveBtnArea{
      text-align: right;
   }
   .saveBtn{
      border: 1px solid #F42B03;
      background-color: #F42B03;
      color:#fff;
   }
   .menuContent{
      margin: auto;
   }
   .menuContent td{
      text-align: left;
   }
   .menuContent input{
      width: 500px;
      border: 0px none;
   }
   #reservation{
      margin: auto;
   }
   #reservation tr {
      height: 40px;
   }
   .reservationSeat{
      display: inline-block;
      border: 1px solid black;
      text-align: center;
      padding-left: 10px;
      padding-right: 10px;
   }
   .approvedBtn{
      display: inline-block;
      border: 0px;
      width: 50px;
      text-align: center;
   }
   #approved{
      background-color: #3ABD37;
      margin-right: -6px;
   }
   #reject{
      background-color: red;
      margin-right: -6px;
   }
   .status{
      height: 25px;
      width: 100px;
      text-align: center;
      background-color: #F4F3EE;
   }
   
   .border{
      boarder-color: gray;
   }
   .statusfinal{
      height: 25px;
      width: 100px;
      background-color: #3ABD37;
      text-align: center;
      margin-left:30px;
   }
   .cancelBtn{
      height: 25px;
      width: 95px;
      color: red;
      text-align: center;
   }
   .seatSetting{
   }
   .seatTable tr{
      height: 50px;
   }
   .seatTable td{
      text-align: center;
   }
   #checkDay{
      display: inline-block;
      margin-bottom: -5px;
   }
   #checkDay th {
      height: 30px;
      border: 1px solid #ccc;
   }
   #checkDay td {
      width: 30px;
      border: 1px solid #ccc;
      text-align: center;
   }
   .innerContent{
      text-align: center;
   }
   .updateBtnArea{
      text-align: center;
   }
   
</style>
</head>
<body  style="font-family: 'Gugi'; ">
<!-- 사장님 마이페이지 -->
   <c:import url="../common/menubar.jsp"/>
   <div class="outer"><br><br>
      <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="${ loginUser.member_name}사장님 환영합니다 👨 🍳"/></h1><br>
      <div class="inner reservationSettingDiv">
         <hr class="line"> 
         <label class="mainLabel"><b style="font-size: 30px; color: navy;" >🏠&nbsp${ si.shopName }</b>&nbsp</label><br><br>
         <label class="mainLabel">◼&nbsp식당 소개글</label>       
         <textarea id="introduceArea" readonly>${ si.shopIntro }</textarea>   
      </div><br>
      <div class="inner menuDiv">
         <label class="mainLabel">◼&nbsp메뉴</label>
         <table class="table table-bordered table-sm" id="drinkmenu">
         <input type="hidden" name="menuCate" value="1">
               <tr>
                  <td>메인 <br>
                  <c:forEach var="sm" items="${ sm }">
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${ sm.menuName }&nbsp&nbsp&nbsp${ sm.menuPrice }원<br>
                 </c:forEach>
                 </td>
               </tr>
         </table>
       <table class="table table-bordered table-sm" id="drinkmenu">
         <input type="hidden" name="menuCate" value="2">
               <tr>
                  <td>사이드<br>
                  <c:forEach var="sms" items="${ sms }">
                       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${ sms.menuName}&nbsp&nbsp&nbsp${ sms.menuPrice }원<br>
                 </c:forEach>
                 </td>
               </tr>
         </table>
         <table class="table table-bordered table-sm" id="drinkmenu">
         <input type="hidden" name="menuCate" value="3">
               <tr>
                  <td>음료<br>
                   <c:forEach var="smb" items="${ smb }">
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${ smb.menuName}&nbsp&nbsp&nbsp${ smb.menuPrice}원<br>
                  </c:forEach>
                  </td>
               </tr>
         </table>
         <!--  <div class="saveBtnArea">
            <button class="saveBtn">저장</button>
         </div> -->
      </div><br>
      <div class="inner reservationDiv">
         <label class="mainLabel">◼&nbsp예약 관리</label>
         <table id="reservation">
            <tr class="status">
               <td  width="100px">예약 번호 </td>
               <td  width="350px">주문 메뉴</td>
               <td  width="200px">인원수 & 예약 시간</td>
               <td    width="150px">결제상태</td>
            </tr>
            <c:forEach var="ri" items="${ ri }">
            <tr>
               <td width="100px"  style="text-align: center" >${ ri.reserveNo }번 </td>
               <td width="350px"  style="text-align: center" >
                  <c:forEach var="i" begin="0" end="${fn:length(rm)}">
                     <c:if test="${ri.reserveNo==rm[i].reserveNo }">
                         ${rm[i].menuName}-(${rm[i].menuQty}개)
                        </c:if>
                  </c:forEach>
               </td>
               <td width="210px"  style="text-align: center" ><div class="reservationSeat">${ri.reservePeople}명 |오후${ ri.reserveTime }시| ${ ri.reserveDate }</div></td>
               <td width="150px" >
               
                  <div >
                     <div class="statusfinal" >결제완료</div>
                  </div>
               </td>
            </tr>
            </c:forEach>
         </table>
      </div><br>
      <div class="inner reservationSettingDiv">
         <div class="subDiv">
            <label class="mainLabel">◼&nbsp상차림 예약 비용 설정</label>
            <div class="innerContent">
               1인당 <input type="number" id="price" value="2000"  style="border: 0; width:  100px;" readonly>원
            </div>
         </div>
         <div class="subDiv">
            <label class="mainLabel">◼&nbsp테이블 이용 가능 시간</label>
            <div class="innerContent">
               최대<input type="number" id="time" value = "60"  style="border: 0; width:  100px;" readonly>분
            </div>
         </div>
         <!-- <div class="seatSetting">
            <label class="mainLabel">좌석</label><br>
            <table class="seatTable">
               <tr>
                  <td width="350px">1인석 <input type="number" class="seat">보유</td>
                  <td width="350px">2인석 <input type="number" class="seat">보유</td>
               </tr>
               <tr>
                  <td>4인석 <input type="number" class="seat">보유</td>
                  <td>6인석 <input type="number" class="seat">보유</td>
               </tr>
            </table>
         </div> -->
         <div class="subDiv">
            <label class="mainLabel">◼&nbsp가게 운영 시간</label>
            <div class="innerContent">
               오전&nbsp<input type="text" name="shopOpen" value="${ si.shopOpen }"  style="border: 0; width: 50px;" readonly>시 ~ 오후&nbsp<input type="text" name="shopClose" value="${ si.shopClose }"  style="border: 0; width: 50px;" readonly>시
            </div>
         </div>
         <div class="subDiv">
            <label class="mainLabel">◼&nbsp휴무일</label>
            <div class="innerContent">
               <table id="checkDay">
                  <tr>
                     <td id="mon">월</td>
                     <td id="tue">화</td>
                     <td id="wed">수</td>
                     <td id="thu">묵</td>
                     <td id="fri">금</td>
                     <td id="sat">토</td>
                     <td id="sun">일</td>
                  </tr>
               </table>
            </div>
         </div>
         
         <script>
            $(function(){
               var off='${si.shopOffday}';
               switch(off){
                 case "월":   $("#mon").css("background-color","red"); break
                 case "화":$("#tue").css("background-color","red"); break
                 case "수":$("#wed").css("background-color","red"); break
                 case "목":$("#thu").css("background-color","red"); break
                 case "금":$("#fri").css("background-color","red"); break
                 case "토":$("#sat").css("background-color","red"); break
                 case "일":$("#sun").css("background-color","red"); break
                 case "주말":$("#sat").css("background-color","red"); $("#sun").css("background-color","red");break
               }

               })
         </script>
         <div class="subDiv">
            <label class="mainLabel">◼&nbsp브레이크 타임</label>
            <div class="innerContent"> 
               오전&nbsp<input type="text" name="shopBreakStart" value="${ si.shopBreakStart }"  style="border: 0; width:  50px;" readonly>시 ~ 오후&nbsp<input type="text" name="shopBreakClose" value="${ si.shopBreakClose }" style="border: 0; width:  50px;"readonly>시 
            </div>
         </div>
      </div><br>
      <div class="inner">
      <p class="pp"></p><p class="pInput">◼&nbsp주소</p>&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;<input type="text" value="📍&nbsp;${ si.shopAddress }" style="border: 0;">
      
      <hr class="line">
         <div class="updateBtnArea">
            <c:url var="oinfo" value="oInfoPwdForm.me"/>
            <button class="updateBtn" onclick="location.href='${oinfo}'">회원 정보 수정</button>
            <c:url var="shopInfoUp" value="shopUpdateForm.me"/>
            <button class="updateBtn" onclick="location.href='${shopInfoUp}'" >식당 정보 수정</button>
         </div>
      </div>
   </div>
   
   <br><br><br>
  
   <c:import url="../common/footer.jsp"/>
   
</body>
</html>