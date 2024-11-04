<?php 
    $data = $_POST;
    $user_id = (int) $data['userId'];
    $fullname = $data['tenkhachhang'];
    $email = $data['email'];
    $phone = $data['sodienthoai'];
    $total = $data['tongtien'];
    $status = $data['trangthai'];
    $note = $data['ghichu'];
    $orderdate = $data['ngaydh'];

    //Adding the record
    try {
        $sql = "UPDATE donhang SET tenkhachhang=?, email=?, sodienthoai=?, tongtien=?, trangthai=?, ghichu=?, ngaydat=? WHERE id=?";
        include('connection.php');

        $conn->prepare($sql)->execute([$fullname, $email, $phone, $total, $status, $note, date('Y-m-d'), $user_id]);

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