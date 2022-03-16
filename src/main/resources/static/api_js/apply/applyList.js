/**
 * 
 */
let writeBtn = document.getElementById("writeBtn");

let answerCheck = document.querySelectorAll("#answerCheck");
let checkAll = document.getElementById("checkAll");
let answerBtn = document.getElementById("answerBtn");

let data=[];

//글쓰기 버튼 페이지 이동
writeBtn.addEventListener('click', ()=>{
	location.href= "regist";
});

//답변완료 버튼
answerBtn.addEventListener('click', ()=>{
		for(let i=0;i<answerCheck.length;i++){
			if(answerCheck[i].checked==true){
				console.log(answerCheck[i].value);
				data.push(answerCheck[i].value);
			}
		}
		console.log(data);
		updateState(data);

});

//전체체크,해제
checkAll.onclick = ()=>{

	if(checkAll.checked == false){
		for(let i=0;i<answerCheck.length;i++){
			answerCheck[i].checked = false;
		}
	}else{
		for(let i=0;i<answerCheck.length;i++){
			answerCheck[i].checked = true;
		}
	}
}

		//업데이트 보내는 함수
		let updateState = async (data) =>{
			let rqResult = await fetch('http://localhost:8080/partner/state', {
			method: "PUT",
			headers: {
				'Content-Type': 'application/json;charset=utf-8'
			},
			body: JSON.stringify(
				data
			)
		})
			if (rqResult.ok == true) {
				alert("성공")
				location.reload();
				}


		} 
	