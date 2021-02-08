<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 내역</title>
<style>
	.outer{
		width: 1000px;
		margin: auto;
	}
	.mid{
		width: 800px;
		margin: 50px auto;
	}
	.inner{
		text-align: center;
	}
	.updateBtn{
		font-size: 18px;
		color:#fff;
		border: 1px solid #F42B03;
		border-radius: 30px;
		background-color: #F42B03;
		width:150px; height:30px;
		margin-top: 50px;
	}
	table{
		margin: auto;
		text-align: left;
	}
	.status{
		height: 40px;
		width: 95px;
		background-color: #3ABD37;
		text-align: center;
		font-size: 20px;
	}
	.cancelBtn{
		height: 25px;
		width: 95px;
		color: red;
		text-align: center;
	}
	
	.status{
		height: 25px;
		width: 100px;
		text-align: center;
		background-color: #F4F3EE;
	}
	
	.statusfinal{
		height: 25px;
		width: 100px;
		background-color: #3ABD37;
		text-align: center;
	}
	
	#reservation{
		margin: auto;
	}
</style>
</head>
<body style="font-family: 'Gugi'; " >

	<jsp:include page="../common/menubar.jsp" />
		
	<div class="outer"><br><br>
		<h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<c:out value="${ loginUser.member_name}님 환영합니다  🙌 ‍"/></h1>
		<div class="mid">
		 <hr class="line"> 
			<h5>◼&nbsp예약 내역</h5>
			 <hr class="line"> 
				<table id="reservation" style="text-align: center" >
					<tr height="20px" class="status">
						<td  width="100px">📌예약<br></td>
						<td  width="150">식당명</td>
						<td  width="350px">주문 메뉴</td>
						<td  width="200px">결제금액</td>
						<td	 width="200px">결제상태</td>
					</tr><tr height="30px"></tr>
					<c:forEach var="re" items="${ re }">
					<tr>
					    <td rowspan="6" width="160px"><c:forEach var="sp" items="${ sp }"> <img id="thumbImg" width="160px" height="140px" src="${ contextPath }/resources/shopuploadFiles/${ sp.shopRename }"></c:forEach></td>
						<td width="500px"><c:forEach var="sp" items="${ sp }"><br><br>${ sp.shopName }</c:forEach></td>
						<td><br><c:forEach var="reme" items="${ reme }">${ reme.menuName },</c:forEach></td>
						<td><br><br>${ re.totalPrice }원</td>
						<td style="text-align: center"><br><br><div class="statusfinal" >예약 완료</div></td>
					</tr>
					</c:forEach>
					<tr height="5px">
					</tr>
				<tr height="30px">
						<td width="200px"></td>
					</tr>
				</table>
		 <hr class="line"> 
			<h5>◼&nbsp리뷰 내역 </h5>
			 <hr class="line">
				<table style="text-align: center" >
					<tr height="10px" class="status">
					<td width="100px">📌리뷰<br></td>
						<td  width="500px">리뷰내용</td>
						<td  width="100px">리뷰점수</td>
						<td	 width="100px">작성일</td>
					</tr><tr height="30px"></tr>
					<c:forEach var="rev" items="${ rev }">
					<tr>
						<td rowspan="3" width="160px"><img id="thumbImg" width="160px" height="140px" src="${ contextPath }/resources/buploadFiles/${ rev.renameFilename }"></td>
						<td width="500px"><br><br>${ rev.reviewContents }</td>
						<td width="100px"><br><br>${ rev.reviewScore }점</td>
						<td width="100px"><br><br>${ rev.reviewWrite }</td>
					</tr>
					</c:forEach>
					<tr height="5px">
					</tr>
					<tr height="30px">
						<td width="200px"></td>
					</tr>
				</table>
		</div>
	  </div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>