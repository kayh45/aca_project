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
						<tr class = "notice">
							<td class = "no">-</td>
							<td class = "theme">
								<div class = "noti">공지</div>
							</td>
							<td class = "subject"><a href = "#">(필독)게시판 이용수칙</a></td>
							<td class = "name">운영자</td>
							<td class = "date">2017-12-05</td>
							<td class = "hit">1244</td>
							<td class = "like">123</td>
						</tr>
						<tr>
							<td class = "no">151</td>
							<td class = "theme">
								<div class = "concert">콘서트</div>
							</td>
							<td class = "subject"><a href = "board.do?command=b_detail">안녕바다 연말 공연 리뷰</a></td>
							<td class = "name">나무</td>
							<td class = "date">2017-12-31</td>
							<td class = "hit">185</td>
							<td class = "like">15</td>
						</tr>
						<tr>
							<td class = "no">148</td>
							<td class = "theme">
								<div class = "concert">콘서트</div>
							</td>
							<td class = "subject"><a href = "#">아이유 서울콘 갔다왔어요</a></td>
							<td class = "name">이지은</td>
							<td class = "date">2017-12-31</td>
							<td class = "hit">222</td>
							<td class = "like">22</td>
						</tr>
						<tr>
							<td class = "no">147</td>
							<td class = "theme">
								<div class = "concert">콘서트</div>
							</td>
							<td class = "subject"><a href = "#">MAMA 일본 직관 후기</a></td>
							<td class = "name">구름</td>
							<td class = "date">2017-12-31</td>
							<td class = "hit">157</td>
							<td class = "like">20</td>
						</tr>
						<tr>
							<td class = "no">145</td>
							<td class = "theme">
								<div class = "theatre">연극</div>
							</td>
							<td class = "subject"><a href = "#">연극 작업의 정석 솔직후기</a></td>
							<td class = "name">밀랍인형</td>
							<td class = "date">2017-12-31</td>
							<td class = "hit">111</td>
							<td class = "like">15</td>
						</tr>
						<tr>
							<td class = "no">141</td>
							<td class = "theme">
								<div class = "concert">콘서트</div>
							</td>
							<td class = "subject"><a href = "#">빅뱅 연말 콘서트 후기</a></td>
							<td class = "name">빅뱅좋아</td>
							<td class = "date">2017-12-31</td>
							<td class = "hit">550</td>
							<td class = "like">77</td>
						</tr>
						<tr>
							<td class = "no">140</td>
							<td class = "theme">
								<div class = "concert">콘서트</div>
							</td>
							<td class = "subject"><a href = "#">빅뱅 연말공연 초근접 리뷰</a></td>
							<td class = "name">가나다라마바사</td>
							<td class = "date">2017-12-31</td>
							<td class = "hit">453</td>
							<td class = "like">54</td>
						</tr>
						<tr>
							<td class = "no">138</td>
							<td class = "theme">
								<div class = "musical">뮤지컬</div>
							</td>
							<td class = "subject"><a href = "#">김종욱 찾기 뮤지컬 관람후기</a></td>
							<td class = "name">김종욱</td>
							<td class = "date">2017-12-31</td>
							<td class = "hit">177</td>
							<td class = "like">17</td>
						</tr>
						<tr>
							<td class = "no">137</td>
							<td class = "theme">
								<div class = "concert">콘서트</div>
							</td>
							<td class = "subject"><a href = "#">아이유 콘서트 리뷰</a></td>
							<td class = "name">길잃은강아지</td>
							<td class = "date">2017-12-31</td>
							<td class = "hit">109</td>
							<td class = "like">8</td>
						</tr>
						<tr>
							<td class = "no">135</td>
							<td class = "theme">
								<div class = "theatre">연극</div>
							</td>
							<td class = "subject"><a href = "#">옥탑방 고양이 적극 추천드립니다~*^^*</a></td>
							<td class = "name">옥냥이</td>
							<td class = "date">2017-12-30</td>
							<td class = "hit">35</td>
							<td class = "like">5</td>
						</tr>
						<tr>
							<td class = "no">128</td>
							<td class = "theme">
								<div class = "musical">뮤지컬</div>
							</td>
							<td class = "subject"><a href = "#">정말 감동적인 뮤지컬</a></td>
							<td class = "name">바람달</td>
							<td class = "date">2017-12-30</td>
							<td class = "hit">123</td>
							<td class = "like">23</td>
						</tr>
						<tr>
							<td class = "no">127</td>
							<td class = "theme">
								<div class = "theatre">연극</div>
							</td>
							<td class = "subject"><a href = "#">가족들이랑 재미있게 보고왔어요</a></td>
							<td class = "name">주영맘</td>
							<td class = "date">2017-12-30</td>
							<td class = "hit">230</td>
							<td class = "like">25</td>
						</tr>
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