<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/main.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="source/responsiveslides.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Musicon :: 공연정보커뮤니티</title>
</head>
<body>
	<div class = "bgdiv">
	<header>
		<!-- 헤더 시작 -->
			<%@ include file = "header.jsp" %>
		<!-- 헤더 끝  -->
	</header>
		<!-- 컨텐츠 시작  -->
		<div id = "content_main">
			<div class = "banner">
				<ul class="rslides">
				  <li><img src="img/logo_banner.jpg" alt=""></li>
				  <li><img src="img/art_banner.jpg" alt=""></li>
				  <li><img src="img/chr_banner.jpg" alt=""></li>
				</ul>
				<script>
				  $(function() {
				    $(".rslides").responsiveSlides({   
				    });
				  });
				</script>
			</div>
			<div class = "maincont">
				<div id = "best_con" class = "boxitem">
					<p class = "t_title">
						<img src = "img/crown.png" width = "20px" height = "20px" class = "t_img">
						BEST 공연
					</p>
					<table>
						<tr>
						<td>
						<div class = "tick_img" style = "background-image : url('img/ticket_bb.png');">
							<div class = "img_info">★ BIGBANG</div>				
						</div>
						</td>
						<td>
						<div class = "tick_txt" style = "background-image : url('img/ticket_r.png');">
							<p class = "txt_info"><b>빅뱅 연말 콘서트</b></p>
							<a href = "#">
							<img src = "img/more.png" width = "100px" class = "moreimg">
							</a>
							<p class = "txt_bottom">이 공연의 좋아요 개수: 123개</p>	
						</div>
						</td>
						</tr>
					</table>
						<p class = "t_title">
						<img src = "img/reco.png" width = "23px" height = "20px" class = "t_img">
						추천 공연
					</p>
					<table>
						<tr>
						<td>
						<div class = "tick_img" style = "background-image : url('img/ticket_ab.png');">
							<div class = "img_info">★ INDIE</div>				
						</div>
						</td>
						<td>
						<div class = "tick_txt" style = "background-image : url('img/ticket_r.png');">
							<p class = "txt_info"><b>안녕바다 연말 공연</b></p>
							<a href = "search/detailInfo.html">
							<img src = "img/more.png" width = "100px" class = "moreimg">
							</a>
							<p class = "txt_bottom">회원님의 관심사: 안녕바다</p>	
						</div>
						</td>
						</tr>
					</table>
				</div>
				<div id = "notice">
					<div id = "topbox" class = "inner">
						<div class = "top">
							<a href = #>공지사항</a>
						</div>
						<div class = "mid">
							<ul class = "posted">
								<li>
									<a href = '#'>[이벤트] 콘서트 &lt;자우림 연말 [XX]&gt; 당첨자 발표</a>
								</li>
								<li>
									<a href = '#'>[이벤트] 콘서트 &lt;변진섭 군산 콘서트&gt; 티켓 공동 ..</a>
								</li>
								<li>
									<a href = '#'>[이벤트] 뮤지컬 &lt;햄릿:얼라이브&gt; 3차 티켓오픈 ..</a>
								</li>
								<li>
									<a href = '#'>[공지] 개인정보 수집 및 이용에 대한 안내</a>
								</li>
								<li>
									<a href = '#'>[공지] 티켓 공동구매에 대한 안내</a>
								</li>
							</ul>
						</div>
						<div class = "bot">
						</div>
					</div>
					<div id = "bottombox" class = "inner">
						<div class = "top">
						<!-- 나중에 게시판으로 가는 링크 추가 -->
							<a href = "board/board.html">베스트 게시물</a>
						</div>
						<div class = "mid">
							<ul class = "posted">
								<li>
									<a href = "board/board_detail.html">안녕바다 연말 공연 리뷰</a>
								</li>
								<li>
									<a href = '#'>워너원 콘서트 후기</a>
								</li>
								<li>
									<a href = '#'>가족들이랑 재미있게 보고왔어요</a>
								</li>
								<li>
									<a href = '#'>빅뱅 태양♥민효린 내년 2월 결혼</a>
								</li>
								<li>
									<a href = '#'>티켓 예매 잘 하는 방법</a>
								</li>
							</ul>
						</div>
						<div class = "bot">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 컨텐츠 끝  -->
	</div>
	<footer>
		<!-- 푸터 시작 -->
		<%@ include file = "footer.jsp" %>
		<!-- 푸터 끝  -->
	</footer>

</body>
</html>