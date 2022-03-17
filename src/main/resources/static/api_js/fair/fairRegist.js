/**
 * 
 */

let formData = new FormData();

//지원폼 양식
let boardTitle = document.getElementById("boardTitle");
let boardContent = document.getElementById("boardContent");
let inputFile = document.getElementById("fairImgUpload");
let fileName = document.getElementById("fileName");
let fileSize = document.getElementById("fileSize");
let cancleBtn = document.getElementById("btn_cancel");
let submitBtn = document.getElementById("btn_submit");

let starCheck = false;


//취소 버튼
cancleBtn.addEventListener('click', () => {
	history.back();
});


let test = document.getElementById("lili");
let test333 = document.getElementById('addli').cloneNode(true);
let test444 = document.createElement('div');

console.log(test);
inputFile.onchange=()=>{
	
	for(let i=0;i<inputFile.files.length;i++){
		console.log(inputFile.files[i].name);
		console.log((inputFile.files[i].size/1048576).toFixed(2)+"MB");
		
//		 test333[i].append(test444);
//		 test444[i].innerHTML =inputFile.files[i].name;
//		fileName.innerText = inputFile.files[i].name;
//		fileSize.innerText = (inputFile.files[i].size/1048576).toFixed(2)+"MB";
		
		test.appendChild(test333);
		
		
	}
}


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
		formData.append('boardTitle' , boardTitle.value);
		formData.append('boardContent' , boardContent.value);
		
		console.log(inputFile.files.length);
		console.log(boardContent.value);
		console.log(boardTitle.value);
		
		
		for(let i=0;i<inputFile.files.length;i++){
			formData.append(`file`,inputFile.files[i]);
		}
		
		insert(formData);

	}

});


let insert = async (formData) => {
	let rqResult = await fetch('http://localhost:8080/fair/list', {
		method: "POST",
		/*headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		},*/
		body: formData
		
	})
	if (rqResult.ok == true) {
		alert("등록 성공했습니다.");
		location.href = "list"

	} else if (rqResult.ok == false) {
		alert("등록 실패했습니다. 다시 시도해주세요");
	}
}

	