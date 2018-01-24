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
						<form method = "post" action = "">
							
							<table>
								<tr class = "title">
									<td colspan = "2">
										
									</td>
								</tr>
								<tr class = "title">
									<td>
										제목
									</td>
									<td>
										<input type = "text">
									</td>
								</tr>
								<tr class = "title">
									<td>
										내용
									</td>
									<td>
										<textarea cols = "50" rows = "20"></textarea>
									</td>
								</tr>
							</table>
						</form>
					</div>
			</div>
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>