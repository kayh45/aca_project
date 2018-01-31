<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
<link rel = "stylesheet" type = "text/css" href = "css/member.css">
<link rel = "stylesheet" type = "text/css" href = "css/check.css">
</head>
<body>
	<h2>닉네임 중복확인</h2>
	<form action="member.do?command=member_nick_check" method="post" name="frm">
		닉네임 <input type = "text" name="mem_nick" value="${mem_nick}"> 
			 <input type = "hidden" name = "script" value ="no">
			 <input type = "submit" value = "중복 체크" class = "sbm"><br><hr>
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.frm.mem_nick.value = "";
			</script>
			${mem_nick}는 이미 사용 중인 닉네임입니다.
		</c:if>
		<c:if test="${result==-1}">
		${mem_nick}는 사용 가능한 닉네임입니다.
		<input type="button" value="사용" class="cancel" onclick="nickok()">
		</c:if>
	</form>
</body>
</html>