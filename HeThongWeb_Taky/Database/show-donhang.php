<?php 
    include('connection.php');

    $stmt = $conn->prepare("SELECT * FROM donhang");
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);

    return $stmt->fetchAll();
?>