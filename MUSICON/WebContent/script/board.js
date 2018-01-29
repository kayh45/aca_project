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

function addLike(brd_no, boardType) {
	
	var result = confirm("정말 좋아요?");
	
	var url = "board.do?command=board_like&brd_no=" + brd_no + "&boardType=" + boardType;
	
	if(result == true){
		location.href = url;
	}else {
		
	}
}

function rereply(nick) {
	var content = document.reply.brpl_content.value;
	
	document.reply.brpl_content.value = "To." + nick + "  " + content;
}

function replyDeleteConfirm(brpl_no, boardType){
	var result = confirm("정말로 삭제하시겠습니까?");
	var url = "board.do?command=brpl_delete&brpl_no=" + brpl_no + "&boardType=" + boardType;
	if(result == true){
		location.href = url;
	}else {
		
	}
}