<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/search.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			<form>
		 	<div id = "checkbar">
		 		<input type = "radio" name = "genre" id = "tab-gn-1" checked>
				<label for = "tab-gn-1">전체</label>
				<input type = "radio" name = "genre" id = "tab-gn-2">
				<label for = "tab-gn-2">콘서트</label>
				<input type = "radio" name = "genre" id = "tab-gn-3">
				<label for = "tab-gn-3">뮤지컬</label>
				<input type = "radio" name = "genre" id = "tab-gn-4">
				<label for = "tab-gn-4">클래식</label>
				<input type = "radio" name = "genre" id = "tab-gn-5">
				<label for = "tab-gn-5">국악</label>
				<input type = "radio" name = "genre" id = "tab-gn-6">
				<label for = "tab-gn-6">연극</label>
			</div> 
			<div id = "keywordbar">
				<table>
					<tr>
					<td class = "kwtitle">인기 키워드</td>
					<td class = "kwcontent">
					<div class = "chkgroup">
						<input type = "checkbox" name = "topkw" id = "top-kw-1">
						<label for = "top-kw-1">연말</label>
						<input type = "checkbox" name = "topkw" id = "top-kw-2">
						<label for = "top-kw-2">빅뱅</label>
						<input type = "checkbox" name = "topkw" id = "top-kw-3">
						<label for = "top-kw-3">NELL</label>
						<input type = "checkbox" name = "topkw" id = "top-kw-4">
						<label for = "top-kw-4">워너원</label>
						<input type = "checkbox" name = "topkw" id = "top-kw-5">
						<label for = "top-kw-5">크리스마스</label>
						<input type = "checkbox" name = "topkw" id = "top-kw-6">
						<label for = "top-kw-6">싸이</label>
						<input type = "checkbox" name = "topkw" id = "top-kw-7">
						<label for = "top-kw-7">비투비</label><br>
						<input type = "checkbox" name = "topkw" id = "top-kw-8">
						<label for = "top-kw-8">내한공연</label>
						<input type = "checkbox" name = "topkw" id = "top-kw-9">
						<label for = "top-kw-9">컬투</label>
						<input type = "checkbox" name = "topkw" id = "top-kw-10">
						<label for = "top-kw-10">다비치</label>
					</div>
					</td>
					</tr>
					<tr>
					<td class = "kwtitle">장르</td>
					<td class = "kwcontent">						
						<input type = "checkbox" name = "genrekw" id = "genre-kw-1">
						<label for = "genre-kw-1">발라드</label>
						<input type = "checkbox" name = "genrekw" id = "genre-kw-2">
						<label for = "genre-kw-2">락/메탈</label>
						<input type = "checkbox" name = "genrekw" id = "genre-kw-3">
						<label for = "genre-kw-3">랩/힙합</label>
						<input type = "checkbox" name = "genrekw" id = "genre-kw-4">
						<label for = "genre-kw-4">재즈/소울</label>
						<input type = "checkbox" name = "genrekw" id = "genre-kw-5">
						<label for = "genre-kw-5">인디</label><br>
						<input type = "checkbox" name = "genrekw" id = "genre-kw-6">
						<label for = "genre-kw-6">토크</label>
						<input type = "checkbox" name = "genrekw" id = "genre-kw-7">
						<label for = "genre-kw-7">페스티벌</label>
						<input type = "checkbox" name = "genrekw" id = "genre-kw-8">
						<label for = "genre-kw-8">디너쇼</label>
						
					</td>
					</tr>
					<tr>
					<td class = "kwtitle">지역</td>
					<td class = "kwcontent">
						<input type = "checkbox" name = "locationkw" id = "location-kw-1">
						<label for = "location-kw-1">서울</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-2">
						<label for = "location-kw-2">경기/인천</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-3">
						<label for = "location-kw-3">울산/경남</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-4">
						<label for = "location-kw-4">광주/전남</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-5">
						<label for = "location-kw-5">대전/충남</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-6">
						<label for = "location-kw-6">부산</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-7">
						<label for = "location-kw-7">전북</label><br>
						<input type = "checkbox" name = "locationkw" id = "location-kw-8">
						<label for = "location-kw-8">강원</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-9">
						<label for = "location-kw-9">충북</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-10">
						<label for = "location-kw-10">제주</label>
						<input type = "checkbox" name = "locationkw" id = "location-kw-11">
						<label for = "location-kw-11">경북</label>
					</td>
					</tr>
					<tr>
					<td class = "kwtitle">기타</td>
					<td class = "kwcontent">
						<input type = "checkbox" name = "etckw" id = "etc-kw-1">
						<label for = "etc-kw-1">스탠딩</label>
						<input type = "checkbox" name = "etckw" id = "etc-kw-2">
						<label for = "etc-kw-2">좌석</label>
					</td>
					</tr>
				</table>
			</div>
				<div id = "searchbar">
				<input type = "text" id = "txt_sc">
				<input type = "image" id = "btn_sc" src = "img/scbtn.png" width = "25px">
			</div>
			</form>
			<div class = "result">
				<div class = "option">
					<a href ="#">지난공연포함</a> | 
					<a href ="#">1주 이내</a> | 
					<a href ="#">1달 이내</a>
				</div>
				<div id = "rsbox">
					<table>
						<tr class = "title">
							<td>카테고리</td>
							<td>사진</td>
							<td>제목</td>
							<td>장소</td>
							<td>기간</td>
						</tr>
						<tr>
							<td class = "category">콘서트/인디/서울</td>
							<td class = "picture"><img src = "img/abposter.jpg"></td>
							<td class = "subject"><a href = "perform.do?command=p_detail">안녕바다 연말 공연 〈snow waltz〉</a></td>
							<td class = "location">홍대 롤링홀</td>
							<td class = "date">2017.12.30 ~ 2017.12.31</td>
						</tr>
						<tr>
							<td class = "category">콘서트/BTS/서울</td>
							<td class = "picture"><img src = "img/btsposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">방탄소년단 연말 콘서트</a></td>
							<td class = "location">고척 스카이돔</td>
							<td class = "date">2018.01.13 ~ 2018.01.14</td>
						</tr>
						<tr>
							<td class = "category">콘서트/발라드</td>
							<td class = "picture"><img src = "img/pjhposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">박정현 연말 콘서트〈LET IT SNOW〉</a></td>
							<td class = "location">올림픽핸드볼장</td>
							<td class = "date">2017.12.22 ~ 2017.12.25</td>
						</tr>
						<tr>
							<td class = "category">콘서트/인디/서울</td>
							<td class = "picture"><img src = "img/gkposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">국카스텐 연말 투어［HAPPENING］</a></td>
							<td class = "location">잠실실내체육관</td>
							<td class = "date">2017.12.24 ~ 2017.12.25</td>
						</tr>
						<tr>
							<td class = "category">연극/창작/서울</td>
							<td class = "picture"><img src = "img/oktposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">6년 연속 1위 연극〈옥탑방고양이〉</a></td>
							<td class = "location">탄탄홀</td>
							<td class = "date">2017.10.30 ~ 2017.12.28</td>
						</tr>
						<tr>
							<td class = "category">콘서트/빅뱅/서울</td>
							<td class = "picture"><img src = "img/bbposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">빅뱅 연말 콘서트</a></td>
							<td class = "location">고척 스카이돔</td>
							<td class = "date">2017.12.30 ~ 2017.12.31</td>
						</tr>
						<tr>
							<td class = "category">뮤지컬/내한/서울</td>
							<td class = "picture"><img src = "img/ctsposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">캣츠 내한공연 앙코르</a></td>
							<td class = "location">세종문화회관대극장</td>
							<td class = "date">2017.12.30 ~ 2017.12.31</td>
						</tr>
						<tr>
							<td class = "category">콘서트/연말/서울</td>
							<td class = "picture"><img src = "img/kywposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">김연우 연말 콘서트 〈오마이갓연우〉</a></td>
							<td class = "location">올림픽공원홀</td>
							<td class = "date">2017.12.22 ~ 2017.12.25</td>
						</tr>
						<tr>
							<td class = "category">콘서트/이적/서울</td>
							<td class = "picture"><img src = "img/ljposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">이적 콘서트 〈멋진 겨울날〉</a></td>
							<td class = "location">코엑스 Hall D</td>
							<td class = "date">2017.12.30 ~ 2017.12.31</td>
						</tr>
						<tr>
							<td class = "category">콘서트/토크/서울</td>
							<td class = "picture"><img src = "img/kjdposter.jpg"></td>
							<td class = "subject"><a href = "detailInfo.html">김제동 토크콘서트 노브레이크 시즌8</a></td>
							<td class = "location">고척 스카이돔</td>
							<td class = "date">2018.01.04 ~ 2018.02.04</td>
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
				</div>
			</div> <!-- rsbox  -->
		</div>
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>