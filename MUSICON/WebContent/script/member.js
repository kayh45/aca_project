/**
 * 
 */

function idCheck() {
	if (document.frm.mem_id.value == "") {
		alert('아이디를 입력하여 주십시오.');
		document.form.mem_id.focus();
		return;
	}
	var url = "member.do?command=member_id_check&mem_id=" + document.frm.mem_id.value;
	window.open(url, "_blank_1",
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function nickCheck() {
	if (document.frm.mem_nick.value == "") {
		alert('닉네임을 입력하여 주십시오.');
		document.form.mem_nick.focus();
		return;
	}
	var mem_nick = encodeURIComponent(document.frm.mem_nick.value);
	var url = "member.do?command=member_nick_check&script=yes&mem_nick=" + mem_nick;
	window.open(url, "_blank_1",
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function nickUpdateCheck() {
	
	if (document.frm.mem_nick.value == "") {
		alert('닉네임을 입력하여 주십시오.');
		document.frm.mem_nick.focus();
		return;
	}
	
	var mem_nick = encodeURIComponent(document.frm.mem_nick.value);
	var mem_nick2 = encodeURIComponent(document.frm.mem_nick2.value);
	
	if (mem_nick == mem_nick2) {
		alert('현재 닉네임과 다른 닉네임으로 바꿔주세요.');
		document.frm.mem_nick.focus();
		return;
	}
	
	var url = "member.do?command=member_nick_update_check&script=yes&mem_nick=" + mem_nick + "&mem_nick2=" + mem_nick2;
	window.open(url, "_blank_1",
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
}

function idok() {
	opener.frm.mem_id.value = document.frm.mem_id.value;
	opener.frm.id_check.value = document.frm.mem_id.value;
	self.close();
}

function nickok() {
	opener.frm.mem_nick.value = document.frm.mem_nick.value;
	opener.frm.nick_check.value = document.frm.mem_nick.value;
	self.close();
}

function joinCheck() {
	if(document.frm.mem_id.value == ""){
		alert("아이디를 입력하세요.");
		document.frm.mem_id.focus();
		return false;
	} else if(document.frm.mem_nick.value == ""){
		alert("닉네임을 입력하세요.");
		document.frm.mem_nick.focus();
		return false;
	} else if(document.frm.mem_pw.value == ""){
		alert("비밀번호를 입력하세요.");
		document.frm.mem_pw.focus();
		return false;
	} else if(document.frm.mem_pw.value == ""){
		alert("비밀번호 확인을 입력하세요.");
		document.frm.pw_chk.focus();
		return false;
	} else if(document.frm.mem_pw.value != document.frm.pw_chk.value){
		alert("비밀번호를 확인하세요.");
		document.frm.pw_chk.focus();
		return false;
	} else if(document.frm.mem_name.value == ""){
		alert("이름을 입력하세요.");
		document.frm.mem_name.focus();
		return false;
	} else if(document.frm.id_check.value == "false"){
		alert("아이디 중복체크를 하지 않으셨습니다.");
		document.frm.mem_id.focus();
		return false;
	} else if(document.frm.nick_check.value == "false"){
		alert("닉네임 중복체크를 하지 않으셨습니다.");
		document.frm.mem_nick.focus();
		return false;
	}
}

function updateCheck() {
	if(document.frm.mem_nick.value == ""){
		alert("닉네임을 입력하세요.");
		document.frm.mem_nick.focus();
		return false;
	} else if(document.frm.mem_pw.value == ""){
		alert("비밀번호를 입력하세요.");
		document.frm.mem_pw.focus();
		return false;
	} else if(document.frm.mem_pw.value == ""){
		alert("비밀번호 확인을 입력하세요.");
		document.frm.pw_chk.focus();
		return false;
	} else if(document.frm.mem_pw.value != document.frm.pw_chk.value){
		alert("비밀번호를 확인하세요.");
		document.frm.pw_chk.focus();
		return false;
	} else if(document.frm.mem_name.value == ""){
		alert("이름을 입력하세요.");
		document.frm.mem_name.focus();
		return false;
	} else if((document.frm.mem_nick.value != document.frm.mem_nick2.value) && document.frm.nick_check.value == "false"){
		alert("닉네임 중복체크를 하지 않으셨습니다.");
		document.frm.mem_nick.focus();
		return false;
	}
}

function memDelete(mem_no) {
	var result = confirm("정말로 삭제하시겠습니까?");
	var url = "member.do?command=member_delete&mem_no=" + mem_no;
	if(result == true){
		location.href = url;
	}else {
		
	}
}