<?php
    // Start the session.
    session_start();
    if (!isset($_SESSION['user'])) header('location: login.php');
    $_SESSION['table'] = 'mon';
    $_SESSION['redirect_to'] = 'product-add.php';
    $users = $_SESSION['user'];
    $userss = include('Database/show.php');
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Taky - Hệ Thống Quản lý</title>
        <?php include("./Partials/app-header-scripts.php")?>
          </head>
    <body>
        <div id="dashboardMainContainer">
            <?php include("./Partials/app-sidebar.php") ?>
            <div class="dashboard_content_container" id="dashboard_content_container">
                <?php include("./Partials/app-topnav.php") ?>
                <div class="dashboard_content">
                    <div class="dashboard_content_main">
                        <div class="row">
                            <div class="column column-12">
                                <h2 class="section_header"><i class="fa fa-plus"></i>  Tạo Sản Phẩm</h2>
                                <div id="userAddFormContainer">
                                    <form action="Database/add.php" method="post" class="appForm">
                                        <div class="appFormInputContainer">
                                            <label for="name_product">Tên sản phẩm</label>
                                            <input type="text" id="name_product" placeholder="Nhập tên sản phẩm..." name="name_product" />
                                        </div>
                                        <div class="appFormInputContainer">
                                            <label for="info_product">Mô tả</label>
                                            <textarea class="appFormInput productTextAreaInput" placeholder="Nhập mô tả sản phẩm..." 
                                            id="info_product" name="info_product" >

                                            </textarea>
                                        </div>
                                        <div class="appFormInputContainer">
                                            <label for="img">Hình ảnh</label>
                                            <input type="file" name="img" />
                                        </div>
                                        <div class="appFormInputContainer">
                                            <label for="price_product">Giá sản phẩm</label>
                                            <input type="text" id="price_product" class="appFormInput" name="price_product" />
                                        </div>
                                       <button type="submit" class="appBtn"><i class="fa fa-plus"></i>Tạo sản phẩm</button>
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
        </div>
        <?php include("./Partials/app-scripts.php")?>
         </body>
</html>