function validateForm(form) {
  var reason = "";
  reason += validateSameInput(form.pass, form.rpass, "contraseña");
  reason += validateSameInput(form.email, form.remail, "email");

  if (reason != "") {
    alert("Necesita corregir lo siguiente:\n" + reason);
  } else {
    sendRegisterForm(this);
  }
}

function validateSameInput(textA, textB, inputType) {
  if (textA = textB) {
    return "";
  } else {
    return "Los campos de " + inputType + " deben coincidir.";
  }
}

function sendRegisterForm(form) {
  var parameters = "name=" + form.username.value + "&pass=" + form.pass.value + "&email=" + form.email.value + "&phone=" + form.phone.value;
  var request = new XMLHttpRequest();
  request.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      alert("Se ha registrado exitosamente!");
    }
  };
  request.open("POST", "../serverside/register-account.php", true);
  request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  request.send(parameters);
}
