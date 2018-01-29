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
			<div class="boardbox">
				<table>
					<tr>
						<td colspan="2">
							<div class="box" id=bestpic>
								<p>Best Picture</p>
								<div class="group">
								<c:forEach var="photoList" items="${photoList}">
									<div class="picbox">
										<ul>
											<li><a href="board.do?command=board_view&boardType=photo&brd_no=${photoList.brd_no}"><img src="${photoList.brd_pic}" width="170px" height="130px"></a></li>
											<li class="pic_title">
												<div class = "oneline" id = "minisub">
												<a href="board.do?command=board_view&boardType=photo&brd_no=${photoList.brd_no}">${photoList.brd_subject}</a>
												</div>
												<div class="view">
													<img src="img/view_icon.png" width="13px">${photoList.brd_view}
												</div>
												<div class="like">
													<img src="img/heart_icon.png" width="13px">${photoList.brd_like}
												</div>
											</li>
										</ul>
									</div>
									</c:forEach>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="box" id=bestrv>
								<p>Best Review</p>
								<div class="sm_content">
									<ul>
									<c:forEach var="reviewList" items="${reviewList}">
										<li>
											<div class="subject">
											<div class = "oneline" id = "halfsub">
												<a href="board.do?command=board_view&boardType=review&brd_no=${reviewList.brd_no}">${reviewList.brd_subject}</a>
											</div>
											</div>
											<div class="like">
												<img src="img/view_icon.png" width="13px">${reviewList.brd_view}
											</div>
											<div class="like">
												<img src="img/heart_icon.png" width="13px">${reviewList.brd_like}
											</div>
											<br>
										</li>
									</c:forEach>
									</ul>
								</div>
							</div>
						</td>
						<td>
							<div class="box" id=bestsh>
								<p>Best Share</p>
								<div class="sm_content">
									<ul>
									<c:forEach var="shareList" items="${shareList}">
										<li>
											<div class="subject">
											<div class = "oneline" id = "halfsub">
												<a href="board.do?command=board_view&boardType=share&brd_no=${shareList.brd_no}">${shareList.brd_subject}</a>
											</div>
											</div>
											<div class="like">
												<img src="img/view_icon.png" width="13px">${shareList.brd_view}
											</div>
											<div class="like">
												<img src="img/heart_icon.png" width="13px">${shareList.brd_like}
											</div>
											<br>
										</li>
									</c:forEach>
									</ul>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div class="box" id=bestvd>
								<p>Best Video</p>
								<c:forEach var="videoList" items="${videoList}">
								<div class="vdbox">
									<ul>
										<li>
											<iframe width="250" height="150" src="https://www.youtube.com/embed/${videoList.brd_vid}" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen>
											</iframe>
										</li>
										<li class="pic_title">
										<a href="board.do?command=board_view&boardType=video&brd_no=${videoList.brd_no}">${videoList.brd_subject}
										</a><br>
											<div class="like">
												<img src="img/view_icon.png" width="13px">${videoList.brd_view}
											</div>
											<div class="like">
												<img src="img/heart_icon.png" width="13px">${videoList.brd_like}
											</div>
										</li>
									</ul>
								</div>
								</c:forEach>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div id="recentbox" class="box">
								<p>Recent</p>
								<table>
									<tr class="title">
										<td>게시판</td>
										<td>제목</td>
										<td>작성자</td>
										<td><img src="img/view_icon.png" width="13px"></td>
										<td><img src="img/heart_icon.png" width="13px"></td>
									</tr>
								<c:forEach var="recentList" items="${recentList}">
									<tr>
										<td class="theme">
											<div class="common_theme">${recentList.brd_div}</div>
										</td>
										<td class="subject">
										<div class = "oneline" id = "recentsub">
											<a href="board.do?command=board_view&boardType=${recentList.brd_div}&brd_no=${recentList.brd_no}">${recentList.brd_subject}</a>
										</div>
										</td>
										<td class="name">${recentList.mem_nick}</td>
										<td class="hit">${recentList.brd_view}</td>
										<td class="hit">${recentList.brd_like}</td>
									</tr>
								</c:forEach>
								</table>
							</div>
						</td>
					</tr>
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
