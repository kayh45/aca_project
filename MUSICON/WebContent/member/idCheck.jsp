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
	<h2>아이디 중복확인</h2>
	<form action="member.do?command=member_id_check" method="post" name="frm">
		아이디 <input type = "text" name="mem_id" value="${mem_id}"> 
			 <input type = "submit" value = "중복 체크" class = "sbm"><br><hr>
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.frm.mem_id.value = "";
			</script>
			${mem_id}는 이미 사용 중인 아이디입니다.
		</c:if>
		<c:if test="${result==-1}">
		${mem_id}는 사용 가능한 아이디입니다.
		<input type="button" value="사용" class="cancel" onclick="idok()">
		</c:if>
	</form>
</body>
</html>