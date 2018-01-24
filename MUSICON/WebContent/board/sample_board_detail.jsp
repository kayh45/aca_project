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
						<p class = "big_detail"><a href ="board_review.html" class = "headlink">공연 리뷰</a></p>
						<table id = "detail">
							<tr class = "title">
								<td class = "number_detail">No.151</td>
								<td class = "subject_detail">안녕바다 연말 공연 리뷰</td>
								<td class = "theme_detail">콘서트</td>
							</tr>
							<tr class = "title">
								<td colspan = "3">
									<div class = "info">
										<img src = "img/abposter.jpg" width = "100px">
									</div>
									<div class = "info">
										<p>공연명: 안녕바다 연말공연 〈snow waltz〉</p>
										<p>장소: 홍대 롤링홀</p>
										<p>기간: 2017.12.10.</p>
										<p>출연: 안녕바다</p>
									</div>
									<div class = "info" id = "info_btn">
										<button class = "new_wdw" onclick="window.open('search/detailInfo.html')">새 창에서 보기</button>
									</div>
								</td>
							</tr>
							<tr class = "title">
								<td colspan = "3">
									<div class = "dtl_content">
										<img src = "img/abdetail01.jpg">
										<img src = "img/abdetail02.jpg">
										<p>주말에 공연 다녀왔어요</p>
										<p>너무 좋았습니다.</p>
									</div>
									<div class = "dtl_content" id = "btn_group">
										<button class = "btn_like"><span>♥</span> 좋아요</button>
										<div class = "div_like"><span>15</span></div>
										<button class = "btn_like">공유</button>
										<div class = "div_like">
											<img src = "img/twitter.png" width = "25px">
											<img src = "img/facebook.png" width = "25px">
											<img src = "img/rss.png" width = "25px">
										</div>
									</div>
								</td> 
							</tr>
							<tr class = "title">
								<td colspan = "3">
									<div class = "dtl_comment">
										<div class = "cmt_head">
											<div class = "left">qwer123</div>
											<div class = "right">2017-12-11 08:29</div>
											<div class = "right"><a href = "#" class = "rpt">신고</a></div>
											<div class = "right"><a href = "#" class = "rpl">답글</a></div>
										</div>
										<div class = "cmt_body">
											하얗게 흰 눈이 내리면 왠지 나의 세상도 하얀 도화지 되어 언젠가 또 다시 세상의 발자국이 어지럽힌데도 그리 두렵진 않아요
											또 흰 눈이 내려와 하얗게 내려오니까 난 그 위를 날아가 날아가 춤을 춘다 흰 눈이 내려와 하얗게 내려온다 난 그 위를 날아가 날아가 춤을 춘다
	
										</div>
									</div>
									<div class = "dtl_comment">
										<div class = "cmt_head">
											<div class = "left">zxc456</div>
											<div class = "right">2017-12-11 09:00</div>
											<div class = "right"><a href = "#" class = "rpt">신고</a></div>
											<div class = "right"><a href = "#" class = "rpl">답글</a></div>
										</div>
										<div class = "cmt_body">
											흰 눈이 내려온다
										</div>
									</div>
								</td>
							</tr>
							<tr class = "title" id = "cmt">
								<td colspan = "3">
									<div class = "cmt_write">
										<textarea class = "write_area" rows = "4"></textarea>
									</div>
									<div class = "cmt_submit">
										<button>작성</button>
									</div>
								</td>
							</tr>
						</table>
					</div>
			</div>
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>