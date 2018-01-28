<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
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
				<div class = "top_title">"${performance.pfm_subject}" 공연 상세정보</div>
				<div id = "dtlbox">
					<div class = "top_body">
						<div class = "body_poster">
							<img src = "${performance.pfm_pic}" width = "200px">
							<div id = "btn_group">
							<form method = "post" action = "board.do?command=board_write_form&boardType=review">
							<input type = "hidden" name = "pfm_subject" value = "${performance.pfm_subject}">
							<input type = "hidden" name = "pfm_no" value = "${performance.pfm_no}">
							<input type = "hidden" name = "pfm_pic" value = "${performance.pfm_pic}">
							<input type = "hidden" name = "pfm_actor" value = "${performance.pfm_actor}">
							<input type = "hidden" name = "pfm_loc" value = "${performance.pfm_loc}">
							<c:if test = "${LoginUser != null }">
							<button type = "submit" class = "btn_like">이 공연에 대한 리뷰 작성</button>
							</c:if>
							</form>
						</div>
						</div>
						<div class = "body_info">
							<p class = "body_title">${performance.pfm_subject}</p>
							<table class = "body_table">
								<tr>
									<th><span>장르</span></th>
									<td>${performance.pfm_div}</td>
								</tr>
								<tr>
									<th><span>장소</span></th>
									<td>${performance.pfm_loc}</td>
								</tr>
								<tr>
									<th><span>기간</span></th>
									<td>
										<fmt:parseDate var="startDate" value = "${performance.pfm_start}" pattern = "yyyy-MM-dd HH:mm:ss"/>
										<fmt:parseDate var="endDate" value = "${performance.pfm_end}" pattern = "yyyy-MM-dd HH:mm:ss"/>
										<fmt:formatDate value = "${startDate}" type = "date"/>
										<c:if test = "${performance.pfm_start != performance.pfm_end}">
										~<fmt:formatDate value = "${endDate}" type = "date"/>
										</c:if>
									</td>
								</tr>
								<tr>
									<th><span>출연</span></th>
									<td>${performance.pfm_actor}</td>
								</tr>
								<c:if test = "${LoginUser.mem_auth eq 1}">
								<tr>
									<td/>
									<td class = "btn_grp">
										<input type = "button" id = "update" value = "정보수정" onclick = "location.href='perform.do?command=performance_update_form&pfm_no=${performance.pfm_no}'">
										<input type = "button" id = "delete" value = "삭제" onclick = "location.href='perform.do?command=performance_delete&pfm_no=${performance.pfm_no}'">
									</td>
								</tr>
								</c:if>
							</table>
						</div>
					</div>
					<div class = "yeme">예매 링크: <a href = "#">인터파크</a> / <a href = "#">yes24</a></div>
					<div class = "middle_body">
						<div class = "innertitle"><span>상세 정보</span></div>
						<img src = "${performance.pfm_content}" width = "580px">
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