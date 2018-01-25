<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "../css/common.css">
<link rel = "stylesheet" type = "text/css" href = "../css/search.css">
<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "../css/member.css">

<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/search.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "css/member.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Musicon :: ${LoginUser.mem_nick}님의 회원정보</title>
</head>
<body>

<c:if test = "${LoginUser eq null}">
	<% response.sendRedirect("main.do"); %>
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
			<h2 id = "top_sub">'${LoginUser.mem_nick}'님의 회원정보</h2>
			<hr>
			<form method = "post" action = "member.do?command=member_update_form">
				<input type = "hidden" name = "mem_id" value = "${LoginUser.mem_id}">
				<table class = "info_table">
					<tr>
						<td class = "lbl">회원번호</td>
						<td class = "input">${LoginUser.mem_no}</td>
					</tr>
					<tr>
						<td class = "lbl">아이디</td>
						<td class = "input">${LoginUser.mem_id}</td>
					</tr>
					<tr>
						<td class = "lbl">닉네임</td>
						<td class = "input">${LoginUser.mem_nick}</td>
					</tr>
					<tr>
						<td class = "lbl">이름</td>
						<td class = "input">${LoginUser.mem_name}</td>
					</tr>
					<tr>
						<td class = "lbl">이메일</td>
						<td class = "input">
						<c:choose>
						<c:when test = "${LoginUser.mem_mail eq null}">	
							표시할 내용이 없습니다.					
						</c:when>
						<c:otherwise>
							${LoginUser.mem_mail}
						</c:otherwise>
						</c:choose>
						</td>
					</tr>
					<tr>
						<td class = "lbl">연락처</td>
						<td class = "input">
						<c:choose>
						<c:when test = "${LoginUser.mem_phone eq null}">	
							표시할 내용이 없습니다.					
						</c:when>
						<c:otherwise>
							${LoginUser.mem_phone}
						</c:otherwise>
						</c:choose>
						</td>						
					</tr>	
					<tr class = "button_grp">
						<td colspan = "2">							
							<input type = "submit" value = "정보 수정">
							<input type = "button" value = "뒤로가기" onclick = "javascript:history.go(-1)">
						</td>
					</tr>									
				</table>			
			</form>
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