/**
 * 
 */
 

 
let applyIdx = document.getElementById("applyIdx");
let updateBtn = document.getElementById("updateBtn");
let deleteBtn = document.getElementById("deleteBtn");
let data = {};

console.log(applyIdx.value);

updateBtn.onclick=()=>{
	console.log("dd");
	location.href="/partner/modify?applyIdx="+applyIdx.value;
}

deleteBtn.onclick=()=>{
	if(confirm("정말로 삭제하시겠습니까?") == true){
		
	data.applyIdx = applyIdx.value;
	console.log(location.href);
	deletePartner(data)
}
	

	}
	let deletePartner = async (data) =>{
		let rqResult = await fetch('http://localhost:8080/partner/list', {
		method: "DELETE",
		headers: {
			'Content-Type': 'application/json;charset=utf-8'
		},
		body: JSON.stringify(
			data
		)
	})
		if (rqResult.ok == true) {
		alert("삭제 성공");
		location.href = "../list";
		}
		else if(rqResult.ok == false){
			alert("삭제 실패");
		}
	}