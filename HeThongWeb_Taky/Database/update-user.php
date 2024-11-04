<?php 
    $data = $_POST;
    $user_id = (int) $data['userId'];
    $fullname = $data['hoten'];
    $email = $data['email'];
    $phone = $data['sdt'];
    $address = $data['diachi'];

    //Adding the record
    try {
        $sql = "UPDATE taikhoan SET hoten=?, email=?, sdt=?, diachi=?, update_at=? WHERE id=?";
        include('connection.php');

        $conn->prepare($sql)->execute([$fullname, $email, $phone, $address, date('Y-m-d'), $user_id]);

        echo json_encode([
            'success' => true,
            'message'=> $fullname . '  Cập nhật thành công.'
        ]);
    } 
    catch (PDOException $e) 
    {
        echo json_encode([
            'success' => false,
            'message'=> '  Cập nhật thất bại!'
        ]);
    }
?>