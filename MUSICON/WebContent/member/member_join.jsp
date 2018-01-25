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
<title>Musicon :: 회원가입</title>
</head>
<body>
	<div class = "bgdiv">
		<!-- 헤더 시작 -->
		<header>
			<%@ include file = "../header.jsp" %>
		</header>
		<!-- 헤더 끝  -->
		<!-- 컨텐츠 시작  -->
		<div id = "content">
			<div class = "join_form">
			<h2 id = "top_sub">회원가입</h2>
			<hr>
			<form method = "post" action = "member.do">
			<input type = "hidden" value = "member_join" name = "command">
			
				<table class = "join_table">
					<tr>
						<td class = "lbl">아이디</td>
						<td class = "input"><input type = "text" name = "mem_id"></td>
						<td class = "must">*</td>
						<td><input type = "button" class = "check_btn" onclick = "return idCheck()" value = "중복검사"></td>
					</tr>
					<tr>
						<td class = "lbl">닉네임</td>
						<td class = "input"><input type = "text" name = "mem_nick"></td>
						<td class = "must">*</td>
						<td><input type = "button" class = "check_btn" onclick = "return nickCheck()" value = "중복검사"></td>
					</tr>
					<tr>
						<td class = "lbl">비밀번호</td>
						<td class = "input"><input type = "password" name = "mem_pw"></td>
						<td class = "must">*</td>
						<td></td>
					</tr>	
					<tr>
						<td class = "lbl">비밀번호 확인</td>
						<td class = "input"><input type = "password"></td>
						<td class = "must">*</td>
						<td>${message}</td>
					</tr>
					<tr>
						<td class = "lbl">이름</td>
						<td class = "input"><input type = "text" name = "mem_name"></td>
						<td class = "must">*</td>
						<td></td>
					</tr>
					<tr>
						<td class = "lbl">이메일</td>
						<td class = "input"><input type = "text" name = "mem_mail"></td>
						<td><input type = "hidden" name = "id_check"></td>
						<td><input type = "hidden" name = "nick_check"></td>
					</tr>
					<tr>
						<td class = "lbl">연락처</td>
						<td class = "input"><input type = "text" name = "mem_phone"></td>
						<td></td>
						<td></td>
						
					</tr>	
					<tr class = "button_grp">
						<td colspan = "4">							
							<input type = "submit" value = "가입">
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
