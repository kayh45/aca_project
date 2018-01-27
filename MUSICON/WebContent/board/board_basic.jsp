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
					<%@ include file = "board_menu.jsp" %>
				</div>
					<div id = "rsbox">
						
					</div>
			</div>
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>