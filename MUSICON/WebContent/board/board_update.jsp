<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/boardWrite.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<script type = "text/javascript" src="script/board.js?ver=3"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MUSICON :: 게시물 작성</title>
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
						<form method = "post" action = "board.do">	
							<input type = "hidden" name = "command" value = "board_update">					
							<input type = "hidden" name = "boardType" value = "${boardType}">
							<input type = "hidden" name = "brd_no" value = "${board.brd_no}">
							
							<c:choose>
									<c:when test = "${boardType eq 'free'}">
										<p class = "big">자유게시판 수정</p>
									</c:when>
									<c:when test = "${boardType eq 'review'}">
										<p class = "big">공연 리뷰 수정</p>
									</c:when>
									<c:when test = "${boardType eq 'share'}">
										<p class = "big">정보 공유 수정</p>
									</c:when>
									<c:when test = "${boardType eq 'photo'}">
										<p class = "big">사진갤러리 수정</p>
									</c:when>
									<c:when test = "${boardType eq 'video'}">
										<p class = "big">영상갤러리 수정</p>
									</c:when>
							</c:choose>			
							<table id = "detail" class = "write_form">
								<tr class = "title">
									<td class = "td_subject">제목	</td>									
									<td class = "td_content">
										<input type = "text" name = "brd_subject" value = "${board.brd_subject}">
									</td>
								</tr>
								<c:choose>
								<c:when test = "${boardType eq 'review'}">
								<tr class = "title">
									<td class = "td_subject">공연</td>									
									<td class = "url">
										<input type = "text" name = "pfm_subject" value = "${board.pfm_no}">
										<input type = "hidden" name = "pfm_no" value = "${board.pfm_no}">
										<%--나중에 hidden으로 바꿔줌 --%>
										<input id = "srch_btn" type = "button" value = "검색">
										${inform}
									</td>
								</tr>
								</c:when>
								<c:when test = "${boardType eq 'photo'}">
									<tr class = "title">
									<td class = "td_subject">사진 URL</td>									
									<td class = "url">
										<input type = "text" name = "pic_url" value = "${board.brd_pic}">
										<input type = "hidden" name = "brd_pic" value = "${board.brd_pic}">
										<input id = "srch_btn" type = "button" value = "적용" onclick = "imgPreview()">
									</td>
								</tr>
								<tr class = "title">
									<td></td>
									<td>
										<div class = "previewBox">
											<img name = "img_prv" src = "${board.brd_pic}">
										</div>
									</td>
								</tr>
								</c:when>
								<c:when test = "${boardType eq 'video'}">
									<tr class = "title">
									<td class = "td_subject">유튜브 URL</td>									
									<td class = "url">
										<input type = "text" name = "vid_url" value = "https://youtu.be/${board.brd_vid}">
										<input type = "hidden" name = "brd_vid" value = "${board.brd_vid}">
										<input id = "srch_btn" type = "button" value = "적용" onclick = "vidPreview()">
									</td>
								</tr>
								<tr class = "title">
									<td></td>
									<td>
										<div class = "previewBox">
											<iframe id = "vid_prv" width="500" height="300" src="https://www.youtube.com/embed/${board.brd_vid}" 
											frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
										</div>
									</td>
								</tr>
								</c:when>
								</c:choose>
								<tr class = "title">
									<td class = "td_subject">내용</td>
									<td class = "td_content">
										<textarea name = "brd_content" cols = "50" rows = "20">${board.brd_content}</textarea>
									<input type = "hidden" name = "mem_no" value = "${LoginUser.mem_no}">
									</td>									
								</tr>
								<tr class = "title">
									<td colspan = "2" id = "button_grp">
										<input type = "submit" value = "수정" onclick = "return writeCheck()">
										<input type = "button" value = "취소" onclick = "javascript:'history.go(-1)'">
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