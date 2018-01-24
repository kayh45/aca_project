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
		<!-- 헤더 시작 -->
		<header>
			<%@ include file = "../header.jsp" %>
		</header>
		<!-- 헤더 끝  -->
		<!-- 컨텐츠 시작  -->
		<div id = "content">
			<div class = "menubar">
				<ul>
					<li id = "title"><a href = "board.html">게시판목록</a></li>
					<li><a href = "#">자유게시판</a></li>
					<li><a href = "#">공연 리뷰</a></li>
					<li><a href = "#">정보 공유</a></li>
					<li><a href = "#">사진갤러리</a></li>
					<li><a href = "#">영상갤러리</a></li>
				</ul>
			</div>
				<div id = "rsbox">
					<p class = "big">공연 리뷰</p>
					<table>
						<tr class = "title">
							<td>No</td>
							<td>분류</td>
							<td>제목</td>
							<td>작성자</td>
							<td>작성일</td>
							<td><img src = "../img/view_icon.png" width = "13px"></td>
							<td><img src = "../img/heart_icon.png" width = "13px"></td>
						</tr>
					<c:foreach var = "board" items = "${boardList}">
						<tr class = "${board.brd_div}">
							<td class = "no">${board.brd_no}</td>
							<td class = "theme">
							<c:if test = "${board.pfm_div == '콘서트'}" >
							<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
								<div class = "concert">콘서트</div>
							</c:if>
							</td>
							<td class = "subject"><a href = "#">${board.brd_subject}</a></td>
							<td class = "name">${board.mem_nick}</td>
							<%-- ↑ 게시물테이블과 회원테이블을 조인하여 가져옴 --%>
							<td class = "date">${board.brd_date}</td>
							<td class = "hit">${board.brd_view}</td>
							<td class = "like">${board.brd_like}</td>
						</tr>
					</c:foreach>						
					</table>
					<div class = "pageno">
						<nav>
						  <ul class="pagination">
						    <li class = "disabled">
						      <a href="#" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
						    <li class = "active"><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li>
						      <a href="#" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
						  </ul>
						</nav>
						</div>
						<div class = "boardsearch">
							<select name="ddmenu">
							    <option value="1">제목으로 검색</option>
							    <option value="2">내용으로 검색</option>
							    <option value="3">제목+내용으로 검색</option>
							    <option value="4">작성자 이름으로 검색</option>
							</select>
							<input type = "text">
							<input type = "submit" value = "검색">
						</div>    		
				</div>
			</div>
		</div>

	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>