<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<ul>
		<li id = "title"><a href = "board.do">게시판메인</a></li>
		<li><a href = "board.do?command=board_list&boardType=free">자유게시판</a></li>
		<li><a href = "board.do?command=board_list&boardType=review">공연 리뷰</a></li>
		<li><a href = "board.do?command=board_list&boardType=share"">정보 공유</a></li>
		<li><a href = "board.do?command=board_list&boardType=photo">사진갤러리</a></li>
		<li><a href = "board.do?command=board_list&boardType=video">영상갤러리</a></li>
	</ul>

</body>
</html>