<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "css/common.css">
<link rel = "stylesheet" type = "text/css" href = "css/search.css">
<link rel = "stylesheet" type = "text/css" href = "css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MUSICON :: 공연 검색</title>
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
			<form method = "post" action = "perform.do">
			<input type = "hidden" name = "command" value = "performance_search_all">
		 	<div id = "checkbar">
		 		<input type = "radio" name = "pfm_div" id = "tab-gn-1" value = "전체" checked>
				<label for = "tab-gn-1">전체</label>
				<input type = "radio" name = "pfm_div" id = "tab-gn-2" value = "콘서트">
				<label for = "tab-gn-2">콘서트</label>
				<input type = "radio" name = "pfm_div" id = "tab-gn-3" value = "뮤지컬">
				<label for = "tab-gn-3">뮤지컬</label>
				<input type = "radio" name = "pfm_div" id = "tab-gn-4" value = "클래식">
				<label for = "tab-gn-4">클래식</label>
				<input type = "radio" name = "pfm_div" id = "tab-gn-5" value = "국악">
				<label for = "tab-gn-5">국악</label>
				<input type = "radio" name = "pfm_div" id = "tab-gn-6" value = "연극">
				<label for = "tab-gn-6">연극</label>
				<input type = "radio" name = "pfm_div" id = "tab-gn-7" value = "무용">
				<label for = "tab-gn-7">무용</label>
			</div> 
			<div id = "keywordbar">
				<table>
					<tr>
					<td class = "kwtitle">인기 키워드</td>
					<td class = "kwcontent">
					<div class = "chkgroup">
						<c:if test = "${keywordList != null}">
						<c:forEach var = "key" items = "${keywordList}">
						<c:set var = "index" value = "${index+1}"/>
						<span id = "kwdspan">
						<input type = "checkbox" name = "kwds" id = "top-kw-1" value = "${key}">
						<label for = "top-kw-${index}">${key}</label>
						</span>
						</c:forEach>
						</c:if>
					</div>
					</td>
					</tr>		
					<tr>
					<td class = "kwtitle">지역</td>
					<td class = "kwcontent">
						<input type = "checkbox" name = "regs" id = "location-kw-1" value = "서울">
						<label for = "location-kw-1">서울</label>
						<input type = "checkbox" name = "regs" id = "location-kw-2" value = "경기/인천">
						<label for = "location-kw-2">경기/인천</label>
						<input type = "checkbox" name = "regs" id = "location-kw-3" value = "울산/경남">
						<label for = "location-kw-3">울산/경남</label>
						<input type = "checkbox" name = "regs" id = "location-kw-4" value = "광주/전남">
						<label for = "location-kw-4">광주/전남</label>
						<input type = "checkbox" name = "regs" id = "location-kw-5" value = "대전/충남">
						<label for = "location-kw-5">대전/충남</label>
						<input type = "checkbox" name = "regs" id = "location-kw-6" value = "대구/경북">
						<label for = "location-kw-6">대구/경북</label><br>
						<input type = "checkbox" name = "regs" id = "location-kw-7" value = "전북">
						<label for = "location-kw-7">전북</label>
						<input type = "checkbox" name = "regs" id = "location-kw-8" value = "강원">
						<label for = "location-kw-8">강원</label>
						<input type = "checkbox" name = "regs" id = "location-kw-9" value = "충북">
						<label for = "location-kw-9">충북</label>
						<input type = "checkbox" name = "regs" id = "location-kw-10" value = "제주">
						<label for = "location-kw-10">제주</label>
						<input type = "checkbox" name = "regs" id = "location-kw-11" value = "부산">
						<label for = "location-kw-11">부산</label>
					</td>
					</tr>
				</table>
			</div>
				<div id = "searchbar">
				<input type = "text" id = "txt_sc" name = "srch">
				<input type = "image" id = "btn_sc" src = "img/scbtn.png" width = "25px">
			</div>
			</form>
			<div class = "result">
				<div class = "option">
					<c:if test = "${LoginUser.mem_auth eq 1}">
					<input type = "button" value = "공연 등록" onclick = "location.href='perform.do?command=performance_write_form'">
					</c:if>
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
						<c:forEach var = "performance" items = "${performanceList}">
						<tr>
							<td class = "category">${performance.pfm_div}/${performance.pfm_reg}/${performance.pfm_keywords}</td>
							<td class = "picture"><img src = "${performance.pfm_pic}"></td>
							<td class = "subject">
							<div class = "oneline" id = "sub"><a href = "perform.do?command=performance_view&pfm_no=${performance.pfm_no}">${performance.pfm_subject}</a>
							</div></td>
							<td class = "location">${performance.pfm_loc}</td>
							<td class = "date">
							<fmt:parseDate var="startDate" value = "${performance.pfm_start}" pattern = "yyyy-MM-dd HH:mm:ss"/>
							<fmt:parseDate var="endDate" value = "${performance.pfm_end}" pattern = "yyyy-MM-dd HH:mm:ss"/>
							<fmt:formatDate value = "${startDate}" type = "date"/>
							<c:if test = "${performance.pfm_start != performance.pfm_end}">
							~<br><fmt:formatDate value = "${endDate}" type = "date"/>
							</c:if>
							</td>
						</tr>
						</c:forEach>
						
					</table>
	
				</div>
			</div> <!-- rsbox  -->
		</div>
	<footer>
		<%@ include file = "../footer.jsp" %>
	</footer>
</body>
</html>