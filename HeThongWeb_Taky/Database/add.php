<?php 
    session_start();

    $table_name = $_SESSION['table'];
    $fullname = $_POST['hoten'];
    $user = $_POST['tendangnhap'];
    $pass = $_POST['matkhau'];
    $email = $_POST['email'];
    $phone = $_POST['sdt'];
    $address = $_POST['diachi'];
    $encrypted = password_hash($pass, PASSWORD_DEFAULT);

    //Adding the record
    try {
        $command = "INSERT INTO
                            $table_name(hoten, tendangnhap, matkhau, email, sdt, diachi, create_at, update_at)
                        VALUES
                            ('".$fullname."', '".$user."', '".$encrypted."', '".$email."', '".$phone."', '".$address."', NOW(), NOW())";

        include('connection.php');

        $conn->exec($command);
        $response = [
            'success' => true,
            'message'=> $fullname . '  Đã được thêm thành công vào hệ thống.'
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
    header('location: ../users-add.php');
?>