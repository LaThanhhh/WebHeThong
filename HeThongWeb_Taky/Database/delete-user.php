<?php 
    $data = $_POST;
    $user_id = (int) $data['user_id'];
    $fullname = $data['hoten'];

    //Adding the record
    try {
        $command = "DELETE FROM taikhoan WHERE id={$user_id}";
        include('connection.php');

        $conn->exec($command);

        echo json_encode([
            "success" => true,
            "message"=> $fullname . '  Đã xóa thành công.'
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