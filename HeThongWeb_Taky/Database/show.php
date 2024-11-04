<?php 
    include('connection.php');

    $stmt = $conn->prepare("SELECT * FROM mon ");
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);

    return $stmt->fetchAll();
?>