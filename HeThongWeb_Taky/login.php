<?php
    session_start();

    $error_message = "";
    if($_POST){
        include('Database/connection.php');

        $username = $_POST['username'];
        $password = $_POST['password'];

        $query = 'SELECT * FROM taikhoan WHERE taikhoan.tendangnhap="'. $username .'" AND taikhoan.matkhau="'. $password .'"';
        $stmt = $conn->prepare($query);
        $stmt->execute();

        if($stmt->rowCount() > 0){
            $stmt->setFetchMode(PDO::FETCH_ASSOC);
            $user = $stmt->fetchAll()[0];
            $_SESSION['user'] = $user;

            header('Location: hethong.php');
        }else $error_message = 'Vui long nhap dung Username va Password!';
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <title>TAKY Đang Nhập - Hệ Thống Quản lý</title>

        <link rel="stylesheet" type="text/css" href="css/login.css">
    </head>
    <body id="loginBody">
        <?php if(!empty($error_message)) { ?>
            <div id="errorMessage">
                <strong>Error: </strong> <p><?= $error_message?></p>
            </div>
        <?php } ?>        
        <div class="container">
            <div class="loginHeader">
                <h1>TAKY</h1>
                <p>Management System</p>
            </div>
            <div class="loginBody">
                <form action="login.php" method="post">
                    <div class="loginInputsContainer">
                        <label for="">Tên đăng nhập</label>
                        <input placeholder="Tên đăng nhập" name="username" type="text"/>
                    </div>
                    <div class="loginInputsContainer">
                        <label for="">Mật khẩu</label>
                        <input placeholder="Mật khẩu" name="password" type="password"/>
                    </div>
                    <div class="loginButtonContainer">
                        <button>Đăng nhập</button>
                    </div>

                </form>
            </div>
        </div>
    </body>
</html>
