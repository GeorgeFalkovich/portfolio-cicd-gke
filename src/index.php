<!DOCTYPE html>
<!-- Contrbuted by GS -->
<html><head></head><body>
<?php
echo "Hello envs!";
echo $_ENV['MYSQL_USER'];
while (list($var,$value) = each ($_ENV)) {
    echo "$var => $value <br />";
    
}
?>