<?php
    // Start the session.
    session_start();
    if (!isset($_SESSION['user'])) header('location: login.php');
    $user = $_SESSION['user'];
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Taky - Trang Quản Trị</title>
        <link rel="stylesheet" type="text/css" href="./CSS/hethong.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    </head>
    <body>
        <div id="dashboardMainContainer">
            <?php include("./Partials/app-sidebar.php") ?>
            <div class="dashboard_content_container" id="dashboard_content_container">
                <?php include("./Partials/app-topnav.php") ?>
                <div class="dashboard_content">
                    <div class="dashboard_content_main">

                    </div>
                </div>
            </div>
        </div>

        <script src="Js/script.js"></script>
    </body>
</html>