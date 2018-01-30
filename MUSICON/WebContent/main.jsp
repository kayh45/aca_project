<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
				<div class = "boxitem">				
				<c:choose>
				<c:when test = "${LoginUser==null}">
				<h4>로그인</h4>
				<hr class = "graybg">
				<form method = "post" action = "member.do?command=member_login">
				<table class = "logintable">
					<tr>
						<td class = "lbl">아이디</td>
						<td class = "inpt"><input type = "text" name = "mem_id"></td>				
					</tr>
					<tr>
						<td class = "lbl">비밀번호</td>
						<td class = "inpt"><input type = "password" name = "mem_pw"></td>				
					</tr>
					<tr>
						<td colspan = "2" class = "message">${message}</td>
					</tr>	
					<tr>
						<td class = "btn_grp" colspan = "2">
						<input type = "submit" value = "로그인">
						<input type = "button" value = "회원가입" onclick = "location.href='board.do?command=member_join_form'">
						</td>			
					</tr>
																	
				</table>
				</form>	
				</c:when>
				<c:when test = "${LoginUser.mem_auth==1}">
					<h4>WELCOME</h4>
					<hr class = "graybg">
					<table class = "logintable">					
					<tr>
						<td class = "memdiv">관리자</td>				
						<td/>						
					</tr>
					<tr>
						<td class = "reception">${LoginUser.mem_nick}(${LoginUser.mem_id})님 반갑습니다.</td>
						<td/>		
					</tr>
					<tr>
						<td class = "btn_grp">
						<input id = "logout" type = "button" value = "로그아웃" onclick = "location.href = 'member.do?command=member_logout'">
						<input type = "button" value = "내 정보보기" onclick = "location.href = 'member.do?command=member_info'">
						<input type = "button" value = "회원관리" onclick = "location.href = 'member.do?command=member_list'"></td>
						<td/>				
					</tr>													
				</table>
				</c:when>
				<c:otherwise>
					<h4>WELCOME</h4>
					<hr class = "graybg">
					<table class = "logintable">
					<tr>
						<td class = "memdiv">일반회원</td>				
						<td></td>				
					</tr>
					<tr>
						<td class = "reception">${LoginUser.mem_nick}(${LoginUser.mem_id})님 반갑습니다.</td>
						<td></td>				
					</tr>
					<tr>
						<td class = "btn_grp">
						<input id = "logout" type = "button" value = "로그아웃" onclick = "location.href = 'member.do?command=member_logout'">
						<input type = "button" value = "내 정보보기" onclick = "location.href = 'member.do?command=member_info'"></td>
						<td/>				
					</tr>													
				</table>
				</c:otherwise>
				</c:choose>
				
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
							<a href = "board.do">TOP 5 게시물</a>
						</div>
						<div class = "mid">
							<ul id = "posted">
							<c:forEach var = "topList" items = "${topList}">
								<li><div class = "icon_grp">
								<div class = "oneline" id = "halfsub">
									<a href = "board.do?command=board_view&boardType=${topList.brd_div}&brd_no=${topList.brd_no}">${topList.brd_subject}</a>
									</div>
									
									<div class="view">
										<img src="img/view_icon.png" width="13px"><div class = "digit">${topList.brd_view}</div>
									</div>
									<div class="like">
										<img src="img/heart_icon.png" width="13px"><div class = "digit">${topList.brd_like}</div>
									</div>
									</div>
								</li>
								</c:forEach>
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