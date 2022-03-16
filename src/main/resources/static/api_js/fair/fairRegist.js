/**
 * 
 */

let data = {};

//지원폼 양식
let boardTitle = document.getElementById("boardTitle");
let boardContent = document.getElementById("boardContent");

let cancleBtn = document.getElementById("btn_cancel");
let submitBtn = document.getElementById("btn_submit");

let starCheck = false;

//취소 버튼
cancleBtn.addEventListener('click', () => {
	history.back();
});

//제출 버튼
submitBtn.addEventListener('click', () => {



	if (!boardTitle.value) {
		alert("제목을 입력해주세요")
		return;
	} else if (!boardContent.value) {
		alert("내용을 입력해주세요")
		return;
	} else {
		starCheck = true;
	}

	if (starCheck == true) {
		data.boardTitle = boardTitle.value;
		data.boardContent = boardContent.value;
		insert(data);

	}

});


let insert = async (data) => {
	let rqResult = await fetch('http://localhost:8080/fair/list', {
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

	