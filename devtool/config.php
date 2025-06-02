<?php
// Database configuration
$db_host = 'localhost';
$db_name = 'game';
$db_user = 'root';
$db_pass = '123456';

// Developer tool password
$dev_password = '123456';

try {
    $pdo = new PDO("mysql:host=$db_host;dbname=$db_name;charset=utf8mb4", $db_user, $db_pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die('Database connection failed: ' . $e->getMessage());
}
?>
