<%@ page pageEncoding="utf-8" contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>닥터빌드 :: AI 다이렉트 집짓기</title>
<%-- <%@ include file="/WEB-INF/views/include/initDrbuild.jsp" %> --%>
<style type="text/css">
	.display-none {
		display: none;
	}
	.pick-image-box {
		cursor: pointer;
	}
	.mypage_view .v-info {
		width: 95.2%;
	}
	.tbl-type2 {
		width: 100%;
	}
	.tbl-type3 {
		width: 100%;
	}
</style>
</head>

<body>
<ul class="skip-nav">
	<li><a href="#container">본문 바로가기</a></li>
	<li><a href="#nav">메뉴 바로가기</a></li>
</ul>
<div id="wrap">
	
	<%-- <%@ include file="/WEB-INF/views/include/header.jsp" %> --%>

	<div id="page-top" style="background-image:url(../../images/pagetop-intro-09.png);">
		<div class="top-txt">
			<strong>마이페이지</strong>
			<span>어떤 곳에 집을 짓길 원하시나요?</span>
		</div>
	</div>
	
	<div id="container">
		<div id="location">
			<div class="section">
				<div class="home"><a href="/index.html">home</a></div>
				<div class="depth2"><a href="#"><span>마이페이지</span></a></div>
				<div class="depth2 on"><a href="#"><span>회원정보수정</span></a></div>
			</div>
		</div>
		<div class="subconts">
			<div id="article" class="mypage sub-page">
				<%-- <%@ include file="/WEB-INF/views/include/lnb_myPage.jsp" %> --%>

				<!-- 일반 사용자 시작 -->
				<div class="sub_contain" userCd="A01">
					<h3 class="sub_contain_headline"><strong>후기관리</strong></h3>
					<div class="mypage-cont">
						<div class="tab-menu-secondary">
							<ul>
								<li class="is-active" tabmenu="1" ><a href="">작성 가능한 후기 ( <span id="myview_list_cnt"></span> )</a></li>
								<li tabmenu="2" ><a href="">내가 쓴 후기 ( <span id="myview_box_cnt"></span> )</a></li>
							</ul>
						</div>
						<div class="myreview">
							<div class="mycategory">
								<a category="1" class="on">전체</a>
								<a category="2" >설계</a>
								<a category="3" >시공</a>
							</div>
							<!-- 작성 가능한 후기 -->
							<div class="myview-list">
								<ul>
									<li>
										<div class="alte-box">
											<div class="alt-left"><label class="badge-round white">시공</span></div>
											<div  class="alt-title">
												<dl>
													<dt>시공한 업체 이름</dt>
													<dd>대지위치 (서울시 서초구 서초동)</dd>
												</dl>
											</div>
											<div class="alt-btn"><a href="" class="btn btn-gray" estimate_no="견적관리번호" >후기작성</a></div>
										</div>
									</li>
								</ul>
							</div>
							<!-- 작성 가능한 후기 끝 -->

							<!-- 내가 쓴 후기 -->
							<div class="myview-box display-none">
								<div class="tbl-type1"></div>
							</div>
							<!-- 내가 쓴 후기 끝 -->

							<!-- 후기 작성 -->
							<form id="regReview" name="regReview" method="post" enctype="multipart/form-data" >
								<input type="hidden" id="estimate_no" 				name="estimate_no" />
								<input type="hidden" id="user_id" 					name="user_id" />
								<input type="hidden" id="mypage_review_content" 	name="mypage_review_content" />
								<input type="hidden" id="mypage_review_price" 		name="mypage_review_price" />
								<input type="hidden" id="mypage_review_kind" 		name="mypage_review_kind" />
								<input type="hidden" id="mypage_review_reliability" name="mypage_review_reliability" />
								<input type="hidden" id="mypage_review_image_name" name="mypage_review_image_name" />
								<input type="hidden" id="mypage_review_image_path" name="mypage_review_image_path" />
								<div class="reviewWrite display-none">
									<div class="tbl-type2 mt30 ">
										<table>
											<tbody>
												<tr>
													<th>평가</th>
													<td>
														<div class="rating">
															<dl>
																<dt>가격도</dt>
																<dd class="price" >
																	<button type="button" class="ss-ar active" score="1" ></button>
																	<button type="button" class="ss-ar" score="2" ></button>
																	<button type="button" class="ss-ar" score="3" ></button>
																	<button type="button" class="ss-ar" score="4" ></button>
																	<button type="button" class="ss-ar" score="5" ></button>
																</dd>
															</dl>
															<dl>
																<dt>친절도</dt>
																<dd class="kind" >
																	<button type="button" class="ss-ar active" score="1" ></button>
																	<button type="button" class="ss-ar" score="2" ></button>
																	<button type="button" class="ss-ar" score="3" ></button>
																	<button type="button" class="ss-ar" score="4" ></button>
																	<button type="button" class="ss-ar" score="5" ></button>
																</dd>
															</dl>
															<dl>
																<dt>신뢰도</dt>
																<dd class="reliability" >
																	<button type="button" class="ss-ar active" score="1" ></button>
																	<button type="button" class="ss-ar" score="2" ></button>
																	<button type="button" class="ss-ar" score="3" ></button>
																	<button type="button" class="ss-ar" score="4" ></button>
																	<button type="button" class="ss-ar" score="5" ></button>
																</dd>
															</dl>
														</div>
													</td>
												</tr>
												<tr class="only-construction" ><!-- 시공일때만 추가한다 -->
													<th>사진첨부하기</th>
													<td>
														<div class="d-flex flex-align-end">
															<div class="pick-image-box">
																<span class="txt">이미지 등록</span>
															</div>
															<label for="construction_image" class="btn btn-sm" >찾아보기</label>
															<input class="display-none" type="file" id="construction_image" name="construction_image" multiple="multiple" />
														</div>
													</td>
												</tr>
												<tr>
													<th>후기쓰기</th>
													<td>
														<textarea class="custom-textarea" ></textarea>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									
									<div class="btn-area">
										<a href="" class="btn btn-primary">등록하기</a>
									</div>
								</div>
							</form>
							<!-- 후기 작성 끝 -->

						</div>
					</div>
				</div>
				<!-- 일반 사용자 끝 -->

				<!-- 시공 / 설게 사용자 시작 -->
				<div class="sub_contain" userCd="A023">
			        <h3 class="sub_contain_headline"><strong>후기관리</strong></h3>
			        <div class="mypage-cont">
				        <div class="myview-box">

				            <div class="myp-total" style="padding-bottom: 20px;">후기 개수 <span id="cCIMyviewBoxCnt" name="cCIMyviewBoxCnt" >3</span>건&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;고객 만족도 평균&nbsp;&nbsp;<span>5.0</span>건</div>
				            
				            <div class="tbl-type2">
				            	<table>
					                <tbody>
					                	<tr>
					                    	<td>
					                    		<div class="score-group">
						                        	<ul class="score-list">
						                        		<li><span class="text-light">회원아이디 </span> gdefd</li>
						                        		<li><span class="text-light">가격 </span> <em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em> (5.0) </li>
						                        		<li><span class="text-light">친절도 </span> <em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em> (5.0) </li>
						                        		<li><span class="text-light">신뢰도 </span> <em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar"></em> (5.0) </li>
							                        </ul>
							                        <div class="date">20.01.09</div>
						                    	</div>
						                    </td>
						                </tr>
						                <tr>
						                    <td>
						                    	<div class="scroe-conts"> 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 </div>
						                    	<div class="aright">
						                        	<button type="button" class="btn btn-sm btn-primary" style="width: 100px;" btnType="4" ><span>삭제요청</span></button>
						                    	</div>
						                    	<div class="commentbox_header">
						                        	<div> <a href="#">댓글 (1) ▲ </a> </div>
						                        	<div class="comment-write">
						                        		<div class="u_cbox_write">
							                            	<div>건축주이름 <span>2000.00.00</span></div>
							                            	<textarea id="" class="u_cbox_text" rows="3" cols="30"></textarea>
						                        		</div>
						                        		<div class="cbox_tool">
						                        			<a href="#" class="btn_reply"><span class="reply_txt">등록</span></a>
						                        			<a href="#" class="btn_reply"><span class="reply_txt">수정</span></a>
						                        			<a href="#" class="btn_reply"><span class="reply_txt">삭제</span></a> 
						                        		</div>
						                        	</div>
						                    	</div>
						                    <td>
						                </tr>
					                </tbody>
				            	</table>

				            	<table>
				            	  <tbody>
				            	    <tr>
				            	      <td><div class="score-group">
				            	          <ul class="score-list">
				            	            <li><span class="text-light">회원아이디 </span> gdefd</li>
				            	            <li><span class="text-light">가격 </span> <em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em> (5.0) </li>
				            	            <li><span class="text-light">친절도 </span> <em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em> (5.0) </li>
				            	            <li><span class="text-light">신뢰도 </span> <em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar active"></em><em class="ss-ar"></em> (5.0) </li>
				            	          </ul>
				            	          <div class="date">20.01.09</div>
				            	        </div></td>
				            	    </tr>
				            	    <tr>
				            	      <td><div class="scroe-conts"> 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 후기 내용 </div>
				            	        <div class="aright">
				            	          <button type="button" class="btn btn-sm btn-primary" style="width: 100px;"><span>삭제요청</span></button>
				            	        </div>
				            	        <div class="commentbox_header">
				            	          <div> <a href="#">댓글  ▼ </a> </div>
				            	          <div class="comment-write" style="display: none;">
				            	            <div class="u_cbox_write">
				            	              <div>건축주이름 <span>2000.00.00</span></div>
				            	              <textarea id="" class="u_cbox_text" rows="3" cols="30"></textarea>
				            	            </div>
				            	            <div class="cbox_tool"> <a href="#" class="btn_reply"><span class="reply_txt">등록</span></a>&nbsp;<a href="#" class="btn_reply"><span class="reply_txt">수정</span></a>&nbsp;<a href="#" class="btn_reply"><span class="reply_txt">삭제</span></a> </div>
				            	          </div>
				            	        </div>
				            	      <td>
				            	    </tr>
				            	  </tbody>
				            	</table>
				            </div>

				        </div>
			        </div>
			    </div>
			    <!-- 시공 / 설게 사용자 끝 -->
			</div>
		</div>
	</div>

	<!-- 시공/설계 사용자 후기 삭제요청 팝업 시작  -->
	<div class="layer-pop">
		<div class="dimed"></div>
		<div class="poplayer2">
			<div class="container-pop">
				<div class="content-pop online">
					<h2>후기 삭제 요청하기</h2>
					<div class="mypage_view">
						<div class="v-info">
							<div class="tbl-type3">
								<table>
									<tbody>
										<tr>
											<th>삭제 요청 사유</th>
											<td>
												<div class="receipt">
													<input type="radio" id="rec01" name="pay" style="line-height: 50px;">
													<label for="rec01">악의적 게시물</label>
													<br>
													<input type="radio" id="rec02" name="pay">
													<label for="rec02">민감한 개인정보 노출</label>
													<br>
													<input type="radio" id="rec02" name="pay">
													<label for="rec02">기타</label>
												</div>
											</td>
										</tr>
										<tr>
											<th>자세한 내용</th>
											<td><textarea class="myp-Binfo-textarea h50"></textarea></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="btn-area">
								<div class="aright">
									<a href="#" class="btn blue">삭제</a>
									<a href="#" class="btn gray">취소</a>
								</div>
							</div>
						</div>
					</div>
					<div class="btn-r"><a href="#" class="btn-layerClose"></a></div>
				</div>
			</div>
		</div>
	</div>
	<!-- 시공/설계 사용자 후기 삭제요청 팝업 끝  -->
	
	<%-- <%@ include file="/WEB-INF/views/include/footer.jsp" %> --%>

	<div id="sign-in" title="로그인" class="inputForm" style="display: none;">
		<form action="#" method="post" id="loginForm" name="loginForm" class="panel" novalidate autocomplete="off">
			<input type="hidden" id="mode" name="mode" value="LOGIN">
			<input type="hidden" id="re_url" name="re_url" value="">
			<fieldset>
				<legend>로그인</legend>
				<ul class="entry">
					<li><dl>
						<dt class="entry-title">아이디<!--span class="print-message" tabindex="-1">등록되지 않은 ID입니다.</span--></dt>
						<dd><input type="text" class="i-text" id="m_id"  name="m_id" placeholder="ID를 입력해주세요" onkeyup='fn_press_han(event)' style="ime-mode:disabled;"/></dd>
					</dl></li>
					<li><dl>
						<dt class="entry-title">비밀번호<!--span class="print-message" tabindex="-1">비밀번호가 일치하지 않습니다.</span--></dt>
						<dd><label class="i-label">
							<span class="i-placeholder">비밀번호를 입력해주세요</span>
							<input type="password" class="i-text" id="m_pwd"  name="m_pwd" />
						</label></dd>
					</dl></li>
				</ul>
				<div class="tools">
					<label class="i-check">
						<input type="checkbox" name="idsave" value="saveOk" />
						<i class="bicon-check"></i>
						<span class="visible">로그인 유지</span>
					</label>
					<a href="javascript:void(0);" class="btn-forget"><span>아이디/비밀번호 찾기</span></a>
				</div>
				<button type="submit" onClick="sendit()" class="btn-signin"><span>로그인</span></button>
			</fieldset>
		</form>
		<div class="panel">
			<ul class="other-process">
				<li><a href="javascript:loginNaver();" class="btn sign-naver"><i class="ip-icon-naver-ci"></i><span>네이버 로그인</span></a></li>
				<li><a href="javascript:void(0)" id="kakao_login" class="btn sign-kakao">
					<i class="ip-icon-kakao-ci"></i>
					<span>카카오톡 로그인</span>
				</a></li>
				<li><a href="/member/join.html"  class="btn-go2signup"><span>회원가입</span></a></li>
			</ul>
		</div>
	</div>

	<div id="sign-forget" title="아이디/비밀번호 찾기" style="display: none;">
		<form action="?" method="post" name="find-id-form" id="find-id-form" class="panel"  autocomplete="off">
			<fieldset>
				<legend class="entry-title">아이디 찾기</legend>
			<!--	<span class="print-message" tabindex="-1">이름이 존재하지 않습니다.</span> -->
				<ul class="entry">
					<li><label class="i-label">
						<span class="i-placeholder">가입하신 이름을 입력하세요.</span>
						<input type="text" class="i-text" id="mb_name" name="mb_name"  />
					</label></li>
					<li><label class="i-label">
						<span class="i-placeholder">가입하신 전화번호를 입력하세요.</span>
						<input type="text" class="i-text" id="mb_mobile" name="mb_mobile" />
					</label></li>
				</ul>
				<button type="submit" id="id_find"  class="btn-submit"><span>아이디 찾기</span></button>
			</fieldset>
		</form>
		<form action="?" method="post" name="find-pw-form" id="find-pw-form" class="panel"  autocomplete="off">
			<fieldset>
				<legend class="entry-title">비밀번호 찾기</legend>
			<!--	<span class="print-message" tabindex="-1">아이디가 존재하지 않습니다.</span> -->
				<ul class="entry">
					<li><label class="i-label">
						<span class="i-placeholder">가입하신 아이디을 입력하세요.</span>
						<input type="text" class="i-text" id="mb_id" name="mb_id"/>
					</label></li>
					<li><label class="i-label">
						<span class="i-placeholder">가입하신 전화번호를 입력하세요.</span>
						<input type="text" class="i-text" id="mb_mobile" name="mb_mobile" />
					</label></li>
				</ul>
				<button type="submit" id="pwd_find"  class="btn-submit"><span>비밀번호 찾기</span></button>
			</fieldset>
		</form>
	</div>
