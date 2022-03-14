const closeBtn = document.querySelector('.pop-up .close');
const popup = document.querySelector('.pop-up');
const closeBtnTwo = document.querySelector('.close-again');
closeBtn.addEventListener('click',()=>{
  popup.style.display = 'none';
});

closeBtnTwo.addEventListener('click',()=>{
  popup.style.display = 'none';
});