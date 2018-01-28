function check(){
	if (document.frm.search.value == "") {
		alert("제목을 입력하세요.");
		document.frm.search.focus();
		return false;
	}
}

function pfmWriteCheck(){
	if(document.frm.pfm_subject.value == ""){
		alert("공연 제목을 입력하세요.");
		document.frm.pfm_subject.focus();
		return false;
	}else if(document.frm.pfm_actor.value == ""){
		alert("출연자 이름을 입력하세요.");
		document.frm.pfm_subject.focus();
		return false;
	}else if(document.frm.pfm_start.value == ""){
		alert("공연 시작 날짜를 입력하세요.");
		document.frm.pfm_start.focus();
		return false;
	}else if(document.frm.pfm_end.value == ""){
		alert("공연 종료 날짜를 입력하세요.");
		document.frm.pfm_end.focus();
		return false;
	}else if(document.frm.pfm_loc.value == ""){
		alert("공연 장소를 입력하세요.");
		document.frm.pfm_loc.focus();
		return false;
	}else if(document.frm.pfm_content.value == ""){
		alert("공연 상세정보 URL를 입력하세요.");
		document.frm.pfm_content.focus();
		return false;
	}else if(document.frm.pfm_div.value == ""){
		alert("공연 분류를 입력하세요.");
		document.frm.pfm_div.focus();
		return false;
	}else if(document.frm.pfm_reg.value == ""){
		alert("공연 지역을 입력하세요.");
		document.frm.pfm_reg.focus();
		return false;
	}else if(document.frm.pfm_pic.value == ""){
		alert("공연 포스터 URL을 입력하세요.");
		document.frm.pfm_reg.focus();
		return false;
	}else if(document.frm.pfm_end.value < document.frm.pfm_start.value){3
		alert("종료 날짜가 시작 날짜보다 앞에 위치해 있습니다.")      
    	document.frm.pfm_start.focus();
    	return false;
	}
	      
}

function pfmUpdateCheck(){
	
	if(document.frm.pfm_subject.value == ""){
		alert("공연 제목을 입력하세요.");
		document.frm.pfm_subject.focus();
		return false;
	}else if(document.frm.pfm_actor.value == ""){
		alert("출연자 이름을 입력하세요.");
		document.frm.pfm_subject.focus();
		return false;
	}else if(document.frm.pfm_start.value == ""){
		alert("공연 시작 날짜를 입력하세요.");
		document.frm.pfm_start.focus();
		return false;
	}else if(document.frm.pfm_end.value == ""){
		alert("공연 종료 날짜를 입력하세요.");
		document.frm.pfm_end.focus();
		return false;
	}else if(document.frm.pfm_loc.value == ""){
		alert("공연 장소를 입력하세요.");
		document.frm.pfm_loc.focus();
		return false;
	}else if(document.frm.pfm_content.value == ""){
		alert("공연 상세정보 URL를 입력하세요.");
		document.frm.pfm_content.focus();
		return false;
	}else if(document.frm.pfm_div.value == ""){
		alert("공연 분류를 입력하세요.");
		document.frm.pfm_div.focus();
		return false;
	}else if(document.frm.pfm_reg.value == ""){
		alert("공연 지역을 입력하세요.");
		document.frm.pfm_reg.focus();
		return false;
	}else if(document.frm.pfm_pic.value == ""){
		alert("공연 포스터 URL을 입력하세요.");
		document.frm.pfm_reg.focus();
		return false;
	}else if(document.frm.pfm_end.value < document.frm.pfm_start.value){3
		alert("종료 날짜가 시작 날짜보다 앞에 위치해 있습니다.")      
		document.frm.pfm_start.focus();
		return false;
	}
	
}

function sameDate() {
	document.frm.pfm_end.value = document.frm.pfm_start.value;
}

