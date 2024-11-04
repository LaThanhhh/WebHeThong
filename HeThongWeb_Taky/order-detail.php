<?php
    // Start the session.
    session_start();
    if (!isset($_SESSION['user'])) header('location: login.php');
    
    $_SESSION['table'] = 'chitietdonhang';
    $user = $_SESSION['user'];
    $users = include('Database/show-chitietdonhang.php');
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
    <link rel="stylesheet" type="text/css" href="./CSS/login.css">
        <div id="dashboardMainContainer">
            <?php include("./Partials/app-sidebar.php") ?>
            <div class="dashboard_content_container" id="dashboard_content_container">
                <?php include("./Partials/app-topnav.php") ?>
                <div class="dashboard_content">
                    <div class="dashboard_content_main">
                        <div class="row">
                            <div class="column column-12">
                                <h2 class="section_header"><i class="fa fa-list"></i> Chi tiết đơn hàng</h2>
                                <div class="section_content">
                                    <div class="poListContainer">
                                        <?php 
                                            $stmt = $conn->prepare("SELECT donhang.tenkhachhang, donhang.tongtien, mon.hinhmon, chitietdonhang.tenmon, chitietdonhang.gia, chitietdonhang.soluong, chitietdonhang.madonhang
                                                    FROM chitietdonhang, mon, donhang
                                                    WHERE chitietdonhang.mamon = mon.id
                                                       AND
                                                        chitietdonhang.madonhang = donhang.id
                                                    ");
                                            $stmt->execute();
                                            $detail_orders = $stmt->fetchAll(PDO::FETCH_ASSOC);

                                            $data = [];
                                            foreach ($detail_orders as $detail_order) {
                                                $data[$detail_order["madonhang"]][] = $detail_order;
                                            }
                                        ?>

                                        <?php
                                            foreach($data as $madonhang_ => $madonhang_pos){
                                        ?>
                                            <div class="poList">
                                                <p>Mã đơn hàng: # <?= $madonhang_ ?></p>
                                                <?php if (isset($madonhang_pos['tongtien'])) : ?>
                                                    <p class="tongtien_ct"><?= $madonhang_pos['tongtien'] ?></p>
                                                <?php endif; ?>
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Tên Khách hàng</th>
                                                            <th>Hình món</th>
                                                            <th>Tên món</th>
                                                            <th>Giá</th>
                                                            <th>Số lượng</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php foreach($madonhang_pos as $index => $madonhang_po){?>
                                                            <?php if ($index !== 'tongtien') : ?>
                                                                <tr>
                                                                    <td><?= $index + 1 ?></td>
                                                                    <td class="tenkhachhang"><?= $madonhang_po['tenkhachhang'] ?></td>
                                                                    <td class="hinhmon">
                                                                        <?php if (strpos($madonhang_po['hinhmon'], 'http') === 0) : ?>
                                                                            <img class="img" src="<?= $madonhang_po['hinhmon'] ?>">
                                                                        <?php elseif (file_exists('Images/' . $madonhang_po['hinhmon'])) : ?>
                                                                            <img class="img" src="Images/<?= $madonhang_po['hinhmon'] ?>">
                                                                        <?php else : ?>
                                                                            <p>Không tìm thấy ảnh</p>
                                                                        <?php endif; ?>
                                                                    </td>
                                                                    <td class="tenmon"><?= $madonhang_po['tenmon'] ?></td>
                                                                    <td class="gia"><?= $madonhang_po['gia'] ?></td>
                                                                    <td class="soluong"><?= $madonhang_po['soluong'] ?></td>
                                                                </tr>
                                                            <?php endif; ?>
                                                        <?php } ?>

                                                    </tbody>
                                                </table>
                                                <div class="poCapNhatDonHangBtnContainer alignRight">
                                                    <button class="appbtn capnhatPoBtn">Cập nhật</button>
                                                </div>
                                                
                                            </div>
                                        <?php } ?>
                                    </div>
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
        <script>
            function script(){


                this.initialize = function(){
                    this.registerEvents();
                },

                this.registerEvents = function(){
                    document.addEventListener('click', function(e){
                        targetElement = e.target;
                        classList =targetElement.classList;

                        if(classList.contains('deleteOrder')){
                            e.preventDefault();
                            userId =targetElement.dataset.userid;
                            fname =targetElement.dataset.fname;

                            BootstrapDialog.confirm({
                                type: BootstrapDialog.TYPE_DANGER,
                                message: 'Bạn có chắc xóa đơn hàng này?',
                                callback: function(isDelete){
                                    $.ajax({
                                        method: 'POST',
                                        data: {
                                            user_id: userId,
                                            f_name: fname
                                        },
                                        url: 'Database/delete-user.php',
                                        dataType: 'json',
                                        success: function(data){
                                            if(data.success)
                                            {
                                                if(data.success){
                                                    BootstrapDialog.alert({
                                                        type: BootstrapDialog.TYPE_SUCCESS,
                                                        message: data.message,
                                                        callback: function(){
                                                            location.reload();
                                                        }
                                                    });
                                                }
                                                else
                                                {
                                                    BootstrapDialog.alert({
                                                        type: BootstrapDialog.TYPE_DANGER,
                                                        message: data.message,
                                                    });
                                                }
                                            }
                                        }
                                    });
                                }
                            })
                        }

                        if(classList.contains('updateOrder')){
                            e.preventDefault();
                            
                            //Get data
                            userId =targetElement.dataset.userid;
                            tenkhachhang = targetElement.closest('tr').querySelector('td.tenkhachhang').innerHTML;
                            email = targetElement.closest('tr').querySelector('td.email').innerHTML;
                            sodienthoai = targetElement.closest('tr').querySelector('td.sodienthoai').innerHTML;
                            tongtien = targetElement.closest('tr').querySelector('td.tongtien').innerHTML;
                            trangthai = targetElement.closest('tr').querySelector('td.trangthai').innerHTML;
                            ghichu = targetElement.closest('tr').querySelector('td.ghichu').innerHTML;
                            ngaydat = targetElement.closest('tr').querySelector('td.ngaydat').innerHTML;

                            BootstrapDialog.confirm({
                                title: "Cập nhật " + hoten,
                                message: '<form>\
                                    <div class="form-group">\
                                        <label for="tenkhachhang">Tên khách hàng: </label>\
                                        <input type="text" class="form-control" id="tenkhachhang_" value="'+ tenkhachhang +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="email">Email: </label>\
                                        <input type="email" class="form-control" id="email_" value="'+ email +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="sodienthoai">Email: </label>\
                                        <input type="text" class="form-control" id="sodienthoai_" value="'+ sodienthoai +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="tongtien">Tổng tiền: </label>\
                                        <input type="number" class="form-control" id="tongtien_" value="'+ tongtien +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="trangthai">Trạng thái: </label>\
                                        <input type="text" class="form-control" id="trangthai_" value="'+ trangthai +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="ghichu">Ghi chú: </label>\
                                        <input type="text" class="form-control" id="ghichu_" value="'+ ghichu +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="ngaydat">Ngày: </label>\
                                        <input type="text" class="form-control" id="ngaydat_" value="'+ ngaydat +'">\
                                    </div>\
                                </form>',
                                callback: function(isUpdate){
                                    if(isUpdate){
                                        $.ajax({
                                            method: 'POST',
                                            data: {
                                                userId: userId,
                                                tenkhachhang: document.getElementById('tenkhachhang_').value,
                                                email: document.getElementById('email_').value,
                                                sodienthoai: document.getElementById('sodienthoai_').value,
                                                tongtien: document.getElementById('tongtien_').value,
                                                trangthai: document.getElementById('trangthai_').value,
                                                ghichu: document.getElementById('ghichu').value,
                                                ngaydh: document.getElementById('ngaydh_').value,
                                            },
                                            url: 'Database/update-order.php',
                                            dataType: 'json',
                                            success: function(data){
                                                if(data.success){
                                                    BootstrapDialog.alert({
                                                        type: BootstrapDialog.TYPE_SUCCESS,
                                                        message: data.message,
                                                        callback: function(){
                                                            location.reload();
                                                        }
                                                    });
                                                }
                                                else
                                                {
                                                    BootstrapDialog.alert({
                                                        type: BootstrapDialog.TYPE_DANGER,
                                                        message: data.message,
                                                    });
                                                }
                                            }
                                        });
                                    }
                                }
                            })
                        }
                        
                    });
                }
            }

            var script = new script;
            script.initialize();
        </script>
       
    </body>
</html>