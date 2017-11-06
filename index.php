<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body><div class="table">
    <div class="floatleft">
        <ul>
      <?php   $url=   $_SERVER['REQUEST_URI']; ?>
  <li><a <?php if($url==='/nasprojekt/index.php'){ ?>class="active"<?php  } ?> href="index.php">Spored</a></li>
  <li><a <?php if($url=='/nasprojekt.php'){ ?>class="active"<?php } ?> href="oddaje.php">Oddaje</a></li>
  <li><a <?php if($url=='/nasprojekt.php'){ ?>class="active"<?php } ?> href="programi.php">Programi</a></li>
  <li><a <?php if($url=='/nasprojekt/priljubljenost.php'){ ?>class="active"<?php } ?> href="priljubljenost.php">Priljubljenost</a></li></div>
  <?php include_once 'session.php';
  if(isset($_SESSION['user_id']))
  {
      ?><div class="floatright"><ul><li><a href="logout.php">Odjava</a></li></div><?php
  }
  else if(isset($_SESSION['uid'])){ ?>
      <div class="floatright"><ul><li><a href="logout.php">Odjava</a></li></div><?php
  }
  else{ ?>
      <div class="floatright"><ul><li><a <?php if($url=='/projekt_za_oceno/register.php'){ ?>class="active"<?php } ?> href="register.php">Registracija</a></li>
  <li><a <?php if($url=='/nasprojekt/login.php'){ ?>class="active"<?php } ?> href="login.php">Prijava</a></li>
      <li><a <?php if($url=='/nasprojekt/google_index.php'){ ?>class="active"<?php } ?> href="google_index.php">Google</a></li>
      <li><a <?php if($url=='/nasprojekt/facebook_login.php'){ ?>class="active"<?php } ?> href="facebook_login.php">Facebook</a></div>
      <?php } ?>
    </div>
</body>
</html>
