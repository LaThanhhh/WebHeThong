<?php 
    $data = $_POST;
    $mon_id = (int) $data['mon_id'];
    $foodname = $data['tenmon'];

    //Adding the record
    try {
        $command = "DELETE FROM mon WHERE id={$mon_id}";
        include('connection.php');

        $conn->exec($command);

        echo json_encode([
            "success" => true,
            "message"=> $foodname . '  Đã xóa thành công.'
        ]);
    } 
    catch (PDOException $e) 
    {
        echo json_encode([
            'success' => false,
            'message'=> '  Xóa thất bại!'
        ]);
    }
?>