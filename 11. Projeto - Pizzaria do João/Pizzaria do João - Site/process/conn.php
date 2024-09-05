<?php

session_start();

$user = 'root';
$pass = 'arisio2003';
$db = 'pizzaria';
$host = 'localhost';

try {
    // Corrected DSN string and PDO method calls
    $conn = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
} catch (PDOException $e) {
    // Corrected exception handling
    print 'Error: ' . $e->getMessage() . '<br>';
    die();
}
?>