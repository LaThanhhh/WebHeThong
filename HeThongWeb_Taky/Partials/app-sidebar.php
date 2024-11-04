<div class="dashboard_sidebar" id="dashboard_sidebar">
    <h3 class="dashboard_logo" id="dashboard_logo">TAKY</h3>
    <div class="dashboard_sidebar_user">
        <img src="Images/nha.png" alt="User image." id="userImage"/>
        <span><?= $user['hoten']?></span>
    </div>
    <div class="dashboard_sidebar_menus">
        <ul class="dashboard_menu_lists">
            <li class="liMainMenu">
                <a href="./hethong.php"><i class="fa fa-dashboard"></i><span class="menuText">Bảng điều khiển</span></a>
            </li>
            <li class="liMainMenu">
                <a href="javascript:void(0);" class="showHideSubMenu">
                    <i class="fa fa-box showHideSubMenu"></i>
                    <span class="menuText showHideSubMenu">Sản phẩm</span>
                    <i class="fa fa-angle-left mainMenuIconArrow showHideSubMenu"></i>
                </a>
                <ul class="subMenus">
                    <li><a class="subMenuLink" href="#"><i class="fa fa-circle-o"></i>Danh sách sản phẩm</a></li>
                    <li><a class="subMenuLink" href="#"><i class="fa fa-circle-o"></i>Thêm sản phẩm</a></li>
                </ul>
            </li>
            <li class="liMainMenu">
                <a href="javascript:void(0);" class="showHideSubMenu">
                    <i class="fa fa-truck showHideSubMenu"></i>
                    <span class="menuText showHideSubMenu">Đơn hàng</span>
                    <i class="fa fa-angle-left mainMenuIconArrow showHideSubMenu"></i>
                </a>
                <ul class="subMenus">
                    <li><a class="subMenuLink" href="./donhang-ds.php"><i class="fa fa-circle-o"></i>Danh sách đơn hàng</a></li>
                    <li><a class="subMenuLink" href="./view-order.php"><i class="fa fa-circle-o"></i>Thêm đơn hàng</a></li>
                </ul>
            </li>
            <li class="liMainMenu showHideSubMenu">
                <a href="javascript:void(0);" class="showHideSubMenu">
                    <i class="fa fa-user-plus showHideSubMenu"></i>
                    <span class="menuText showHideSubMenu">Người dùng</span>
                    <i class="fa fa-angle-left mainMenuIconArrow showHideSubMenu"></i>
                </a>
                <ul class="subMenus">
                    <li><a class="subMenuLink" href="./users-view.php"><i class="fa fa-circle-o"></i>Danh sách người dùng</a></li>
                    <li><a class="subMenuLink" href="./users-add.php"><i class="fa fa-circle-o"></i>Thêm người dùng</a></li>
                </ul>
            </li>
        </ul>
        </ul>
    </div>
</div>