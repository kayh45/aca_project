function writeCheck() {
	if(document.frm.brd_subject.value == ""){
		alert("제목을 입력하세요.");
		document.frm.brd_subject.focus();
		return false;
	} else if(document.frm.brd_content.value == ""){
		alert("내용을 입력해주세요.");
		document.frm.brd_content.focus();
		return false;
	} else if(document.frm.boardType.value == "photo" && document.frm.brd_pic.value == ""){
		alert("URL을 입력하고 적용버튼을 눌러주세요.");
		document.frm.pic_url.focus();
		return false;
	} else if(document.frm.boardType.value == "video" && document.frm.brd_vid.value == ""){
		alert("URL을 입력하고 적용버튼을 눌러주세요.");
		document.frm.vid_url.focus();
		return false;
	} else {
		return true;
	}
}


function deleteConfirm(brd_no, boardType) {
	var result = confirm("정말로 삭제하시겠습니까?");
	var url = "board.do?command=board_delete&brd_no=" + brd_no + "&boardType=" + boardType;
	if(result == true){
		location.href = url;
	}else {
		
	}
}


function imgPreview() {
	document.frm.img_prv.src = document.frm.pic_url.value;
	document.frm.brd_pic.value = document.frm.pic_url.value;
}

function vidPreview() {
	var url = document.frm.vid_url.value.substr(-11);
	var youtubeUrl = "https://www.youtube.com/embed/" + url;
	
	document.getElementById("vid_prv").src = youtubeUrl;
	document.frm.brd_vid.value = url;

	document.getElementById("vid_prv").contentDocument.location.reload();
	
}

function open_win(url, name) {
	window.open(url, name, "width=500, height=230");
}

function passCheck() {
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		return false;
	}
	return true;
}