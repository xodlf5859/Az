/**
 * 
 */

let data = {};

let applyPw = document.getElementById("wr-password");
let checkPw = document.getElementById("passwordCheck");
let applyIdx = document.getElementById("applyIdx");

let backBtn = document.getElementById("backBtn");
let submitBtn = document.getElementById("submitBtn");

backBtn.addEventListener('click', () => {
	history.back();
});

//비밀번호 체크
submitBtn.addEventListener('click', () => {
	if(applyPw.value==checkPw.value){
		location.href="/partner/list/"+applyIdx.value;
	}else{
		alert("비밀번호가 일치하지 않습니다.");
	}
	
});