/**
 * 
 */

let data = {};

//지원폼 양식
let applyManager = document.getElementById("wr-name");
let applyPw = document.getElementById("wr-password");
let applyEmail = document.getElementById("wr-email");
let applyPhone = document.getElementById("wr-phone");
let applyCompany = document.getElementById("wr-company");
let applyName = document.getElementById("wr-owner");
let applyGroupBuying = document.getElementById("wr-purchase");
let applyItem = document.getElementById("wr-product");
let applyOffice = document.getElementById("wr-company-type");
let applyStore = document.getElementById("wr-store");
let applyFactory = document.getElementById("wr-factory");
let applyArea = document.getElementById("wr-local");
let applyHomepage = document.getElementById("wr-homepage");

let cancleBtn = document.getElementById("btn_cancle");
let submitBtn = document.getElementById("btn_submit");

let starCheck = false;

//취소 버튼
cancleBtn.addEventListener('click', () => {
	history.back();
});

//제출 버튼
submitBtn.addEventListener('click', () => {



	if (!applyManager.value) {
		alert("담당자를 입력해주세요")
	} else if (!applyPw.value) {
		alert("비밀번호를 입력해주세요")
		return;
	} else if (!applyPhone.value) {
		alert("연락처를 입력해주세요")
		return;
	} else if (!applyCompany.value) {
		alert("업체명을 입력해주세요")
		return;
	} else if (!applyName.value) {
		alert("대표명을 입력해주세요")
		return;
	} else if (!applyItem.value) {
		alert("취급 품목을 입력해주세요.")
		return;
	} else if (!applyArea.value) {
		alert("활동 지역을 입력해주세요.")
		return;
	} else {
		starCheck = true;
	}

	if (starCheck == true) {
		data.applyManager = applyManager.value;
		data.applyPw = applyPw.value;
		data.applyEmail = applyEmail.value;
		data.applyPhone = applyPhone.value;
		data.applyCompany = applyCompany.value;
		data.applyName = applyName.value;
		data.applyGroupBuying = applyGroupBuying.value;
		data.applyItem = applyItem.value;
		data.applyOffice = applyOffice.value;
		data.applyStore = applyStore.value;
		data.applyFactory = applyFactory.value;
		data.applyArea = applyArea.value;
		data.applyHomepage = applyHomepage.value;
		insert(data);

	}

});


let insert = async (data) => {
	let rqResult = await fetch('http://localhost:8080/partner/list', {
		method: "POST",
		headers: {
			'Content-Type': 'application/json;charset=utf-8'
		},
		body: JSON.stringify(
			data
		)
	})
	if (rqResult.ok == true) {
		alert("등록 성공했습니다.");
		location.href = "list"

	} else if (rqResult.ok == false) {
		alert("등록 실패했습니다. 다시 시도해주세요");
	}
}

