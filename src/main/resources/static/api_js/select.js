/**
 * 
 */


let boardTitle = document.getElementById("boardTitle");
let boardContent = document.getElementById("boardContent");
let boardWriter = document.getElementById("boardWriter");
let boardType = document.getElementById("boardType");
let boardButton = document.getElementById("boardButton");
let boardButton2 = document.getElementById("boardButton2");
let data = {};



boardButton.addEventListener('click', () => {
	data.boardTitle = boardTitle.value;
	data.boardContent = boardContent.value;
	data.boardWriter = boardWriter.value;
	data.boardType = boardType.value;

	console.log(boardTitle.value);
	
	insert(data);

});

boardButton2.addEventListener('click', () => {
	
//	alert("ㅇㅇㅇㅇ");
	
	data.boardTitle = boardTitle.value;
	data.boardContent = boardContent.value;
	data.boardIdx = boardWriter.value;

	
	updateBoard(data);

});


let insert = async(data)=>{
	let rqResult = await fetch('http://localhost:8080/board/select', {
    method : "POST",
    headers : {
        'Content-Type' : 'application/json;charset=utf-8'
    },
    body : JSON.stringify(
        data
    )
})
    if(rqResult.ok==true){
        alert("ㅇㅋ");
    }else if(rqResult.ok==false){
        alert("ss");
}
}


let updateBoard = async(data)=>{
	let rqResult = await fetch('http://localhost:8080/board/select',{
        method : "PUT",
        headers : {
            'Content-Type' : 'application/json;charset=utf-8'
        },
        body : JSON.stringify(
            data
        )
    })
    if(rqResult.ok==true){
        alert("ㅇㅋ");
        location.reload();
    }else if(rqResult.ok==false){
        alert("ss");
	
}
    
}        