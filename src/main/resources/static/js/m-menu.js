var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
acc[i].addEventListener("click", function() {
/* Toggle between adding and removing the "active" class,
to highlight the button that controls the panel */
this.classList.toggle("active");

/* Toggle between hiding and showing the active panel */
var panel = this.nextElementSibling;
if (panel.style.display === "block") {
  panel.style.display = "none";
} else {
  panel.style.display = "block";
}
});
}
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    }
  });
}


const mMnenuOpen = document.querySelector('.m-menu-btn button');
const mMnenuclose = document.querySelector('.m-menu-close button');
const mMenu = document.querySelector('.m-menu-open');

mMnenuclose.addEventListener('click', ()=>{
  mMenu.style.display = 'none';
});
mMnenuOpen.addEventListener('click', ()=>{
  mMenu.style.display = 'block';
});

window.addEventListener('resize', (e) => {
  if (e.target.innerWidth >= 960) {
  mMenu.style.display = 'none';
  }
})