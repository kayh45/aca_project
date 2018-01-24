<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "stylesheet" type = "text/css" href = "../css/common.css">
<link rel = "stylesheet" type = "text/css" href = "../css/board.css">
<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/board.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<title>Musicon :: 게시판</title>
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
				<ul>
					<li id = "title"><a href = "board.html">게시판목록</a></li>
					<li><a href = "#">자유게시판</a></li>
					<li><a href = "board.do?command=b_review">공연 리뷰</a></li>
					<li><a href = "#">정보 공유</a></li>
					<li><a href = "#">사진갤러리</a></li>
					<li><a href = "#">영상갤러리</a></li>
				</ul>
			</div>
				<div class = "boardbox">
					<table>
						<tr><td colspan = "2">
							<div class = "box" id = bestpic>
								<p>Best Picture</p>
									<div class = "group">
									<div class = "picbox">
										<ul>
											<li><a href = "#"><img src = "img/bts_pic.jpg" width = "180px" height = "118px"></a></li>
											<li class = "pic_title">
												<a href = "#">방탄소년단 콘서트 다녀왔어요</a><br>												
												<div class = "view"><img src = "img/view_icon.png" width = "13px">185</div>
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">3</div>
												<div class = "like"><img src = "img/heart_icon.png" width = "13px">20</div>
											</li>
										</ul>	
									</div>
									<div class = "picbox">
										<ul>
											<li><a href = "#"><img src = "img/msc_pic.jpg" width = "180px" height = "118px"></a></li>
											<li class = "pic_title">
												<a href = "#">뮤지컬 '에드거 앨런 포의 삶'</a><br>												
												<div class = "view"><img src = "img/view_icon.png" width = "13px">117</div>
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">5</div>
												<div class = "like"><img src = "img/heart_icon.png" width = "13px">13</div>
											</li>
										</ul>
									</div>
									<div class = "picbox">
										<ul>
											<li><a href = "#"><img src = "img/iu_pic.jpg" width = "180px" height = "118px"></a></li>
											<li class = "pic_title">
												<a href = "#">아이유 무대 사진</a><br>												
												<div class = "view"><img src = "img/view_icon.png" width = "13px">130</div>
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">12</div>
												<div class = "like"><img src = "img/heart_icon.png" width = "13px">11</div>
											</li>
										</ul>
									</div>
									</div>
							</div>
						</td></tr>
						<tr>
							<td>
								<div class = "box" id = bestrv>
									<p>Best Review</p>
									<div class = "sm_content">
										<ul>
											<li>
												<div class = "subject">
													<a href = "board_detail.html">[콘서트] 안녕바다 연말 공연 리뷰</a>
												</div>																								
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">11</div>
												<div class = "like">							
													<img src = "img/heart_icon.png" width = "13px">251
												</div><br>
											</li>
											<li>
												<div class = "subject">
													<a href = "#">[뮤지컬] 김종욱 찾기 보고왔습니다</a>
												</div>																								
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">14</div>
												<div class = "like">							
													<img src = "img/heart_icon.png" width = "13px">172
												</div><br>
											</li>
											<li>
												<div class = "subject">
													<a href = "#">[콘서트] BTS 파이널콘서트 리뷰</a>
												</div>																								
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">23</div>
												<div class = "like">							
													<img src = "img/heart_icon.png" width = "13px">151
												</div><br>
											</li>
											<li>
												<div class = "subject">
													<a href = "#">[콘서트] 방탄소년단 콘서트 플로어.. </a>
												</div>																								
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">28</div>
												<div class = "like">							
													<img src = "img/heart_icon.png" width = "13px">143
												</div><br>											
											</li>
										</ul>
									</div>
								</div>
							</td>
							<td>
								<div class = "box" id = bestsh>
									<p>Best Share</p>
									<div class = "sm_content">
										<ul>
											<li>
												<div class = "subject">
													<a href = "#">11월부터 뮤지컬 시스터액트 내한..</a>
												</div>																								
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">8</div>
												<div class = "like">							
													<img src = "img/heart_icon.png" width = "13px">121
												</div><br>
											</li>
											<li>
												<div class = "subject">
													<a href = "#">티켓팅할 때 꿀팁 몇 가지</a>
												</div>																								
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">7</div>
												<div class = "like">							
													<img src = "img/heart_icon.png" width = "13px">110
												</div><br>
											</li>
											<li>
												<div class = "subject">
													<a href = "#">연말 국내 콘서트 일정 정리</a>
												</div>																								
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">6</div>
												<div class = "like">							
													<img src = "img/heart_icon.png" width = "13px">108
												</div><br>
											</li>
											<li>
												<div class = "subject">
													<a href = "#">야외공연 볼 때 필수 팁!!</a>
												</div>																								
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">5</div>
												<div class = "like">							
													<img src = "img/heart_icon.png" width = "13px">101
												</div><br>											
											</li>
										</ul>
									</div>
								</div>
							</td>
						</tr>
						<tr><td colspan = "2">
							<div class = "box" id = bestvd>
								<p>Best Video</p>
								<div class = "vdbox">
										<ul>
											<li><iframe width="250" height="150" src="https://www.youtube.com/embed/f9uWb0_aoaQ" frameborder="0" 
												gesture="media" allow="encrypted-media" allowfullscreen></iframe></li>
											<li class = "pic_title">
												<a href = "#">[LAST DANCE in Fukuoka] GD - 슈퍼스타  </a><br>												
												<div class = "view"><img src = "img/view_icon.png" width = "13px">177</div>
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">9</div>
												<div class = "like"><img src = "img/heart_icon.png" width = "13px">58</div>
											</li>
										</ul>	
								</div>
								<div class = "vdbox">
										<ul>
											<li><iframe width="250" height="150" src="https://www.youtube.com/embed/i2xetg-4Xxw" frameborder="0" 
												gesture="media" allow="encrypted-media" allowfullscreen></iframe></li>
											<li class = "pic_title">
												<a href = "#">[올댓뮤직] 자우림 - 슬픔이여 이제 안녕</a><br>												
												<div class = "view"><img src = "img/view_icon.png" width = "13px">122</div>
												<div class = "comment"><img src = "img/comment_icon.png" width = "13px">8</div>
												<div class = "like"><img src = "img/heart_icon.png" width = "13px">25</div>
											</li>
										</ul>	
								</div>
							</div>
						</td></tr>
						<tr><td colspan = "2">
							<div id = "recentbox" class = "box">
								<p>Recent</p>
							<table>
						<tr class = "title">
							<td>게시판</td>
							<td>제목</td>
							<td>작성자</td>
							<td><img src = "img/view_icon.png" width = "13px"></td>
							<td><img src = "img/heart_icon.png" width = "13px"></td>
						</tr>
						<tr class = "notice">
							<td class = "theme">
								<div class = "noti">공지</div>
							</td>
							<td class = "subject"><a href = "#">(필독)게시판 이용수칙</a></td>
							<td class = "name">운영자</td>
							<td class = "hit">1244</td>
							<td class = "like">123</td>
						</tr>
						<tr>
							<td class = "theme">
								<div class = "common_theme">리뷰</div>
							</td>
							<td class = "subject"><a href = "board_detail.html">안녕바다 연말 공연 리뷰</a></td>
							<td class = "name">나무</td>
							<td class = "hit">157</td>
							<td class = "like">20</td>
						</tr>
						<tr>
							<td class = "theme">
								<div class = "common_theme">자유</div>
							</td>
							<td class = "subject"><a href = "#">밤이 되면 TV가 내 유일한 친구고</a></td>
							<td class = "name">김윤아</td>
							<td class = "hit">157</td>
							<td class = "like">20</td>
						</tr>
						<tr>
							<td class = "theme">
								<div class = "common_theme">공유</div>
							</td>
							<td class = "subject"><a href = "#">늘 좋을 줄 만 알았던 너와의 기억</a></td>
							<td class = "name">우아아앙</td>
							<td class = "hit">157</td>
							<td class = "like">20</td>
						</tr>
						<tr>
							<td class = "theme">
								<div class = "common_theme">사진</div>
							</td>
							<td class = "subject"><a href = "#">풀리지 않던 오해 및 상처만 남아</a></td>
							<td class = "name">크아앙</td>
							<td class = "hit">157</td>
							<td class = "like">20</td>
						</tr>
						<tr>
							<td class = "theme">
								<div class = "common_theme">자유</div>
							</td>
							<td class = "subject"><a href = "#">Maybe i'm missing you</a></td>
							<td class = "name">으으으으</td>
							<td class = "hit">157</td>
							<td class = "like">20</td>
						</tr>
					</table>
					</div>
										
						</td></tr>
					</table>
				</div>
			</div>
		</div>
		
		<!-- 컨텐츠 끝  -->
	
	<!-- 푸터 시작 -->
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
<!-- 푸터 끝  -->
</body>
</html>