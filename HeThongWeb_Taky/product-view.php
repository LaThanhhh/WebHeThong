<?php
    // Start the session.
    session_start();
    if (!isset($_SESSION['user'])) header('location: login.php');
    $_SESSION['table'] = 'mon';
    $_SESSION['redirect_to'] = 'product-view.php';
    $users = $_SESSION['user'];
    $products = include('Database/show.php');
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Taky - Food Management System</title>
        <?php include('./Partials/app-header-scripts.php'); ?>
    </head>
    <body>
        <div id="dashboardMainContainer">
            <?php include('./Partials/app-sidebar.php')?>
            <div class="dasboard_content_container" id="dasboard_content_container">
                <?php include('./Partials/app-topnav.php')?>
                <div class="dashboard_content">
                    <div class="dashboard_content_main">
                        <div class="row">
                            <div class="column column-12">
                                <h2 class="section_header"><i class="fa fa-list"></i>Danh sách sản phẩm</h2>
                                <div class="section_content">
                                    <div class="product">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>id</th>
                                                    <th>Tên sản phẩm</th>
                                                    <th>Giá sản phẩm</th>
                                                    <th>Hình sản phẩm</th>
                                                    <th>Mô tả</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach($products as $index => $product){ ?>
                                                    <tr>
                                                        <td><?= $index + 1 ?></td>
                                                        <td class="ID"><?=$product['id']?></td>
                                                        <td class="Tên sản phẩm"><?=$product['name_product']?></td>
                                                        <td class="Giá sản phẩm"><?=$product['price_product']?></td>
                                                        <td class="Hình sản phẩm">
                                                            <img class="img" src="upload/product/<?= $product['img']?>" >
                                                        </td>
                                                        <td class="Mô tả"><?=$product['info_product']?></td>
                                                        <td>
                                                            <a href="" class="updateProduct" data-proid="<?=$product['id']?>"><i class="fa 
                                                            fa-pencil"></i> Edit</a>
                                                            <a href="" class="deleteProduct" data-proid="<?=$product['id']?>"><i class="fa 
                                                            fa-trash"></i> Delete</a>
                                                        </td>
                                                    </tr>
                                                    <?php }?>
                                            </tbody>
                                        </table>
                                        <p class="ProductCount"><?=count($products)?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php include('./Partials/app-scripts.php') ?>
    <script>
    </script>
    </body>
</html>