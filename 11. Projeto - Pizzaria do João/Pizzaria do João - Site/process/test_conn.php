<?php
include_once('conn.php');

try {
    $stmt = $conn->query('SELECT 1');
    echo 'Conexão bem-sucedida!';
} catch (PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}
?>
