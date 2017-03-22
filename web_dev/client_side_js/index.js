
function hide(event) {
  event.target.hidden = "true";
}

var chick = document.getElementById("chick");
chick.addEventListener("click", hide); 