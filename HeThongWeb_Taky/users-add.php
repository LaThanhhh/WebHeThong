<?php
    // Start the session.
    session_start();
    if (!isset($_SESSION['user'])) header('location: login.php');
    $_SESSION['table'] = 'taikhoan';
    $user = $_SESSION['user'];
    $users = include('Database/show-users.php');
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Taky - Food Management System</title>
        <link rel="stylesheet" type="text/css" href="./CSS/hethong.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.35.4/css/bootstrap-dialog.min.css" integrity="sha512-PvZCtvQ6xGBLWHcXnyHD67NTP+a+bNrToMsIdX/NUqhw+npjLDhlMZ/PhSHZN4s9NdmuumcxKHQqbHlGVqc8ow==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <div id="dashboardMainContainer">
            <?php include("./Partials/app-sidebar.php") ?>
            <div class="dashboard_content_container" id="dashboard_content_container">
                <?php include("./Partials/app-topnav.php") ?>
                <div class="dashboard_content">
                    <div class="dashboard_content_main">
                        <div class="row">
                            <div class="column column-5">
                                <h2 class="section_header"><i class="fa fa-plus"></i>  Tạo Tài Khoản</h2>
                                <div id="userAddFormContainer">
                                    <form action="Database/add.php" method="post" class="appForm">
                                        <div class="appFormInputContainer">
                                            <label for="hoten">Họ và Tên</label>
                                            <input type="text" id="hoten" class="appFormInput" name="hoten" />
                                        </div>
                                        <div class="appFormInputContainer">
                                            <label for="tendangnhap">Tên tài khoản</label>
                                            <input type="text" id="tendangnhap" class="appFormInput" name="tendangnhap" />
                                        </div>
                                        <div class="appFormInputContainer">
                                            <label for="matkhau">Mật khẩu</label>
                                            <input type="password" id="matkhau" class="appFormInput" name="matkhau" />
                                        </div>
                                        <div class="appFormInputContainer">
                                            <label for="email">Email</label>
                                            <input type="text" id="email" class="appFormInput" name="email" />
                                        </div>
                                        <div class="appFormInputContainer">
                                            <label for="sdt">Số điện thoại</label>
                                            <input type="text" id="sdt" class="appFormInput" name="sdt" />
                                        </div>
                                        <div class="appFormInputContainer">
                                            <label for="diachi">Địa chỉ</label>
                                            <input type="text" id="diachi" class="appFormInput" name="diachi" />
                                        </div>
                                        <button type="submit" class="appBtn"><i class="fa fa-plus"></i>   Thêm người dùng</button>
                                    </form>
                                    <?php
                                        if(isset($_SESSION['response'])){ 
                                            $response_message = $_SESSION['response']['message'];
                                            $is_success = $_SESSION['response']['success'];
                                    ?>
                                        <div class="responseMessage">
                                            <p class="responseMessage <?= $is_success ? 'responseMessage_success' : 'responseMessage_error' ?>" >
                                                <?= $response_message ?>
                                            </p>
                                        </div>
                                    <?php unset($_SESSION['response']); } ?>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="Js/script.js"></script>
        <script src="Js/Jquery/jquery-3.7.1.min.js"></script>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.35.4/js/bootstrap-dialog.js" integrity="sha512-AZ+KX5NScHcQKWBfRXlCtb+ckjKYLO1i10faHLPXtGacz34rhXU8KM4t77XXG/Oy9961AeLqB/5o0KTJfy2WiA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        
    </body>
</html>