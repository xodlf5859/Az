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
	data.applyIdx = applyIdx.value;
	
	deletePartner(data)
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
		alert(rqResult + " 성공");
		}
		else if(rqResult.ok == false){
			alert("실패");
		}

	}