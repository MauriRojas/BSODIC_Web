<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link type="text/css" rel="stylesheet" href="../styles/normalize.css" media="all">
<link type="text/css" rel="stylesheet" href="../styles/style.css" media="all">
<title>Crear cuenta | BSOD Information Center</title>
</head>

<body>
  <div class="login-form">
    <form id="login" action="../serverside/register-account.php" method="post">
      <h1>BSOD</h1>
      <h2>Crear cuenta</h2>
      <input type="text" name="name" placeholder="nombre" required autofocus>
      <input id="pass" type="password" name="pass" placeholder="contraseña" required>
      <input id="rpass" type="password" name="repeat-pass" placeholder="repetir contraseña" required onkeyup="checkSameInput()">
      <input type="email" name="email" placeholder="correo electrónico" required>
      <input type="email" name="repeat-email" placeholder="repetir correo electrónico" required>
      <input type="number" name="phone" placeholder="teléfono" required>
      <input id="enviar" type="submit" class="submit_button" value="Crear cuenta" name="submit">
    </form>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="../js/register.js" type="text/javascript"></script>
</body>

</html>