</div>

<script type="text/javascript">
	$(document).ready( function() {

		// var user_id = "${user_id}";
		// var user_cd = "${user_cd}";//A01:사용자, A02:건축사, A03:시공사, A99:관리자
		<%-- var user_id = "<%=sessId%>";
		var user_cd = "<%=sessCd%>"; --%>
		// $("#user_id").val(user_id);
		// $("#user_cd").val(user_cd);
		// $("#user_id").val("9999999");
		// $("#user_id").val("test");

		console.log(user_id);
		console.log(user_cd);
		if (user_cd == "A02" || user_cd == "A03") user_cd = "A023";

		// user_cd = "A023";

		initKeyUpEvent();
		// reInitKeyUpEvent();

		if (user_cd == "A01" || user_cd == "A99") {
			$("div[userCd=A023]").addClass("display-none");
			// $("div[userCd=A03]").addClass("display-none");
			$(".myview-list").empty();
			getMyviewList();
			getMyviewBox();
		} else if (user_cd == "A023") {
			$("div[userCd=A01]").addClass("display-none");
			$("div[userCd=A023]").addClass("display-none");
			// getCCIMyviewBox();
			// $("div[userCd=A03]").addClass("display-none");
		}
		//  else if (user_cd == "A03") {
		// 	$("div[userCd=A01]").addClass("display-none");
		// 	$("div[userCd=A02]").addClass("display-none");
		// }

		// getMyviewList();
		// getMyviewBox();

	});

	function initKeyUpEvent() {

		$("li", "div.tab-menu-secondary").on("click", function(e) {
			e.preventDefault();

			$(this).prop("class", "is-active");

			var tabMenuNum = $(this).attr("tabmenu");

			if (tabMenuNum == "1") {
				$("li[tabmenu=2]").prop("class", "");
				$(".mycategory").removeClass("display-none");

				$(".myview-list").empty();
				// $("div.tbl-type1", ".myview-box").empty();
				$(".myview-list").removeClass("display-none");
				$(".myview-box").addClass("display-none");

				$(".reviewWrite").addClass("display-none");
				getMyviewList();
			} else if (tabMenuNum == "2") {
				$("li[tabmenu=1]").prop("class", "");
				$(".mycategory").removeClass("display-none");

				// $(".myview-list").empty();
				$("div.tbl-type1", ".myview-box").empty();
				$(".myview-list").addClass("display-none");
				$(".myview-box").removeClass("display-none");

				$(".reviewWrite").addClass("display-none");
				getMyviewBox();
			}

		});

		//후기 작성 추후(각 리스트 불러오기 ajax 코딩 후) 삭제
		$("a", "div.myview-list div.alte-box").on("click", function(e) {
			e.preventDefault();
			var estimate_no = $(this).attr("estimate_no");
			writeReview();
			// writeReview(estimate_no);

		});

		//일반 유저 전체/설계/시공 tab
		$("a", "div.mycategory").on("click", function(e) {
			e.preventDefault();
			var category = $(this).attr("category");

			if (category == "1") {//전체
				$("a[category=1]").addClass("on");
				$("a[category=2]").removeClass("on");
				$("a[category=3]").removeClass("on");
				if ( $("li[class=is-active]").attr("tabmenu") == "1" ) getMyviewList();
				else if ( $("li[class=is-active]").attr("tabmenu") == "2" ) getMyviewBox();
			} else if (category == "2") {//설계
				$("a[category=1]").removeClass("on");
				$("a[category=2]").addClass("on");
				$("a[category=3]").removeClass("on");
				if ( $("li[class=is-active]").attr("tabmenu") == "1" ) getMyviewList();
				else if ( $("li[class=is-active]").attr("tabmenu") == "2" ) getMyviewBox();
			} else if (category == "3") {//시공
				$("a[category=1]").removeClass("on");
				$("a[category=2]").removeClass("on");
				$("a[category=3]").addClass("on");
				if ( $("li[class=is-active]").attr("tabmenu") == "1" ) getMyviewList();
				else if ( $("li[class=is-active]").attr("tabmenu") == "2" ) getMyviewBox();
			}
		})

		//후기 작성시 가격, 친절도, 신뢰도 별표 점수
		$("button", "div.rating dd").on("click", function() {
			var className = $(this).parent().prop("class");
			var starCnt = $(this).attr("score");
			$("#mypage_review_" + className).val(starCnt);
			for (var i = starCnt; i > 0; i--) {
				$("button[score=" + i + "]", "dd." + className).addClass("active");
			}
			for (var i = 5; i > starCnt; i--) {
				$("button[score=" + i + "]", "dd." + className).removeClass("active");
			}
		});

		$(".pick-image-box").on("click", function() {
			$("#construction_image").trigger("click");
		});

		$("#construction_image").on("change", function() {
			upLoadImg(this);
		})

		//후기 등록
		$("a", "div.btn-area").on("click", function(e) {
			e.preventDefault();

			regReviewData();
		});

		//후기 삭제요청 팝업 닫기
		$(".gray").on("click", function(e) {
			e.preventDefault();
			$(".layer-pop").css("display", "none");
		})
		$(".btn-layerClose").on("click", function(e) {
			e.preventDefault();
			$(".layer-pop").css("display", "none");
		})

	}

	function reInitKeyUpEvent() {

		//후기 작성
		$("a", "div.myview-list div.alte-box").off();
		$("a", "div.myview-list div.alte-box").on("click", function(e) {
			e.preventDefault();
			var estimate_no = $(this).attr("estimate_no");
			writeReview();
			// writeReview(estimate_no);
		});

		//내가 쓴 후기 수정 및 삭제(2,3) / 시공 / 설계 사용자 삭제요청(4)
		$("button", "div.aright").off();
		$("button", "div.aright").on("click", function() {
			var btnType = $(this).attr("btnType");
			var mypage_review_no = $(this).parent().attr("mypage_review_no");

			if ( btnType == "2" ) {//후기 수정
				// updateReviewData(mypage_review_no);
				console.log("수정::::::::"+mypage_review_no);
			} else if ( btnType == "3" ) {//후기 삭제
				deleteReviewData(mypage_review_no);
				// console.log("삭제::::::::"+mypage_review_no);
			} else if ( btnType == "4" ) {//후기 삭제 요청
				$(".layer-pop").css("display", "block");
				// console.log("삭제요청:::::::"+mypage_review_no);
			}

		});

		//시공 / 설계 사용자 등록 수정 삭제
		$("a", "div.cbox_tool").off();
		$("a", "div.cbox_tool").on("click", function(e) {
			e.preventDefault();
			var btnType = $(this).attr("btnType");
			var mypage_review_no = $(this).parent().attr("mypage_review_no");

			//해당 후기 순서 번호를 가지고 MYPAGE_REVIEW_CONTENT_COMMENT 만 수정 / 삭제(내용지우기) / 등록하면 됨
			if ( btnType == "1" ) {//댓글 등록
				console.log("등록::::::::"+mypage_review_no);
			} else if ( btnType == "2" ) {//댓글 수정
				console.log("수정::::::::"+mypage_review_no);
			} else if ( btnType == "3" ) {//댓글 삭제
				console.log("삭제:::::::"+mypage_review_no);
			}

		});
	}

	//작성 가능한 후기 리스트(일반 사용자)
	function getMyviewList() {
		$(".myview-list").empty();
		var user_id = $("#user_id").val();
		$.ajax({
			data: { user_id: user_id },
			type: "POST",
			url: "/mypage/reViewManager/selWritePossibleMyPageReviewList",
			success: function(res) {

				if ( res.result == "success" ) {

					var html = "";

					for (var i = 0; i < res.data.list.length; i++) {

						html += "<ul>";
						html += 	"<li>";
						html += 		"<div class='alte-box'>";
						html += 			"<div class='alt-left'><label class='badge-round white'>" + ( ( res.data.list[i].estimate_type_code == '1' ) ? "설계" : "시공" ) + "</span></div>";
						html += 			"<div class='alt-title'>";
						html += 				"<dl>";
						html += 					"<dt>" + res.data.list[i].construction_company_name + "</dt>";
						html += 					"<dd>대지위치 ( " + res.data.list[i].building_site_address1 + " )</dd>";
						html += 				"</dl>";
						html += 			"</div>";
						html += 			"<div class='alt-btn'><a href='' class='btn btn-gray' estimate_no='" + res.data.list[i].estimate_no + "' estimate_type_code='" + res.data.list[i].estimate_type_code + "' >후기작성</a></div>";
						html += 		"</div>";
						html += 	"</li>";
						html += "</ul>";
					}

					$(html).appendTo(".myview-list");
					var myviewlistCnt = res.data.list.length;
					$("#myview_list_cnt").text(myviewlistCnt);
				}
			},
			complete: function() {
				reInitKeyUpEvent();
			}
		});
	}

	//내가 쓴 후기 리스트(일반 사용자)
	function getMyviewBox() {
		$("div.tbl-type1").empty();
		var user_id = $("#user_id").val();
		$.ajax({
			data: { user_id: user_id },
			type: "POST",
			url: "/mypage/reViewManager/selWriteMyPageReviewList",
			success: function(res) {

				if (res.result == "success") {

					var html = "";

					for (var i = 0; i < res.data.list.length; i++) {
						//시공인 경우 사진까지 보여줘야함
						var priceStarCnt = res.data.list[i].mypage_review_price;
						var kindStarCnt = res.data.list[i].mypage_review_kind;
						var reliabilityStarCnt = res.data.list[i].mypage_review_reliability;

						html += "<table>";
						html += 	"<tbody>";
						html += 		"<tr>";
						html += 			"<td>";
						html += 				"<div class='score-group'>";
						html += 					"<ul class='score-list'>";
						html += 						"<li><span class='text-light'>회원 이름 </span> " + res.data.list[i].user_name + "</li>";
						html += 						"<li><span class='text-light'>가격 </span>";
						html += 							starCntCheck(priceStarCnt);
						html += 						"</li>";
						html += 						"<li><span class='text-light'>친절도 </span>";
						html += 							starCntCheck(kindStarCnt);
						html += 						"</li>";
						html += 						"<li><span class='text-light'>신뢰도 </span>";
						html += 							starCntCheck(reliabilityStarCnt);
						html += 						"</li>";
						html += 					"</ul>";
						html += 					"<div class='date'>" + res.data.list[i].mypage_review_regdate.split(" ")[0] + "</div>";
						html += 				"</div>";
						html += 			"</td>";
						html += 		"</tr>";
						html += 		"<tr>";
						html += 			"<td>";
						html += 				"<div class='scroe-conts'>" + res.data.list[i].mypage_review_content + "</div>";
						html += 				"<div class='aright' mypage_review_no='" + res.data.list[i].mypage_review_no + "'>";
						html += 					"<button type='button' class='btn btn-sm btn-primary' btnType='2' ><span>수정</span></button>";
						html += 					"<button type='button' class='btn btn-sm btn-gray' btnType='3' ><span>삭제</span></button>";
						html += 				"</div>";
						html += 			"<td>";
						html += 		"</tr>";
						html += 	"</tbody>";
						html += "</table>";
					}

					$(html).appendTo("div.tbl-type1");
					var myviewBoxCnt = res.data.list.length;
					$("#myview_box_cnt").text(myviewBoxCnt);
				}
			},
			complete: function() {
				reInitKeyUpEvent();
				$("em.ss-ar").css("pointer-events", "none");
			}
		});
	}

	function starCntCheck(count) {

		var starHtml = "";
		if ( count == "1" ) starHtml = "<em class='ss-ar active'></em><em class='ss-ar'></em><em class='ss-ar'></em><em class='ss-ar'></em><em class='ss-ar'></em> (1.0)";
		else if ( count == "2" ) starHtml = "<em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar'></em><em class='ss-ar'></em><em class='ss-ar'></em> (2.0)";
		else if ( count == "3" ) starHtml = "<em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar'></em><em class='ss-ar'></em> (3.0)";
		else if ( count == "4" ) starHtml = "<em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar'></em> (4.0)";
		else if ( count == "5" ) starHtml = "<em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar active'></em><em class='ss-ar active'></em> (5.0)";

		return starHtml;
	}

	//후기 작성하기 페이지(일반사용자만) estimate_no 파라미터 추가해야함
	function writeReview() {
		reSetData();
		$(".mycategory").addClass("display-none");
		// $("#estimate_no").val(estimate_no);
		// var estimate_type_code = "";

		// $(".myview-list").empty();
		// $("div.tbl-type1", ".myview-box").empty();
		$(".myview-list").addClass("display-none");
		$(".myview-box").addClass("display-none");

		// 해당 후기 작성할 업체 정보
		// $.ajax({
		// 	data: { estimate_no: estimate_no },
		// 	type: "POST",
		// 	url: "",
		// 	success: function(res) {
		// 		if ( res.result == "success" ) {
		// 			var html = "";

		// 			html += "<ul>";
		// 			html += 	"<li>";
		// 			html += 		"<div class='alte-box'>";
		// 			html += 			"<div class='alt-left'><label class='badge-round white'>"+ ( ( res.data.list.estimate_type_code == '1' ) ? "설계" : "시공" ) +"</label></div>";
		// 			html +=				"<div class='alt-title'>";
		// 			html +=					"<dl>";
		// 			html +=						"<dt>" + res.data.list.construction_company_name + "</dt>";
		// 			html +=						"<dd>대지위치 (" + res.data.list.building_site_address1 + ")</dd>";
		// 			html +=					"</dl>";
		// 			html +=				"</div>";
		// 			html +=			"</div>";
		// 			html +=		"</li>";
		// 			html +=	"</ul>";

		// 			$(html).appendTo(".myview-list");
		// 			estimate_type_code = res.data.list.estimate_type_code;
		// 		}
		// 	}
		// });

		$(".reviewWrite").removeClass("display-none");

		//시공일 경우만 사진 첨부(시공 == "2")
		// if (estimate_type_code == "1") $(".only-construction").addClass("display-none");
		// else if (estimate_type_code == "2") $(".only-construction").removeClass("display-none");

	}

	// 시공 / 설계 사용자 후기 관리 리스트
	function getCCIMyviewBox() {
		$("div.tbl-type2").empty();
		// var user_id = ;
		$.ajax({
			data: { user_id: user_id },
			type: "POST",
			url: "",
			success: function(res) {
				if ( res.result == "success" ) {
					var html = "";

					for (var i = 0; i < res.data.list.length; i++) {

						var priceStarCnt = res.data.list[i].mypage_review_price;
						var kindStarCnt = res.data.list[i].mypage_review_kind;
						var reliabilityStarCnt = res.data.list[i].mypage_review_reliability;

		            	html += "<table>";
			            html += 	"<tbody>";
			            html += 		"<tr>";
			            html += 			"<td>";
			            html += 				"<div class='score-group'>";
				        html += 					"<ul class='score-list'>";
						html += 						"<li><span class='text-light'>회원 이름 </span> " + res.data.list[i].user_name + "</li>";
				        html += 						"<li><span class='text-light'>가격 </span>";
				        html += 							starCntCheck(priceStarCnt);
				        html += 						"</li>";
				        html += 						"<li><span class='text-light'>친절도 </span>";
				        html += 							starCntCheck(kindStarCnt);
				        html += 						"</li>";
				        html += 						"<li><span class='text-light'>신뢰도 </span>";
				        html += 							starCntCheck(reliabilityStarCnt);
				        html += 						"</li>";
					    html += 					"</ul>";
						html += 					"<div class='date'>" + res.data.list[i].mypage_review_regdate.split(" ")[0] + "</div>";
				        html += 				"</div>";
				        html += 			"</td>";
				        html += 		"</tr>";
				        html += 		"<tr>";
				        html += 			"<td>";
				        html += 				"<div class='scroe-conts'></div>";
				        html += 				"<div class='aright' mypage_review_no='" + res.data.list[i].mypage_review_no + "' >";
				        html += 					"<button type='button' class='btn btn-sm btn-primary' style='width: 100px;' btnType='4' ><span>삭제요청</span></button>";
				        html += 				"</div>";
				        html += 				"<div class='commentbox_header'>";
				        // 댓글 펼치기 작성해야함
				        html += 					"<div> <a href='#'>댓글 (1) ▲ </a> </div>";
				        html += 					"<div class='comment-write'>";
				        html += 						"<div class='u_cbox_write'>";
					    html += 							"<div>건축주이름 <span>2000.00.00</span></div>";
					    html += 							"<textarea id='' class='u_cbox_text' rows='3' cols='30'></textarea>";
				        html += 						"</div>";
				        html += 						"<div class='cbox_tool' mypage_review_no='" + res.data.list[i].mypage_review_no + "' >";
				        html += 							"<a href='#' class='btn_reply' btnType='1' ><span class='reply_txt'>등록</span></a>";
				        html += 							"<a href='#' class='btn_reply' btnType='2' ><span class='reply_txt'>수정</span></a>";
				        html += 							"<a href='#' class='btn_reply' btnType='3' ><span class='reply_txt'>삭제</span></a>";
				        html += 						"</div>";
				        html += 					"</div>";
				        html += 				"</div>";
				        html += 			"<td>";
				        html += 		"</tr>";
			            html += 	"</tbody>";
		            	html += "</table>";

					}

					$(html).appendTo("div.tbl-type2");
					var cCIMyviewBoxCnt = res.data.list.length;
					$("#cCIMyviewBoxCnt").text(cCIMyviewBoxCnt);
				}
			},
			complete: function() {
				reInitKeyUpEvent();
				$("em.ss-ar").css("pointer-events", "none");
			}
		});
	}

	//후기 등록
	function regReviewData() {

		var text = $("textarea.custom-textarea").val();
		var resultText = text.replace(/(\n|\r\n)/g, "<br>");
		$("#mypage_review_content").val(resultText);

		var formData = new FormData($("#regReview")[0]);

		$.ajax({
			data: formData,
			type: "POST",
			url: "/mypage/reViewManager/insMyPageReviewData",
			cache: false,
			processData: false,
    		contentType: false,
			success: function(res) {
				if (res == "success") alert("등록이 완료 되었습니다.");
			},
			complete: function() {
				//TODO
				//작성한 후기 데이터 reset
				//내가 쓴 후기 띄우기
				reSetData();
				$("li[tabmenu=2]").trigger("click");
			}
		});
	}
	//후기 수정
	function updateReviewData(mypage_review_no) {
		//추후
		var formData = new FormData($("#regReview")[0]);
		formData.append("mypage_review_no", mypage_review_no);

		$.ajax({
			data: formData,
			type: "POST",
			// url: "/mypage/reViewManager/uptMyPageReviewData",
			success: function(res) {
				if (res == "success") alert("수정이 완료 되었습니다.");
			},
			complete: function() {
				//TODO
				//작성한 후기 데이터 reset
				//내가 쓴 후기 띄우기
				//$("li[tabmenu=2]").trigger("click");
			}
		});
	}
	//후기 삭제
	function deleteReviewData(mypage_review_no) {

		$.ajax({
			data: { mypage_review_no: mypage_review_no },
			type: "POST",
			url: "/mypage/reViewManager/delMyPageReviewData",
			success: function(res) {
				if (res == "success") alert("삭제가 완료 되었습니다.");
			},
			complete: function() {
				//TODO
				//내가 쓴 후기 띄우기
				$("li[tabmenu=2]").trigger("click");
			}
		});
	}

	function reSetData() {

		$("#estimate_no").val("");
		// $("#user_id").val("");
		$("#mypage_review_content").val("");
		$("#mypage_review_price").val("");
		$("#mypage_review_kind").val("");
		$("#mypage_review_reliability").val("");
		$("#mypage_review_image_name").val("");
		$("#mypage_review_image_path").val("");
		$("#construction_image").val("");
		$("div.pick-image-box").html("<span class='txt'>이미지 등록</span>");
		$("textarea.custom-textarea").val("");

		$("button[score=2]").removeClass("active");
		$("button[score=3]").removeClass("active");
		$("button[score=4]").removeClass("active");
		$("button[score=5]").removeClass("active");

	}

	//업로드 이미지 보여주기
	function upLoadImg(img) {
		if (img.files && img.files[0]) {
			var reader = new FileReader();

			reader.onload = function (e) {
				$("div.pick-image-box").html("<img style='width: 100%; height: 100%;' src='" + e.target.result + "'/>");
			}
			reader.readAsDataURL(img.files[0]);
		}
	}

</script>


</body>
</html>