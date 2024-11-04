<?php 
    include('connection.php');

    $stmt = $conn->prepare("SELECT * FROM taikhoan ORDER BY create_at DESC");
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);

    return $stmt->fetchAll();
?>