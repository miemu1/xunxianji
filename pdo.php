<?php
$sqlname='root';
$sqlpass='123456';
$dbhost='localhost';
$dbname='game';
$dsn="mysql:host=$dbhost;dbname=$dbname;";
$dblj = new PDO($dsn,$sqlname,$sqlpass,array(PDO::ATTR_PERSISTENT=>true));
array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
$dblj->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
$dblj->query("SET NAMES utf8mb4");
?>