function hide() {
  var chick = document.getElementById("chick");
  chick.hidden = "true";
}
function appear() {
  var chick_2 = document.getElementById("chick");
  chick_2.removeAttribute("hidden");
}
btn.addEventListener("click", hide); 
btn_2.addEventListener("click", appear);