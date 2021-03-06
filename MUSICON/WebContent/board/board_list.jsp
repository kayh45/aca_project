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
<title>MUSICON :: 게시판</title>
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
			<div class = "menubar">
				<%@ include file = "board_menu.jsp" %>
			</div>
				<div id = "rsbox">
					<c:choose>
						<c:when test = "${boardType eq 'free'}">
							<p class = "big">자유게시판</p>
						</c:when>
						<c:when test = "${boardType eq 'review'}">
							<p class = "big">공연 리뷰</p>
						</c:when>
						<c:when test = "${boardType eq 'share'}">
							<p class = "big">정보 공유</p>
						</c:when>
						<c:when test = "${boardType eq 'photo'}">
							<p class = "big">사진갤러리</p>
						</c:when>
						<c:when test = "${boardType eq 'video'}">
							<p class = "big">영상갤러리</p>
						</c:when>
					</c:choose>					
					<table>
						<tr class = "title">
							<td>No</td>
							<c:if test = "${boardType eq 'review'}">
							<td>분류</td>
							</c:if>
							<td>제목</td>
							<td>작성자</td>
							<td>작성일</td>
							<td><img src = "img/view_icon.png" width = "13px"></td>
							<td><img src = "img/heart_icon.png" width = "13px"></td>
						</tr>
					<c:forEach var = "board" items = "${boardList}">
						<tr class = "${board.brd_div}" id = "items">
							<td class = "no">${board.brd_no}</td>
							<c:if test = "${boardType eq 'review'}">
							<td class = "theme">
							<c:choose>
							<c:when  test = "${board.pfm_div == '콘서트'}">
							<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
								<div class = "concert">콘서트</div>
							</c:when>
							<c:when  test = "${board.pfm_div == '국악'}">
							<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
								<div class = "korean">국악</div>
							</c:when>
							<c:when  test = "${board.pfm_div == '뮤지컬'}">
							<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
								<div class = "musical">뮤지컬</div>
							</c:when>
							<c:when  test = "${board.pfm_div == '연극'}">
							<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
								<div class = "theatre">연극</div>
							</c:when>
							<c:when  test = "${board.pfm_div == '클래식'}">
							<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
								<div class = "classic">클래식</div>
							</c:when>
							<c:when  test = "${board.pfm_div == '무용'}">
							<%-- ↑ 게시물테이블과 공연테이블을 조인하여 가져옴 --%>
								<div class = "dance">무용</div>
							</c:when>
							</c:choose>
							</td>
							</c:if>
							<td class = "subject" id ="boardlist">
							<div class = "oneline">
								<a href = "board.do?command=board_view&boardType=${boardType}&brd_no=${board.brd_no}">
								${board.brd_subject}
								</a>
							</div>
							</td>
							
							<td class = "name"><div class = "oneline" id = "nick">${board.mem_nick}</div></td>
							<%-- ↑ 게시물테이블과 회원테이블을 조인하여 가져옴 --%>
							<td class = "date">${board.brd_date}</td>
							<td class = "hit">${board.brd_view}</td>
							<td class = "likes">${board.brd_like}</td>
						</tr>
					</c:forEach>						
					</table>
					<div id = "wrt_btns">
						<c:choose>
							<c:when test = "${LoginUser != null and boardType != 'review'}">
							<form method = "post" action = "board.do">
							<input type = "hidden" name = "command" value = "board_write_form">
							<input type = "hidden" name = "boardType" value = "${boardType}">
							<input type = "submit" value = "글쓰기">
							</form>
							</c:when>
							<c:when test = "${boardType eq 'review'}">
								<input type = "button" onclick = "window.open('perform.do')" value = "공연검색">								
							</c:when>
						</c:choose>
					</div>
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
						<form method = "post" action = "board.do">
							<input type = "hidden" name = "command" value = "board_list_search"> 
							<input type = "hidden" name = "boardType" value = "${boardType}"> 
							<input type = "text" name = "search">
							<input type = "submit" value = "검색">
						</form>
						</div>    		
				</div>
			</div>
		</div>

	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>