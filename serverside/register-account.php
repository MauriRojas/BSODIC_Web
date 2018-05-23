<?php
  ini_set('display_errors', 'On');
  error_reporting(E_ALL);
  require_once("serverdetails.php");

  $conn = new mysqli(SERVER, USER, PASSWORD, DATABASE);
  $conn->set_charset("utf8");

  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  $name = $_POST["name"];
  $pass = $_POST["pass"];
  $email = $_POST["email"];
  $phone = $_POST["phone"];

  $pass = password_hash($pass, PASSWORD_DEFAULT);

  $stmt = $conn->prepare("INSERT INTO users (name, pass, mail, phone) VALUES (?,?,?,?)");

  $stmt->bind_param("ssss", $name, $pass, $email, $phone);
  if ($stmt->execute() === TRUE) {
    header("Location: http://localhost/BSODIC/login/index.php");
    die();
  } else {
    echo $conn->error;
  }

  $stmt->close();
  $conn->close();
 ?>
