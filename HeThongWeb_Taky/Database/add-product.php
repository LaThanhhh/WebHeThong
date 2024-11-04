<?php 
    session_start();

    $table_name = $_SESSION['table'];
    $namefood = $_POST['tenmon'];
    $type = $_POST['madanhmuc'];
    $des = $_POST['mota'];
    $imagef = $_POST['hinhmon'];
    $price = $_POST['gia'];

    //Adding the record
    try {
        $command = "INSERT INTO
                            $table_name(madanhmuc, tenmon, hinhmon, gia, mota)
                        VALUES
                            ('".$type."', '".$namefood."', '".$imagef."', '".$price."', '".$des."')";

        include('connection.php');

        $conn->exec($command);
        $response = [
            'success' => true,
            'message'=> $namefood . '  Đã được thêm thành công vào hệ thống.'
        ];
    } 
    catch (PDOException $e) 
    {
            $response = [
                'success'=> false,
                'message'=> $e->getMessage()
            ];
    }

    $_SESSION['response'] = $response;
    header('location: ../product-add.php');
?>