<?php 
    $data = $_POST;
    $food_id = (int) $data['monId'];
    $imgname = $data['hinhmon'];
    $type_id = (int) $data['madanhmuc'];
    $foodname = $data['tenmon'];
    $fprice = $data['gia'];
    $fdes = $data['mota'];


    //Adding the record
    try {
        $sql = "UPDATE mon SET madanhmuc=?, tenmon=?, hinhmon=?, gia=?, mota=?, WHERE id=?";
        include('connection.php');

        $conn->prepare($sql)->execute([$type_id, $foodname, $imgname, $fprice, $fdes, $user_id]);

        echo json_encode([
            'success' => true,
            'message'=> $imgname . '  Cập nhật thành công.'
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