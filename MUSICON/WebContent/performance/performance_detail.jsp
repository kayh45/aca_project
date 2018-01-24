<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "css/detailInfo.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<div class = "bgdiv">
		<header>
		<%@ include file = "../header.jsp" %>
		</header>
		<!-- 컨텐츠 시작  -->
		<div id = "content">
			<div class = "result">
				<div class = "top_title">"안녕바다 연말공연 〈snow waltz〉" 공연 상세정보</div>
				<div id = "dtlbox">
					<div class = "top_body">
						<div class = "body_poster">
							<img src = "img/abposterbig.PNG" width = "200px">
							<div id = "btn_group">
							<button class = "btn_like">공유</button>
									<div class = "div_like">
										<img src = "img/twitter.png" width = "25px">
										<img src = "img/facebook.png" width = "25px">
										<img src = "img/rss.png" width = "25px">
									</div>
						</div>
						</div>
						<div class = "body_info">
							<p class = "body_title">안녕바다 연말공연 〈snow waltz〉</p>
							<table class = "body_table">
								<tr>
									<th><span>장르</span></th>
									<td>콘서트</td>
								</tr>
								<tr>
									<th><span>장소</span></th>
									<td>홍대 롤링홀</td>
								</tr>
								<tr>
									<th><span>기간</span></th>
									<td>2017-12-10</td>
								</tr>
								<tr>
									<th><span>출연</span></th>
									<td>안녕바다</td>
								</tr>
								<tr>
									<th><span>관람시간</span></th>
									<td>17:00</td>
								</tr>
							</table>
						</div>
					</div>
					<div class = "yeme">예매 링크: <a href = "#">인터파크</a> / <a href = "#">yes24</a></div>
					<div class = "middle_body">
						<div class = "innertitle"><span>상세 정보</span></div>
						<img src = "img/abinfo.jpg" width = "580px">
					</div>
					<div class = "bottom_body">
						<div class = "innertitle"><span>추천 공연</span></div>
						<img src = "img/gbposter.png">
						<img src = "img/gkposter.png">
						<img src = "img/bsposter.png">
					</div>
				</div> <!-- dtlbox -->
			</div> <!-- result -->
		</div>
		</div>
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>