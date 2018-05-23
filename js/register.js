function checkSameInput() {
  var pass = document.getElementById("pass");
  var rpass = document.getElementById("rpass");
  var submit = document.getElementById("enviar");
  if (pass.value == rpass.value ) {
    rpass.style.borderColor = "green";
    submit.backgroundColor = "black";
    submit.cursor = "default";
    submit.disabled = false;
  } else {
    rpass.style.borderColor = "red";
    submit.color = "green";
    submit.disabled = true;
  }
}
