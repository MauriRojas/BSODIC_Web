<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <link type="text/css" href="../styles/normalize.css" rel="stylesheet" media="all">
  <link type="text/css" href="../styles/style.css" rel="stylesheet" media="all">
  <title>Iniciar sesión | BSOD Information Center</title>
</head>

<body>
  <div class="login-form">
    <form id="login" action="login" method="post">
    <h1>BSOD</h1>
    <h2>Information Center</h2>
    <input id="username" type="text" name="username" placeholder="usuario" required autofocus>
    <input id="password" type="password" name="password" placeholder="contraseña" required>
    <input class="submit_button" type="submit" value="Iniciar sesión" name="submit">
    <a class="new-account" href="register.php">Crear cuenta</a>
  </form>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>
