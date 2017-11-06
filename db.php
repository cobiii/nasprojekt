<?php

$db_host = 'localhost';
    $db_user = 'dijaki';
    $db_pass = 'dijaki';
    $db_name = 'projekt_php_ekipe';
    
    $link=mysqli_connect($db_host, $db_user, $db_pass, $db_name);
    mysqli_set_charset($link,'utf8');

