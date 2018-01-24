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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<%@ include file = "../header.jsp" %>
	</header>
	<div class = "bgdiv">
			<!-- 컨텐츠 시작  -->
			<div id = "content">
				<div class = "menubar">
					<ul>
						<li id = "title"><a href = "board.html">게시판목록</a></li>
						<li><a href = "#">자유게시판</a></li>
						<li><a href = "board_review.html">공연 리뷰</a></li>
						<li><a href = "#">정보 공유</a></li>
						<li><a href = "#">사진갤러리</a></li>
						<li><a href = "#">영상갤러리</a></li>
					</ul>
				</div>
					<div id = "rsbox">
						<p class = "big_detail"><a href ="board_review.html" class = "headlink">사진 갤러리</a></p>
						<form method = "post" action = "">
						<table id = "detail">
							<tr class = "title">
								<td class = "number_detail">No.${board.brd_no}</td>
								<td class = "subject_detail">${board.brd_subject}</td>
								<td class = "theme_detail">${board.pfm_div}</td>
								<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
							</tr>
							<tr class = "title">
								<td colspan = "3">
									<div class = "dtl_content">
										<c:choose>
											<c:when test = "${board.brd_vid != null}">
												<c:set var = "prv_src" value = "https://www.youtube.com/embed/"/>
												<c:set var = "vid_src" value = "${prv_src}${board.brd_vid}"/>
												<iframe width="500" height="300" src="${vid_src}" 
												frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>							
											</c:when>
										<c:otherwise>
											<h2>영상을 불러올 수 없습니다.</h2>
										</c:otherwise>
										</c:choose>
										<hr>
										${board.brd_content}
										<%-- 
										
										
										게시물 내용이 들어올 것임 									
										
										
										--%>
									</div>
									<div class = "dtl_content" id = "btn_group">
										<button class = "btn_like"><span>♥</span> 좋아요</button>
										<div class = "div_like"><span>${board.brd_like}</span></div>
										<button class = "btn_like">공유</button>
										<div class = "div_like">
											<img src = "img/twitter.png" width = "25px">
											<img src = "img/facebook.png" width = "25px">
											<img src = "img/rss.png" width = "25px">
										</div>
									</div>
								</td> 
							</tr>
							<c:foreach var = "board_reply" items = "${board_reply_list}">
							<tr class = "title">
								<td colspan = "3">
									<div class = "dtl_comment">
										<div class = "cmt_head">
											<div class = "left">${board_reply.mem_nick}</div>
											<%-- ↑ 게시물테이블과 회원테이블을 조인하여 가져옴 --%>
											<div class = "right">${board_reply.brpl_date}</div>
											<%-- ↑ YYYY-MM-DD HH-MM 형식으로 --%>
											<div class = "right"><a href = "#" class = "rpt">신고</a></div>
											<div class = "right"><a href = "#" class = "rpl">답글</a></div>
											<%-- ↑ 누르면 댓글 창에 '>>닉네임'을 넣어주는 자바스크립트 --%>
										</div>
										<div class = "cmt_body">
											${board_reply.brpl_content}	
										</div>
									</div>
								</td>
							</tr>
							</c:foreach>							
							<tr class = "title" id = "cmt">
								<td colspan = "3">
									<input type = "hidden" name = "mem_no" value = "${loginUser.mem_no}">
									<input type = "hidden" name = "brd_no" value = "${board.brd_no}">
									<%-- ↑ 로그인 시 만들어진 세션으로 가져옴 --%>
									<div class = "cmt_write">
										<textarea name = "brpl_content" class = "write_area" rows = "4"></textarea>
									</div>
									<div class = "cmt_submit">
										<button type = "submit">작성</button>
									</div>
								</td>
								
							</tr>							
						</table>
						</form>
					</div>
			</div>
			</div>
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>