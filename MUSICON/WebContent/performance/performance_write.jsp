<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "../css/common.css">
<link rel = "stylesheet" type = "text/css" href = "../css/search.css">
<link rel = "stylesheet" type = "text/css" href = "../css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "../css/member.css">

<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/search.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<link rel = "stylesheet" type = "text/css" href = "css/member.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Musicon :: 공연 등록</title>
</head>
<body>
	<c:if test = "${LoginUser.mem_auth != 1}">
	<% 
	response.sendRedirect("errorpage"); 	
	%>
	</c:if>
	<div class = "bgdiv">
		<!-- 헤더 시작 -->
		<header>
			<%@ include file = "../header.jsp" %>
		</header>
		<!-- 헤더 끝  -->
		<!-- 컨텐츠 시작  -->
		<div id = "content">
			<div class = "join_form">
			<h2 id = "top_sub">공연등록</h2>
			<hr>
			<form method = "post" action = "perform.do" name = "frm">
			<input type = "hidden" value = "performance_write" name = "command">
			
				<table class = "pfm_table">
					<tr>
						<td class = "lbl">공연 분류</td>
						<td class = "input">
							<select name = "pfm_div" class = "gola">
								<option value = "콘서트">콘서트</option>
								<option value = "뮤지컬">뮤지컬</option>
								<option value = "클래식">클래식</option>
								<option value = "국악">국악</option>
								<option value = "연극">연극</option>
								<option value = "무용">무용</option>
							</select>
						</td>
						<td/>
					</tr>
					<tr>
						<td class = "lbl">공연제목</td>
						<td class = "input"><input id = "sub" type = "text" name = "pfm_subject"></td>
						<td/>
					</tr>
					<tr>
						<td class = "lbl">출연자</td>
						<td class = "input"><input type = "text" name = "pfm_actor"></td>
						<td></td>
					</tr>	
					<tr>
						<td class = "lbl">공연시작일자</td>
						<td class = "input"><input id = "date" type = "date" name = "pfm_start"></td>
						<td>${message}</td>
					</tr>
					<tr>
						<td class = "lbl">공연종료일자</td>
						<td class = "input"><input id = "date" type = "date" name = "pfm_end"></td>
						<td></td>
					</tr>
					<tr>
						<td class = "lbl">공연장소</td>
						<td class = "input"><input type = "text" name = "pfm_loc"></td>
						<td/>
					</tr>
					<tr>
						<td class = "lbl">공연지역</td>
						<td class = "input"><select name = "pfm_reg" class = "gola">
								<option value = "서울">서울</option>
								<option value = "경기/인천">경기/인천</option>
								<option value = "울산/경남">울산/경남</option>
								<option value = "광주/전남">광주/전남</option>
								<option value = "대전/충남">대전/충남</option>
								<option value = "부산">부산</option>
								<option value = "전북">전북</option>
								<option value = "강원">강원</option>
								<option value = "충북">충북</option>
								<option value = "제주">제주</option>
								<option value = "경북">경북</option>
							</select></td>
						<td></td>				
					</tr>	
					<tr>
						<td class = "lbl">공연포스터(URL)</td>
						<td class = "input"><textarea cols = "50" rows = "3" name = "pfm_pic"></textarea></td>
						<td></td>						
					</tr>
					<tr>
						<td class = "lbl">공연내용(URL)</td>
						<td class = "input"><textarea cols = "50" rows = "3" name = "pfm_content"></textarea></td>
						<td></td>						
					</tr>	
					<tr class = "keyword">
						<td class = "lbl" rowspan = "2">키워드</td>
						<td class = "input"><input type = "text" name = "keyword1"></td>
						<td></td>						
					</tr>	
					<tr class = "keyword">
						<td class = "input"><input type = "text" name = "keyword2"></td>
						<td></td>						
					</tr>	
					<tr class = "button_grp">
						<td colspan = "3">							
							<input type = "submit" value = "등록">
							<input type = "button" value = "뒤로가기" onclick = "javascript:history.go(-1)">
						</td>
					</tr>									
				</table>			
			</form>
			</div>
		</div>
		<!-- 컨텐츠 끝  -->
	</div>
	<!-- 푸터 시작 -->
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
<!-- 푸터 끝  -->
</body>
</html>
