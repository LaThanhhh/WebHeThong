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
                            <div class="column column-7">
                                <h2 class="section_header"><i class="fa fa-list"></i>  Danh Sách Tài Khoản</h2>
                                <div class="section_content">
                                    <div class="users">
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Họ và Tên</th>
                                                    <th>Email</th>
                                                    <th>Số điện thoại</th>
                                                    <th>Địa chỉ</th>
                                                    <th>Create at</th>
                                                    <th>Update at</th>
                                                    <th>Chỉnh sửa</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach($users as $index => $user){ ?>
                                                
                                                <tr>
                                                    <td><?= $index + 1 ?></td>
                                                    <td class="hoten"><?= $user['hoten'] ?></td>
                                                    <td class="email"><?= $user['email'] ?></td>
                                                    <td class="sdt"><?= $user['sdt'] ?></td>
                                                    <td class="diachi"><?= $user['diachi'] ?></td>
                                                    <td><?= date('F d, Y', strtotime($user['create_at'])) ?></td>
                                                    <td><?= date('F d, Y', strtotime($user['update_at'])) ?></td>
                                                    <td>
                                                        <a href="" class="updateUser" data-userid="<?= $user['id'] ?>"><i class="fa fa-pencil"></i>Sửa</a>
                                                        <a href="" class="deleteUser" data-userid="<?= $user['id'] ?>" data-fname="<?= $user['hoten'] ?>"><i class="fa fa-trash"></i>Xóa</a>
                                                    </td>
                                                </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
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

                        if(classList.contains('deleteUser')){
                            e.preventDefault();
                            userId =targetElement.dataset.userid;
                            fname =targetElement.dataset.fname;

                            BootstrapDialog.confirm({
                                type: BootstrapDialog.TYPE_DANGER,
                                message: 'Bạn có chắc xóa ' + fname + '?',
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

                        if(classList.contains('updateUser')){
                            e.preventDefault();
                            
                            //Get data
                            userId =targetElement.dataset.userid;
                            hoten = targetElement.closest('tr').querySelector('td.hoten').innerHTML;
                            email = targetElement.closest('tr').querySelector('td.email').innerHTML;
                            sdt = targetElement.closest('tr').querySelector('td.sdt').innerHTML;
                            diachi = targetElement.closest('tr').querySelector('td.diachi').innerHTML;

                            BootstrapDialog.confirm({
                                title: "Cập nhật " + hoten,
                                message: '<form>\
                                    <div class="form-group">\
                                        <label for="hoten">Họ và tên: </label>\
                                        <input type="text" class="form-control" id="hoten_" value="'+ hoten +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="email">Email: </label>\
                                        <input type="email" class="form-control" id="email_" value="'+ email +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="sdt">Số điện thoại: </label>\
                                        <input type="text" class="form-control" id="sdt_" value="'+ sdt +'">\
                                    </div>\
                                    <div class="form-group">\
                                        <label for="diachi">Địa chỉ: </label>\
                                        <input type="text" class="form-control" id="diachi_" value="'+ diachi +'">\
                                    </div>\
                                </form>',
                                callback: function(isUpdate){
                                    if(isUpdate){
                                        $.ajax({
                                            method: 'POST',
                                            data: {
                                                userId: userId,
                                                hoten: document.getElementById('hoten_').value,
                                                email: document.getElementById('email_').value,
                                                sdt: document.getElementById('sdt_').value,
                                                diachi: document.getElementById('diachi_').value,
                                            },
                                            url: 'Database/update-user.php',
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