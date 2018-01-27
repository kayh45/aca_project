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
							<input type = "hidden" name = "command" value = "board_write">					
							<input type = "hidden" name = "boardType" value = "${boardType}">					
							<table id = "detail" class = "write_form">
								<tr class = "title">
									<td colspan = "2">
										<h3>게시물 작성</h3>
									</td>
								</tr>
								<tr class = "title">
									<td class = "td_subject">제목	</td>									
									<td class = "td_content">
										<input type = "text" name = "brd_subject">
									</td>
								</tr>
								<c:choose>
								<c:when test = "${boardType eq 'review'}">
								<tr class = "title">
									<td class = "td_subject">공연</td>									
									<td class = "url">
										<input type = "text" name = "pfm_subject">
										<input type = "text" name = "pfm_no">
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
										<input type = "text" name = "brd_pic">
										<input id = "srch_btn" type = "button" value = "미리보기">
									</td>
								</tr>
								</c:when>
								<c:when test = "${boardType eq 'video'}">
									<tr class = "title">
									<td class = "td_subject">유튜브 공유 URL</td>									
									<td class = "url">
										<input type = "text" name = "brd_vid">
										<input id = "srch_btn" type = "button" value = "미리보기">
									</td>
								</tr>
								</c:when>
								</c:choose>
								<tr class = "title">
									<td class = "td_subject">내용</td>
									<td class = "td_content">
										<textarea name = "brd_content" cols = "50" rows = "20"></textarea>
									<input type = "hidden" name = "mem_no" value = "${LoginUser.mem_no}">
									</td>									
								</tr>
								<tr class = "title">
									<td colspan = "2" id = "button_grp">
										<input type = "submit" value = "작성">
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