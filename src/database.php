<?php

// CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';
// GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
// FLUSH PRIVILEGES;

/**
 * Created by PhpStorm.
 * User: georgefalkovich
 * Date: 25/04/2020
 * Time: 16:11
 */

ob_start();
session_start();

date_default_timezone_set("UTC");
require_once ('config.php');

try {
    $con = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME, DB_USER, DB_PASSWORD);
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
}
catch(PDOException $e) {
    echo "Connection failed:  Error:  " . $e->getMessage();
}

?>

