<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/board.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<script type = "text/javascript" src="script/board.js?ver=3"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MUSICON :: 게시판</title>
</head>
<body>
	<header>
		<%@ include file = "../header.jsp" %>
	</header>
	<div class = "bgdiv">
			<!-- 컨텐츠 시작  -->
			<div id = "content">
				<div class = "menubar">
					<%@ include file = "board_menu.jsp" %>
				</div>
					<div id = "rsbox">
						<c:choose>
						<c:when test = "${boardType eq 'free'}">
							<p class = "big">자유게시판</p>
						</c:when>
						<c:when test = "${boardType eq 'review'}">
							<p class = "big">공연 리뷰</p>
						</c:when>
						<c:when test = "${boardType eq 'share'}">
							<p class = "big">정보 공유</p>
						</c:when>
						<c:when test = "${boardType eq 'photo'}">
							<p class = "big">사진갤러리</p>
						</c:when>
						<c:when test = "${boardType eq 'video'}">
							<p class = "big">영상갤러리</p>
						</c:when>
					</c:choose>					
						
						<table id = "detail">
							<tr class = "title">
								<td class = "number_detail">No.${board.brd_no}</td>
								<td class = "subject_detail">${board.brd_subject}</td>
								<td class = "theme_detail">${board.brd_date}</td>
								<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
							</tr>
							<c:if test = "${boardType eq 'review'}">
							<tr class = "title">
								<td colspan = "3">
									<div class = "info">
										<img src = "${board.pfm_pic}" width = "100px">
									</div>
									<div class = "info">
										<p>공연명: ${board.pfm_subject}</p>
										<p>장소: ${board.pfm_loc}</p>
										<fmt:parseDate var="dateString" value = "${board.pfm_start}" pattern = "yyyy-MM-dd HH:mm:ss"/>
										<p>기간: <fmt:formatDate value = "${dateString}" type = "date"/></p>
										<p>출연: ${board.pfm_actor}</p>
										<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
									</div>
									<div class = "info" id = "info_btn">
									<form method = "post"  target = "_blank" action = "perform.do?pfm_no=${board.pfm_no}">
									<input type = "hidden" name = "command" value = "performance_view">
									<%-- <input type = "hidden" name = "pfm_no" value = "${board.pfm_no}"> --%>
										<button type = "submit" class = "new_wdw">새 창에서 보기</button>
									</form>
									</div>
								</td>
							</tr>
							</c:if>
							<tr class = "title">
								<td colspan = "3">
									<div class = "dtl_content">
										<c:choose>
										<c:when test = "${boardType eq 'photo'}">
											<img src = "${board.brd_pic}">
											<hr>
										</c:when>
										<c:when test = "${boardType eq 'video'}">
											<iframe width="500" height="300" src="https://www.youtube.com/embed/${board.brd_vid}" 
											frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
											<hr>
										</c:when>
										</c:choose>
										<br>
										${board.brd_content}
										<%-- 
										
										
										
										게시물 내용이 들어올 것임 
										
										
										
										--%>
									</div>
									<div class = "dtl_content" id = "btn_group">
										<c:if test = "${LoginUser != null}">
										<button class = "btn_like" onclick = "addLike(${board.brd_no},'${boardType}')"><span>♥</span> 좋아요</button>
										</c:if>
										<c:if test = "${LoginUser == null}">
										<button class = "btn_like" disabled><span>♥</span> 좋아요</button>
										</c:if>										
										<div id = "likenum" class = "div_like"><span>${board.brd_like}</span></div>
										<button class = "btn_like">공유</button>
										<div class = "div_like">
											<a href="#" onclick="javascript:window.open('https://twitter.com/intent/tweet?text=[%EA%B3%B5%EC%9C%A0]%20'+encodeURIComponent(document.URL)+'%20-%20'+encodeURIComponent(document.title), 'twittersharedialog','menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" alt="Share on Twitter">
											<img src = "img/twitter.png" width = "25px"></a>
											<a href="#" onclick="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(document.URL)+'&amp;t='+encodeURIComponent(document.title), 'facebooksharedialog','menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" alt="Share on Facebook">
											<img src = "img/facebook.png" width = "25px"></a>
											<a href="#" onclick="javascript:window.open('https://plus.google.com/share?url='+encodeURIComponent(document.URL), 'googleplussharedialog','menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=350,width=600');return false;" target="_blank" alt="Share on Google+">
											<img src = "img/rss.png" width = "25px"></a>
										</div>
										
										<c:choose>
											<c:when test = "${LoginUser.mem_no eq board.mem_no}">
												<button class = "btn_delete" onclick = "deleteConfirm(${board.brd_no}, '${boardType}')">삭제</button>
												<form method = "post" action = "board.do?" class = "form_inline">
												<input type = "hidden" name = "command" value = "board_update_form">
												<input type = "hidden" name = "boardType" value = "${boardType}">
												<input type = "hidden" name = "brd_no" value = "${board.brd_no}">
												<button type = "submit" class = "btn_like">수정</button>
												</form>
											</c:when>
											<c:when test = "${LoginUser.mem_auth eq 1}">
												<button class = "btn_delete" onclick = "deleteConfirm(${board.brd_no}, '${boardType}')">삭제</button>
											</c:when>
										</c:choose>
										<button class = "btn_list" onclick = "location.href='board.do?command=board_list&boardType=${boardType}'">≡ 목록</button>
										
									</div>
								</td> 
							</tr>
							<c:forEach var = "reply" items = "${replyList}">
							<tr class = "title">
								<td colspan = "3">
									<div class = "dtl_comment">
										<div class = "cmt_head">
											<div class = "left">${reply.mem_nick}</div>
											<%-- ↑ 게시물테이블과 회원테이블을 조인하여 가져옴 --%>
											<div class = "right">${reply.brpl_date}</div>
											<%-- ↑ YYYY-MM-DD HH-MM 형식으로 --%>
											<c:if test = "${(LoginUser.mem_auth eq 1) or (LoginUser.mem_no eq reply.mem_no)}">
											<div class = "right"><a href = "javascript:replyDeleteConfirm(${reply.brpl_no},'${boardType}')" class = "rpt">삭제</a></div>
											</c:if>											
											<div class = "right"><a href = "javascript:rereply('${reply.mem_nick}')" class = "rpl">답글</a></div>
											<%-- ↑ 누르면 댓글 창에 '>>닉네임'을 넣어주는 자바스크립트 --%>
										</div>
										<div class = "cmt_body">
											${reply.brpl_content}	
										</div>
									</div>
								</td>
							</tr>
							</c:forEach>							
							<tr class = "title" id = "cmt">
							<td colspan = "3">
								<form method = "post" action = "board.do" name = "reply">
									<input type = "hidden" name = "mem_no" value = "${LoginUser.mem_no}">
									<input type = "hidden" name = "brd_no" value = "${board.brd_no}">
									<input type = "hidden" name = "boardType" value = "${boardType}">
									<input type = "hidden" name = "command" value = "brpl_write">
									
									<%-- ↑ 로그인 시 만들어진 세션으로 가져옴 --%>
									<c:choose>
									<c:when test = "${LoginUser != null}">
									<div class = "cmt_write">
										<textarea name = "brpl_content" class = "write_area" rows = "4"></textarea>
									</div>
									<div class = "cmt_submit">
										<button type = "submit">작성</button>
									</div>
									</c:when>
									<c:when test = "${LoginUser == null}">
									<div class = "cmt_write">
										<textarea placeholder="로그인 후 이용하실 수 있습니다." name = "brpl_content" class = "write_area" rows = "4" readonly ></textarea>
									</div>
									<div class = "cmt_submit">
										<button type = "submit" disabled>작성</button>
									</div>
									</c:when>
									</c:choose>
									
								</form>
								</td>
								
							</tr>							
						</table>
					</div>
			</div>
			</div>
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>