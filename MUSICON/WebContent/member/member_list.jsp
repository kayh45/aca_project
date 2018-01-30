<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type = "text/javascript" src="script/member.js?ver=2"></script>
<link rel = "stylesheet" type = "text/css" href = "../css/common.css">
<link rel = "stylesheet" type = "text/css" href = "../css/search.css">
<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "../css/member.css">

<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/search.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "css/member.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Musicon :: 회원리스트</title>
</head>
<body>

<c:if test = "${LoginUser.mem_auth != 1}">
	<% response.sendRedirect("errorpage"); %>
</c:if>
<div class = "bgdiv">
<!-- 헤더 시작 -->
		<header>
			<%@ include file = "../header.jsp" %>
		</header>
		<!-- 헤더 끝  -->
		<!-- 컨텐츠 시작  -->
		<div id = "content">
			<div class = "join_form">
			<h2 id = "top_sub">회원리스트</h2>
			<hr>
				<table class = "memList">
					<tr id = "sub">
						<td>No.</td>
						<td>닉네임(아이디)</td>
						<td>이메일</td>
						<td>연락처</td>
						<td>게시물</td>
						<td>댓글</td>
						<td>비고</td>
					</tr>
					<c:forEach var = "member" items = "${memberList}">
					<tr>
						<td>${member.mem_no}</td>
						<td>${member.mem_nick}(${member.mem_id})</td>
						<td>${member.mem_mail}</td>
						<td>${member.mem_phone}</td>
						<td>${member.brd_cnt}개</td>
						<td>${member.brpl_cnt}개</td>
						<td>
						<c:if test = "${member.mem_auth != 1}">
						<input class = "deleteMem" type = "button" value = "삭제" onclick = "memDelete(${member.mem_no})">
						</c:if>
						</td>
					</tr>
					</c:forEach>
				</table>
			    <div class = "button_grp">
			    	<input type = "button" value = "뒤로가기" onclick = "location.href='main.do?command=main'">
				</div>
			</div>
		</div>
		<!-- 컨텐츠 끝  -->
	</div>
	<!-- 푸터 시작 -->
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
<!-- 푸터 끝  -->
</body>
</html>