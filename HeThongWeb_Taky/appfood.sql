-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 09, 2024 lúc 10:01 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appfood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acc_admin`
--

CREATE TABLE `acc_admin` (
  `id` int(11) NOT NULL,
  `user_admin` varchar(100) NOT NULL,
  `pass_admin` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `acc_admin`
--

INSERT INTO `acc_admin` (`id`, `user_admin`, `pass_admin`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(10) NOT NULL,
  `madonhang` int(10) NOT NULL,
  `mamon` int(10) NOT NULL,
  `tenmon` varchar(100) NOT NULL,
  `gia` double NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `mamon`, `tenmon`, `gia`, `soluong`) VALUES
(12, 29, 10, 'Bún bò Huế chay', 25000, 2),
(13, 29, 4, 'Cơm tấm đặc biệt', 35000, 11),
(14, 30, 7, 'Nước ép cam', 15000, 1),
(15, 31, 9, 'Cơm gà xối mỡ', 30000, 1),
(16, 32, 2, 'Cơm tấm sườn trứng', 27000, 3),
(17, 32, 7, 'Nước ép cam', 15000, 1),
(18, 33, 8, 'Nước ép chanh', 15000, 1),
(19, 34, 5, 'Khoai tây chiên', 15000, 184),
(20, 35, 7, 'Nước ép cam', 15000, 2),
(21, 36, 9, 'Cơm gà xối mỡ', 30000, 10),
(22, 36, 8, 'Nước ép chanh', 15000, 10),
(23, 37, 1, 'Cơm tấm sườn', 25000, 10),
(24, 37, 6, 'Phô mai que', 15000, 1),
(25, 39, 11, 'Chả giò chay', 20000, 5),
(26, 40, 2, 'Cơm tấm sườn trứng', 27000, 1),
(27, 41, 11, 'Chả giò chay', 20000, 14),
(28, 42, 12, 'Gà rán', 30000, 15),
(29, 42, 7, 'Nước ép cam', 15000, 10),
(30, 42, 8, 'Nước ép chanh', 15000, 5),
(31, 43, 10, 'Bún bò Huế chay', 25000, 10),
(32, 44, 12, 'Gà rán', 30000, 6),
(33, 45, 67, 'Trà vải cam dâu', 20000, 2),
(34, 46, 34, 'Dê tái chanh', 350000, 2),
(35, 47, 10, 'Bún bò Huế chay', 25000, 5),
(36, 48, 14, 'Cơm cháy', 15000, 1),
(37, 49, 10, 'Bún bò Huế chay', 25000, 5),
(38, 50, 38, 'Đậu tẩm hành', 70000, 66),
(39, 51, 5, 'Khoai tây chiên', 15000, 50),
(40, 52, 17, 'Cơm gà tam kỳ', 15000, 200),
(41, 52, 27, 'Bánh canh hẹ', 30000, 5),
(42, 53, 56, 'Canh rau xà lách xoong nấu nấm chay', 40000, 5),
(43, 54, 21, 'Bánh chuối chiên', 5000, 5),
(44, 55, 1, 'Pizza hải sản đào', 169000, 1),
(45, 56, 2, 'Pizza hải sản Pesto xanh', 169000, 5),
(46, 57, 5, 'Pizza Thịt Nguội Kiểu Canada', 139000, 1000000),
(47, 58, 14, 'Pizza Phô Mai', 119000, 10),
(48, 59, 21, 'Bánh chuối chiên', 5000, 5),
(49, 60, 9, 'Pizza Hải Sản Nhiệt Đới', 149000, 1),
(50, 61, 48, 'Phở bò', 35000, 8),
(51, 62, 2, 'Cơm tấm sườn trứng', 27000, 1),
(52, 63, 7, 'Nước ép cam', 15000, 1),
(53, 64, 58, 'Gỏi xoài chay', 40000, 1),
(54, 65, 52, 'Chè bưởi', 10000, 9),
(55, 66, 6, 'Phô mai que', 15000, 2),
(56, 66, 14, 'Cơm cháy', 15000, 2),
(57, 67, 6, 'Phô mai que', 15000, 2),
(58, 67, 14, 'Cơm cháy', 15000, 2),
(59, 68, 50, 'Hủ tiếu bò kho', 35000, 1),
(60, 69, 9, 'Cơm gà xối mỡ', 40000, 3),
(61, 70, 67, 'Trà vải cam dâu', 20000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `hinhdanhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `hinhdanhmuc`) VALUES
(1, 'Món chính', 'https://tse3.mm.bing.net/th?id=OIP.bHBzxX5-pZzYbBZ_mwDApgHaHa&pid=Api&P=0&h=180'),
(2, 'Ăn vặt', 'https://tse2.mm.bing.net/th?id=OIP.5gQw7RZw73kALgN9zwyJDgHaHa&pid=Api&P=0&h=180'),
(3, 'Thức uống', 'https://tse1.mm.bing.net/th?id=OIP.5dz7zA3_wTYB93XzUl_KogHaGR&pid=Api&P=0&h=180'),
(4, 'Món chay', 'https://tse4.mm.bing.net/th?id=OIP.CLENe-iwFSyjo6Q4m7EfjAHaHN&pid=Api&P=0&h=180');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(10) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `tongtien` double NOT NULL,
  `ghichu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `email`, `sodienthoai`, `tongtien`, `ghichu`) VALUES
(45, 'thảo', 'nguynthao@gmail.com', '1234567890', 40000, 'nhanh nha sốpp'),
(46, 'Nhã nhã', 'nha@gmail.com', '0972514001', 700000, 'Ăn Thảo tái chanh'),
(47, 'Văn Nam', 'nam@gmail.com', '8564883187', 125000, 'nhanh Sốp ơi em sắp chếc đói r'),
(48, 'thao', 'thao@gmail.com', '1234567891', 15000, 'nhanhhhh'),
(49, 'thao', 'thao@gmail.com', '1234567891', 125000, 'nhanh'),
(50, 'thao', 'thao@gmail.com', '1254367802', 4620000, ''),
(51, 'Nguyn Thảo', 'thaocute@gmail.com', '1245783961', 750000, 'Sốp ơi nhanh nha em sắp xỉu gòii'),
(52, 'thảo', 'thao@gmail.com', '6254378912', 3150000, 'nhanh'),
(53, 'thao', 'thao@gmail.com', '1346728519', 200000, ''),
(54, 'thao', 'thao@gmail.com', '4276439051', 25000, ''),
(55, 'đào', 'dao@gmail.com', '1564567695', 169000, 'lẹ lẹ'),
(56, 'memaybeo', 'memaybeo@gmail.com', '2457689032', 845000, 'memaybeo'),
(57, 'Thao', 'thao@gmail.com', '1234567890', 1561046528, 'thân tặng trẻ em vùng cao'),
(58, 'thanh', 'thanh@gmail.com', '1254367891', 1190000, 'lẹ lẹ'),
(59, 'g', 'abc@gmail.com', '8', 25000, 'g\ng\n\n'),
(60, 'thao', 'thao@gmail.com', '8643188219', 149000, 'nhanhhh'),
(61, 'thao', 'thao@gmail.com', '8348618624', 280000, ''),
(62, 'theo', 'theo@gmail.com', '1342750965', 27000, ''),
(63, 'thao', 'thao@gmail.com', '8318275309', 15000, ''),
(64, 'nhã', 'nha@gmail.com', '3464095126', 40000, ''),
(65, 'thao', 'thao@gmail.com', '0955381573', 90000, ''),
(66, 'ngoc', 'ngoc@gmail.com', '0303003303', 60000, 'thêm tương'),
(67, 'ngoc', 'ngoc@gmail.com', '0303003303', 60000, 'thêm tương'),
(68, 'thao', 'thao@gmail.com', '3784019482', 35000, ''),
(69, 'thanh', 'thanh@gmail.com', '1234657892', 120000, 'nhanh nhan he'),
(70, 'theotheo', 'thao@gmail.com', '0952483189', 40000, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `mamon` int(10) NOT NULL,
  `hinhmon` varchar(255) NOT NULL,
  `tenmon` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` double NOT NULL,
  `ngaythem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(11) NOT NULL,
  `tenhinh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `urlhinh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `tenhinh`, `urlhinh`) VALUES
(178, 'iPhone X 256GB Gray', 'iphone-x-256gb-h2-400x460-400x460.png'),
(179, 'Samsung Galaxy S9+ 128GB HoÃ ng Kim', 'samsung-galaxy-s9-plus-128gb-vang-dong-1-400x460.png'),
(180, 'Sony Xperia XZ2', 'sony-xperia-xz2-2-400x460.png'),
(181, 'OPPO F7 128GB', 'oppo-f7-128gb-den-400x460.png'),
(182, 'Nokia 8', 'nokia-8-1-400x460.png'),
(183, 'Nokia 7 plus', 'nokia-7-plus-5-400x460.png'),
(184, 'iPad Pro 10.5 inch Wifi 64GB', 'ipad-pro-105-inch-wifi-64gb-2017-400-400x460.png'),
(185, 'Samsung Galaxy Tab A6 10.1 Spen', 'samsung-galaxy-tab-a6-101-spen-400x460.png'),
(186, 'Apple Macbook Pro Touch MPXX2SA/A i5 3.1GHz/8GB/256GB', 'apple-macbook-pro-touch-mpxx2sa-a-450x300-450x300.jpg'),
(187, 'Asus GL503GE i7 8750H/8GB/1TB+128GB/4GB GTX1050Ti/Win10/(EN021T)', 'asus-gl503ge-en021t-19-600x600.jpg'),
(188, 'Asus UX430UA i5 8250U/8GB/256GB/Win10/(GV334T)', 'asus-ux430ua-i5-8250u-gv334t-dai-dien-450x300.jpg'),
(189, 'Tai nghe nhÃ©t trong Samsung EG920B', 'tai-nghe-nhet-trong-samsung-eg920b-11-300x300.jpg'),
(190, 'á»p lÆ°ng iPhone X Nhá»±a dáº»o Solid in hÃ¬nh JM JM1802282 ChuÃ´Ì£t Lang', 'op-lung-iphone-x-nhua-deo-solid-in-hinh-jm-jm180221-600x600.jpg'),
(191, 'Samsung Gear VR3', 'kinh-thuc-te-ao-samsung-gear-vr-sm-r325-400x400.png'),
(192, 'BÃºt cáº£m á»©ng Apple Pencil', 'apple-pencil-10-400x460.png'),
(193, 'Samsung Gear Fit2 Pro', 'samsung-gear-fit2-pro-2-330x330.png'),
(194, 'Apple Watch S1, 38mm, viá»n nhÃ´m, dÃ¢y cao su mÃ u tráº¯ng', 'apple-watch-edition-38mm-122-330x330.png'),
(195, 'Samsung Gear S3 Frontier', 'samsung-gear-s3-frontier-lte-400x460.png'),
(196, 'á»šI   ÄÃNH GIÃ   Máº¸O HAY   THá»Š TRÆ¯á»œNG   CUá»˜C Sá»NG Sá»   GAME - APP   Sá»° KIá»†N ÄÄƒng nháº­p Cá»˜NG Äá»’NGBETA ÄÃ£ cÃ³ MIUI 10 Global Beta 8.7.5 cho 8 thiáº¿t bá»‹ Xiaomi, báº¡n Ä‘Ã£ nÃ¢ng cáº¥p?', '4_1280x720-800-resize.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon`
--

CREATE TABLE `mon` (
  `id` int(10) NOT NULL,
  `madanhmuc` int(10) NOT NULL,
  `tenmon` varchar(100) NOT NULL,
  `hinhmon` varchar(255) NOT NULL,
  `gia` double NOT NULL,
  `mota` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mon`
--

INSERT INTO `mon` (`id`, `madanhmuc`, `tenmon`, `hinhmon`, `gia`, `mota`) VALUES
(1, 1, 'Cơm tấm sườn', 'https://img-global.cpcdn.com/recipes/49876fe80303b991/680x482cq70/c%C6%A1m-t%E1%BA%A5m-s%C6%B0%E1%BB%9Dn-recipe-main-photo.jpg', 25000, 'Cơm tấm sườn siu ngon có cơm và miếng sườn.'),
(2, 1, 'Cơm tấm sườn trứng', 'https://channel.mediacdn.vn/thumb_w/640/prupload/879/2018/10/img20181031164337363.jpg', 27000, 'Cơm tấm có cơm, miếng sườn và có thêm miếng trứng.'),
(3, 1, 'Cơm tấm sườn bì chả', 'https://pastaxi-manager.onepas.vn/content/uploads/articles/vuonghoai/cach-lam-com-tam-suon-bi-cha/cach-lam-com-tam-suon-bi-cha-1.jpg', 32000, 'Cơm tấm có cơm, miếng sường, cộng thêm bì và miếng chả siu thơm ngon.'),
(4, 1, 'Cơm tấm đặc biệt', 'https://statics.vinpearl.com/com-tam-ngon-o-sai-gon-0_1630562640.jpg', 35000, 'Cơm tấm đặc biệt có cơm và đầy đủ topping trứng, bì, chả siu thum ngon.'),
(5, 2, 'Khoai tây chiên', 'https://i.ndtvimg.com/i/2015-11/french-fries-625_625x350_61446325913.jpg', 15000, 'Khoai tây chiên giá kiểu Pháp giòn rụm màu vàng.'),
(6, 2, 'Phô mai que', 'https://cdn.shopify.com/s/files/1/0617/2497/files/fba9d5ae37d3dd37378106fe5aa1d357.jpg?v=1592534909', 15000, 'Phô mai que kéo sợi dai dai kèm tương ớt cay cay.'),
(7, 3, 'Nước ép cam', 'https://cope-cdnmed.agilecontent.com/resources/jpg/6/7/1593198983076.jpg', 15000, 'Nước cam chua ngon không quá chua nhưng ngon.'),
(8, 3, 'Nước ép chanh', 'https://www.hoangbeo.com/wp-content/uploads/chanh-tuoi.jpg', 15000, 'Chúng tôi gọi nó là Lemonade vì nó là nước chanh.'),
(9, 1, 'Cơm gà xối mỡ', 'https://bazantravel.com/cdn/medias/uploads/78/78876-60791265_144936746636954_6153101288902582280_n.jpg', 40000, 'Đĩa cơm gà bày ra đĩa trông bắt mắt với phần cơm vừa đủ ăn lưng bụng, thịt gà trộn bày lên trên, trang trí thêm ít rau răm và hành tây thái mỏng cùng muối tiêu bột. Cơm gà ăn kèm với ớt tương làm tại nhà, cay đậm đà thì quả thực là đáo khẩu. Chén canh cải nấu với gừng tươi và gỏi đu đủ, cà rốt thái sợi mỏng là những thành phần hỗ trợ tuyệt vời làm tôn thêm hương vị đĩa cơm gà.\r\nNhịp sống phố cổ khiến ta muốn thưởng thức buổi trưa thong thả và khoan thai. Gắp miếng thịt gà được trộn vừa miệng và cảm nhận hạt cơm mềm dẻo đang tan dần trong miệng thì quả thực ấn tượng khó phai.'),
(10, 4, 'Bún bò Huế chay', 'https://cdn.tgdd.vn/2021/02/CookProduct/1111-1200x676-3.jpg', 25000, 'Món bún bò Huế chay đặc trưng bởi nước dùng thơm cay mùi sa tế sả băm, cùng vị ngọt tự nhiên của các loại rau củ. Nhân nấm thơm mềm, đậu hũ chiên giòn mềm, đậu hũ ky giòn tan, thêm chả chay dai dai thật hấp dẫn.'),
(11, 4, 'Chả giò chay', 'https://yummyday.vn/uploads/images/cha-gio-chay-2.jpg', 20000, 'Ăn chay giúp tâm hồn thanh tịnh, tĩnh tâm và cũng tốt cho sức khỏe hơn. Mặc dù chế độ ăn chay loại trừ hoàn toàn các thực phẩm có nguồn gốc từ động vật, nhưng các món chay vẫn phải đảm bảo đầy đủ chất dinh dưỡng cần thiết và được chế biến sáng tạo để luôn thơm ngon và hấp dẫn.\r\n\r\nChả giò chay là một trong các món ăn vừa ngon miệng, vừa bổ dưỡng giúp gia đình bạn thay đổi khẩu vị trong những ngày ăn chay thanh tịnh. Với cách làm chả giò chay, bạn có thể chế biến thành món ăn nhẹ hoặc ăn kèm với bún như bữa ăn chính, cuốn với rau sống, chấm kèm với nước tương cay hay nước mắm chua ngọt cũng rất cuốn hút.'),
(12, 2, 'Gà rán', 'https://cdn.tgdd.vn/Files/2019/05/31/1170182/cach-lam-ga-chien-bot-gion-tan-voi-bot-chien-gion-aji-quick-202107171416301335.jpg', 30000, 'KFC xuất hiện lần đầu ở Việt Nam vào năm 1997, khi mà khái niệm “fast food\" - thức ăn nhanh còn vô cùng xa lạ ở nước mình. Từ việc thua lỗ liên tục suốt 7 năm đầu tiên đặt chân khai phá thị trường, hiện nay KFC đã vươn vai trở thành 1 trong 2 ông lớn giữ thị phần cao nhất trong ngành kinh doanh đồ ăn nhanh ở xứ sở hơn 90 triệu dân này.\r\n\r\nCó thể nói, KFC không chỉ mang đến một lựa chọn thực phẩm mới cho người Việt, nó còn góp phần tạo nên một thói quen ăn uống mới cho chúng ta. Không quá khi nói, đối với một bộ phận giới trẻ hiện nay, fast food không còn đơn thuần chỉ là thức ăn, mà hơn thế, nó dường như đã trở thành thị hiếu, thành nếp sống của một thế hệ kế thừa năng động.'),
(13, 1, 'Cháo lòng', 'https://i.pinimg.com/564x/be/7c/ae/be7cae27919c7a702e63d4728e6c68df.jpg', 20000, 'Nguyên liệu cho 4 phần ăn: Gạo 200 gr Nước dùng gà 2 lít Muối 10 gr Hạt nêm 10 gr Nước mắm 15 ml Tiêu 5 gr Huyết heo 30 ml (huyết tươi) Huyết heo 100 gr Tim heo 100 gr Lòng heo 100 gr Da heo 50 gr Gan heo 100 gr Gừng 50 gr Ớt 50 gr'),
(14, 1, 'Cơm cháy', 'https://i.pinimg.com/564x/ba/19/1b/ba191b897ddfbaff40682e389df11584.jpg', 15000, 'Cách làm cơm cháy chiên mắm ớt được rất nhiều người ưa chuộng vì cơm cháy nóng giòn thơm ngon mà cách làm và nguyên liệu thì vô cùng đơn giản.'),
(15, 1, 'Cơm chiên', 'https://i.pinimg.com/564x/45/e0/be/45e0be861757c8fc1fbb6189aaca7f1a.jpg', 20000, 'Hãy để tôi chỉ cho bạn cách làm món cơm chiên Dương Châu dễ dàng nhé! Đây là món cơm chiên kiểu Trung Quốc. Nó rất phổ biến và ngon'),
(16, 3, 'Trà sữa trân châu', 'https://i.pinimg.com/564x/e4/6c/50/e46c505ffc558bbdef893122a1db7416.jpg', 25000, 'Bật mí 45 công thức pha chế năm 2022 đang làm chao đảo cộng đồng giới trẻ hiện nay. Những bí quyết chỉ có Barista biết được sẽ hé lộ trong bài tham khảo sau đây !'),
(17, 1, 'Cơm gà tam kỳ', 'https://i.pinimg.com/564x/d1/c5/31/d1c531f3706c922c61e1efdb80b10128.jpg', 15000, 'CƠM GÀ TAM KỲ Nguyên liệu: -Gà ta: 1 con -Bột nghệ: 2mcf -Gạo khô: 1kg -Tỏi băm: 1mc -Rau : húng lủi, rau răm -Đu đủ + cà rốt bào sợi: 200g -Ớt tương Hội An: 100g -Nước tương -Chanh tươi -Gia vị: nước mắm, đường, hạt nêm, muối, tiêu…. Cách làm: -Gà luộc cùng với 1mcf bột nghệ, vài lá chanh. Gà chín để nguội, xé phay hoặc chặt nhỏ tùy ý. -Gạo vo sạch, để ráo. -Cho vào chảo ít dầu ăn, phi vàng tỏi, cho gạo vào xào, cho vào ít nước luộc gà và 1mcf bột nghệ vào trộn đều. Tắt bếp, sang gạo vào nồi cơm'),
(18, 2, 'Xúc xích que', 'https://i.pinimg.com/736x/5b/a4/6d/5ba46db12d55c3ef796d653b7c1ca670.jpg', 15000, 'Xúc xích nướng Xúc xích chiên. Xúc xích (tiếng Anh: Sausage) là một loại thực phẩm chế biến từ thịt (thông thường và chủ yếu là thịt heo) bằng phương pháp dồi (nhồi thịt và dồn vào một bì) '),
(19, 2, 'Cá viên chiên', 'https://i.pinimg.com/564x/02/d5/47/02d5470c623ed12f46d2c0f78ef03e29.jpg', 15000, 'Vậy để xây dựng cơ sở sản xuất cá viên chiên, các doanh nghiệp cần nắm rõ quy mô của cơ sở mình có cần phải lập kế hoạch bảo vệ môi trường cho cơ sở sản xuất cá viên chiên không'),
(20, 2, 'Bánh tráng trộn', 'https://i.pinimg.com/564x/62/b0/58/62b05832fae87fdabf74517176f30c1f.jpg', 20000, 'Chỉ cần đảo một vòng thì bạn sẽ dễ dàng bắt gặp được những chiếc xe bán bánh tráng trộn trong một con hẻm nào đó. Tuy nhiên, trong bài viết này, Thích Cay sẽ giúp bạn có thể tự tay làm ngay món Bánh Tráng Trộn Jambon Sốt Sa Tế siêu ngon ngay tại nhà. Cùng theo dõi nhé!'),
(21, 2, 'Bánh chuối chiên', 'https://i.pinimg.com/564x/26/9f/a8/269fa8de023865ec364af769691c7432.jpg', 5000, 'Bánh chuối là món rất được hay ăn sáng, ăn vặt. Để bánh chuối chiên được vàng thơm và giòn'),
(22, 3, 'Trà xoài', 'https://i.pinimg.com/564x/f1/39/31/f13931fca027939fa9b48b662d42c63b.jpg', 15000, 'Nhìn qua list này mới thấy các thức uống vị xoài có vị trí vững vàng trong lòng giới trẻ'),
(23, 3, 'Cà phê muối', 'https://i.pinimg.com/564x/43/92/4e/43924e408367826e0e603284d35e74ab.jpg', 15000, 'Cà phê kem muối là thức uống mới nổi lên trong mùa hè này, bạn đã biết cách pha chưa?'),
(24, 3, 'Trà đào', 'https://i.pinimg.com/564x/c5/12/cf/c512cffd4204a150e61eb6f2327a4988.jpg', 15000, 'Trà đào là một loại trà tuyệt vời'),
(25, 3, 'Trà sữa matcha', 'https://i.pinimg.com/564x/c8/3a/a9/c83aa93065609783bf1213d0113ef0bb.jpg', 25000, 'Nếu có một sự kết hợp giữa trà sữa và matcha thì sao nhỉ? Thật quá tuyệt phải không? Cùng Beemart mua nguyên liệu và trổ tài pha chế cách làm trà sữa matcha nhé'),
(26, 2, 'Topokki', 'https://i.pinimg.com/564x/b6/2f/04/b62f04b09c5ef011a23d64e66a9ca3f9.jpg', 15000, 'Món ăn vặt tuyệt vời'),
(27, 1, 'Bánh canh hẹ', 'https://i.pinimg.com/564x/69/32/64/693264bdb349780067e04821beb684f7.jpg', 30000, 'Phú Quốc được mệnh danh là thiên đường ẩm thực, nổi tiếng nhiều món hải sản tươi sống. Bánh canh ghẹ Phú Quốc luôn được lòng thực khách'),
(28, 2, 'Bánh tráng cuộn bơ', 'https://i.pinimg.com/564x/06/19/f7/0619f70abf7f91fe5c443534b26a6b58.jpg', 15000, 'Lớp bánh tráng phơi sương mềm dẻo được cuộn cùng các loại topping như xoài xanh, trứng cút, lạc rang, hành phi, khô bò, khô mực'),
(29, 1, 'Hủ tiếu khô', 'https://i.pinimg.com/564x/08/bc/4b/08bc4be6a1e1e3c4b53c79a8f52aac5a.jpg', 15000, 'Cách làm hủ tiếu khô và hủ tiếu nước: Một món ăn rất ngon của Nam Bộ với nhiều phiên bản khác nhau. Cách làm mình chia sẻ tại đây là theo kiểu hủ tiếu...'),
(30, 1, 'Chả mực', 'https://nauco29.com/files/thumb/767/450//uploads/content/ch%E1%BA%A3m%E1%BB%B1c.jpg', 250000, 'Chả mực tại Nấu cỗ 29 được chế biến theo phương pháp giã tay truyền thống và nặn chả thủ công, giúp cho những miếng chả có độ chắc, dai giòn và hương vị thơm ngon đậm đà rất đặc trưng Chả mực là món ăn đậm đà hương vị biển, được rất nhiều thượng khách yêu thích bởi sự dai, gòn và thơm đến từ chính những con mực. Khi thưởng thức miếng chả mực có sắc vàng rộm rất tự nhiên và đều đặn, hương thơm sực nức kết hợp vị ngọt đậm đà giàu đạm biển và độ dẻo dai tươi ngon xen lẫn những \"hạt lựu\" xắt từ vây mực và râu mực giòn sần sật sẽ chinh phục tất cả thực khách nào đã được thưởng thức.'),
(31, 1, 'Mực ống nhồi thịt', 'https://nauco29.com/files/thumb/767/450//uploads/content/muc-ong-nhoi-thit.jpg', 280000, 'Mực ống nhồi thịt là món ăn đẹp mắt, đặc biệt dùng để đãi khách trong các buôit tiệc, những bữa liên hoan cơ quan, gia đình, bạn bè... bởi sự thơm ngon lại tạo được ấn tượng từ sự “ cầu kỳ” của món ăn. Khi ăn món mực ống nhồi thịt tại Nấu cỗ 29, thực khách sẽ cảm nhận rõ vị ngọt của thịt mực, độ giòn giòn của vỏ mực cùng phần nhân đậm đà hấp dẫn được chấm với nước chấm công thức riêng. Tất cả làm tăng thêm hương vị ngọt ngọt, cay cay, mặn mặn khiến bất kì ai thưởng thức cũng hết lời khen ngợi.'),
(32, 1, 'Mực xào cần tỏi', 'https://nauco29.com/files/thumb/767/450//uploads/content/m%E1%BB%B1cx%C3%A0oc%E1%BA%A7nt%E1%BB%8Fi.jpg', 250000, 'Cách làm mực xào cần tỏi là một món ăn khá quen thuộc, nhưng bên cạnh các món truyền thống như mực xào dứa, mực xào tỏi, mực xào cà chua... thì mực xào cần tỏi tây lại mang một phong cách rất riêng, một hương vị cực tây được đem lại từ cần tỏi tây. Với vị ngọt của thịt mực cộng hưởng với hương thơm hơi hăng hăng của cần tây và chút dậy mùi đến từ tỏi sẽ cho thực khách một món mặn tuyệt vời.  Tuy là có cách làm không quá cầu kì, nhưng để làm ra Mực xào cần tỏi hoàn hảo nhất thì lại cần có bí quyết riêng để có thể giữ cho mực vẫn trọn hương vị tự nhiên với vị ngọt thanh cực chất, cực độc đáo.'),
(33, 1, 'Mực xào ngũ sắc', 'https://nauco29.com/files/thumb/767/450//uploads/content/muc-xao-ngu-sac-ngot-gion-cho-bua-toi.jpg', 250000, ''),
(34, 1, 'Dê tái chanh', 'https://nauco29.com/files/thumb/767/450//uploads/content/cach-lam-thit-de-tai-chanh-kieu-mien-bac-don-gian-ma-cuc-thom-ngon.jpg', 350000, 'Hãy đến với nhà hàng của chúng tôi để được thưởng thức những món ăn đặc sắc và hấp dẫn cùng với sự phục vụ tận tình, cởi mở từ những nhân viên của nhà hàng. Chúng tôi luôn nỗ lực để mang lại sự hoàn hảo cho bữa ăn của bạn, hãy đến và thưởng thức tại nhà hàng của chúng tôi.'),
(35, 1, 'Dê xào lăn', 'https://nauco29.com/files/thumb/767/450//uploads/content/mon-de-xao-lan.jpg', 300000, ''),
(36, 1, 'Gà hấp lá chanh', 'https://nauco29.com/files/thumb/767/450//uploads/content/g%C3%A0h%E1%BA%A5pl%C3%A1chanh.jpg', 200000, 'Gà hấp lá chanh là một món độc đáo, lạ miệng, ăn rất cuốn hút. Thịt gà kết hợp với lá chanh là một món trứ danh từ xưa, rất dễ ăn và thêm phần cuốn hút hơn khi kết hợp với vị bùi và mùi thơm dễ chịu từ lá chanh. Khi thưởng thức, thực khách sẽ cảm nhận rõ vị ngọt sắc, chắc thịt, thơm nồng đến từ thịt gà hòa quyện hoàn hảo với lá chanh – một nguyên liệu quen thuộc để tạo ra món món ăn sang trọng, rất được ưa chuộng trong những buổi tiệc tùng, đãi khách.'),
(37, 1, 'Gà hấp mã não', 'https://nauco29.com/files/thumb/767/450//uploads/content/g%C3%A0h%E1%BA%A5pm%C3%A3n%C3%A3o.jpg', 220000, ''),
(38, 1, 'Đậu tẩm hành', 'https://nauco29.com/files/thumb/767/450//uploads/content/cach-lam-ga-hap-xi-dau-1-phunutoday_vn.jpg', 70000, 'Gà sẽ được hấp nguyên con, điều này giúp gà không bị mất nước, giữ được tối đa các chất dinh dưỡng của thịt như protein, sắt, các vitamin Gà hấp với dầu mè dầu mè có rất nhiều công dụng tuyệt vời cho sức khỏe. Dầu mè trong ẩm thực được ví như nữ hoàng trong các loại dầu ăn. Bởi độ giàu dinh dưỡng của nó, trong dầu có chứa vitamin E, chất chống oxy hóa có tác dụng giải độc, thúc đẩy chữa lành tổn thương, kháng viêm và bổ sung nhiều tinh chất khác… Khi ăn, thực khách sẽ cảm nhận được hương vị thơm ngon, lôi cuốn kỳ lạ, thịt gà dày, mềm mà lại rất ngọt kết hợp với chút ngậy đến từ đầu mè chắc chắn sẽ mang lại nhiều trải nghiệm thú vị. '),
(39, 1, 'Gà hấp muối', 'https://nauco29.com/files/thumb/767/450//uploads/content/g%C3%A0h%E1%BA%A5pmu%E1%BB%91i.jpg', 200000, 'Gà hấp muối gây ấn tượng với thực khách bởi vị ngon khó cưỡng, thịt mềm, ngấm đều gia vị cộng hưởng với chút mặn mặn lạ miệng của lớp muối bên ngoài. Thịt gà kết hợp với muối có tác dụng thúc đẩy khí huyết lưu thông, tốt cho những người hay gặp vấn đề về sức khỏe hoặc mới ốm dậy.'),
(40, 1, 'Tôm rang thịt', 'https://nauco29.com/files/thumb/767/450//uploads/content/t%C3%B4mchaod%E1%BA%A7u.jpg', 200000, ''),
(41, 1, 'Tôm hấp', 'https://nauco29.com/files/thumb/767/450//uploads/content/t%C3%B4mh%E1%BA%A5p.jpg', 330000, ''),
(42, 1, 'Tôm chiên cốm', 'https://nauco29.com/files/thumb/767/450//uploads/content/t%C3%B4mchi%C3%AAnc%E1%BB%91m.jpg', 330000, ''),
(43, 1, 'Tôm xốt chua ngọt', 'https://nauco29.com/files/thumb/767/450//uploads/content/111108mbttomsotsp.jpg', 330000, 'Những món ăn có vị chua chua, ngọt ngọt là những món ăn rất dễ kích thích được vị giác. Và tôm xốt chua ngọt là một trong số những món như vậy. Tôm xốt chua ngọt ngon cơm giúp cho bữa tiệc gia đình thêm phần hấp dẫn và ấn tượng. Món tôm xốt chua ngọt với màu sắc vô cùng bắt mắt, có hương vị thơm ngon, đặc biệt bởi sự hòa quyện giữa vị ngọt của thịt tôm cùng nước xốt độc đáo, mang đến điều bất ngờ cho thực khách khi thưởng thức.'),
(44, 1, 'Lẩu Thái hải sản', 'https://nauco29.com/files/thumb/767/450//uploads/content/l%E1%BA%A9uh%E1%BA%A3is%E1%BA%A3n.jpg', 600000, ''),
(45, 1, 'Lẩu hải sản', 'https://nauco29.com/files/thumb/767/450//uploads/content/l%E1%BA%A9uh%E1%BA%A3is%E1%BA%A3n.jpg', 600000, 'Lẩu hải sản là món lẩu thường được các gia đình Việt yêu thích, nhất là những bữa tiệc liên hoan . Và cũng thật ý nghĩa hơn khi cùng bạn bè, gia đình trở nên sum vầy bên nồi lẩu hải sản nghi ngút, đậm đà hương vị hải sản và ngọt ngào của xương ống.'),
(46, 1, 'Lẩu thập cẩm', 'https://nauco29.com/files/thumb/767/450//uploads/content/l%E1%BA%A9utc.jpg', 600000, 'Với những ngày mùa đông giá rét như thế này thì món lẩu luôn được ưu tiên hàng đầu bởi vị thơm ngon, hấp dẫn từ nhiều loại thực phẩm, nóng sốt và ngọt lừ. Không chỉ thế mà món lẩu còn mang thêm hơi ấm gia đình bạn bè khi tất cả cùng quây quần bên nồi lẩu và nói chuyện vui vẻ'),
(47, 1, 'Bò hầm tiêu đen', 'https://nauco29.com/files/thumb/767/450//uploads/content/b%C3%B2h%E1%BA%A7mti%C3%AAu%C4%91en.jpg', 295000, 'Cũng giống bò xốt tiêu đen, bò hầm tiêu đen cũng là món có đủ vị thơm, ngon, ngọt, béo ngậy của thịt bò kết hợp với vị tiêu đen cùng nhiều nguyên liệu khác. Bò hầm tiêu đen được chế biến kì công hơn, cuốn hút thực khách bởi sự nóng hổi, thịt mềm, ngọt kết hợp với nước sốt thơm phức sẽ là món tuyệt vời cho bất kì ai thưởng thức. Điểm cốt yếu của món ăn là ở khâu tẩm ướt gia vị sao cho thịt bò phải chín mềm, nước sốt đậm đà và dậy thơm mùi thơm đặc trưng của thịt bò và tiêu.'),
(48, 1, 'Phở bò', 'https://bizweb.dktcdn.net/100/438/408/files/nhung-mon-an-sang-ngon-yodyvn.jpg?v=1694614915787', 35000, 'Việc bắt đầu bữa ăn bằng việc ngắt vài cọng rau thơm như húng quế, ngò gai, sau đó chấm miếng thịt bò với tương cà và tương ớt, và thêm vài miếng ớt cay, sẽ tạo ra một trải nghiệm ẩm thực không thể quên. Cảm giác hòa quyện giữa hương vị độc đáo và hương thơm của các loại rau cùng vị cay của ớt làm cho bữa ăn trở nên đặc biệt hấp dẫn.'),
(49, 1, 'Hủ tiếu sườn', 'https://bizweb.dktcdn.net/100/438/408/files/nhung-mon-an-sang-ngon-yodyvn1.jpg?v=1694614917274', 30000, 'Dành thời gian cuối tuần để thể hiện tài nấu ăn của bạn và cả gia đình sẽ được thưởng thức món hủ tiếu sườn ngon tuyệt này. Đừng bỏ lỡ cơ hội thử món ngon này, bởi bạn sẽ tiếc nuối nếu không thử một lần!'),
(50, 1, 'Hủ tiếu bò kho', 'https://bizweb.dktcdn.net/100/438/408/files/nhung-mon-an-sang-ngon-yodyvn3.jpg?v=1694614919714', 35000, 'Tô hủ tiếu với màu sắc hấp dẫn, đặc biệt với lớp nước kho đỏ rực, trên đó có những lát thịt bò mềm mịn kết hợp với cà rốt hấp dẫn. Đừng quên thêm chút rau húng quế tươi ngon vào tô và bạn sẽ có ngay một bữa sáng không thể chối từ.'),
(51, 2, 'Rong biển cháy tỏi', 'https://cdn.tgdd.vn/Files/2021/08/24/1377372/20-mon-an-vat-hot-nhat-hien-nay-ma-ban-khong-nen-bo-qua-du-chi-1-mon-202108240912559562.jpg', 25000, 'Với vị rong biển đậm đà, giòn rụm quyện cùng phần tỏi thơm lừng kết hợp cùng vị cay cay từ ớt rất kích thích,... Tất cả đã tạo nên một món ăn vặt rất hấp dẫn và thơm ngon. Món rong biển cháy tỏi được nhiều người dùng khi xem phim, nhâm nhi với bia hay dùng với cơm trắng đều rất ngon.'),
(52, 2, 'Chè bưởi', 'https://cdn.tgdd.vn/Files/2021/08/24/1377372/20-mon-an-vat-hot-nhat-hien-nay-ma-ban-khong-nen-bo-qua-du-chi-1-mon-202108240916145064.jpg', 10000, 'Nếu bạn là một tín đồ của những món ngọt thì hãy thưởng thức qua món chè bưởi thơm ngon, hấp dẫn. Món ăn này phải được chế biến rất công phu và tỉ mĩ mới cho ra được hương vị thơm nồng, giòn dai của bưởi nhưng lại không bị đắng hòa quyện cùng vị bùi của đậu xanh và điểm thêm vị béo ngậy của nước cốt dừa sẽ khiến bạn mê đắm.'),
(53, 4, 'Canh nấm hầm bí', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/canh-bi-do-nau-nam.jpg', 30000, 'Canh nấm hầm bí gồm các loại nấm như nấm đông cô, kim châm, nấm rơm, nấm hương, nấm đùi gà nấu chung với bí đỏ, súp lơ xanh. Nói đến lượng dinh dưỡng thì nấm là loại thực phẩm có lượng Calo thấp, nhưng lại có hàm lượng chất xơ và vitamin cao như B1, B2, B3, B5, B9, A, C, D, E, H, PP cùng các loại khoáng chất. Đồng thời bí đỏ được biết lại giàu Vitamin A, C. Khi nấu chung thì sẽ cung cấp và cân bằng lượng Vitamin thiếu hụt của người ăn chay.'),
(54, 4, 'Măng tươi xào đậu hủ bún tàu', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/dau-hu-xao-mang-tuoi.jpg', 35000, 'Măng tươi chứa nhiều thành phần dinh dưỡng cũng như nguyên tố vi lượng cần thiết cho cơ thể như sắt, phốt pho, canxi, protein thực vật. Đồng thời măng còn có  protid, glucid 2 dưỡng chất quan trọng trong thực phẩm rất cần cho cơ thể mà người ăn chay hay bị thiếu.'),
(55, 4, 'Khổ qua xào đậu hủ cà rốt chay', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/kho-qua-xao-dau-hu-ca-rot-chay-recipe-main-photo.jpg', 35000, 'Rau củ là món thường nhật có mặt trong món chay, kết hợp cà rốt, bắp, khổ qua tạo một món rau củ cho bữa chay đủ chất. Bổ sung vitamin A, chất sắt từ cà rốt thêm nguồn vitamin C dồi dào, nguồn Protein thay thế thịt từ khổ qua sẽ giúp người ăn chay có một hệ miễn dịch tốt nhất.'),
(56, 4, 'Canh rau xà lách xoong nấu nấm chay', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/canh-rau-xa-lach-xoong-chay.jpg', 40000, 'Canh rau xà lách xoong mang đến cho bữa ăn chất sắt từ rai và các loại vitamin A, B, C, D, E, H, PP…các khoáng chất thay cho các loại hải sản từ nấm. Canh xà lách xoong không chỉ là món ăn mà còn có tác dụng giải nhiệt rất tốt cho sức khỏe.\r\nMón canh vừa ngon, dễ ăn, lại rẻ. Rất thích hợp giải nhiệt cho mùa hè oi bức. Protein trong đậu hủ cũng giúp bạn thay thế protein trong thịt rất tốt.'),
(57, 4, 'Cà tím xào chay', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/ca-tim-xao-chay.jpg', 35000, 'Cà tím là một trong các thực phẩm chay khá giàu vitamin, khoáng chất và nhiều chất chống oxy hóa rất tốt cho sức khỏe người ăn chay.'),
(58, 4, 'Gỏi xoài chay', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/mon-goi-xoai-chay.jpg', 40000, ''),
(59, 4, 'Canh khoai mỡ chay', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/cach-lam-canh-khoai-mo-chay-thom-ngon-ma-con-giam-can-201908051524384413.jpg', 35000, 'Trong củ khoai mỡ có chứa tinh bột và là nguồn cung cấp carbohydrate, kali cũng như vitamin C. Đồng thời còn có chất béo thay cho mỡ động vật và protein thay cho thịt rất cần thiết cho người ăn chay, cùng lúc đó còn có Sắt, Canxi, vitamin A và C. Hơn thế nữa, các Flavonoid trong khoai mỡ có tác dụng giảm lượng đường trong máu rất tốt.'),
(60, 4, 'Nấm bào ngư chiên', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/nam-bao-ngu-chien.jpg', 45000, 'Nấm bào ngư ngâm nở, cắt bỏ phần chân, sau đó rửa sạch để ráo nước. Dùng một ít bột năng với nước thêm tí muối và bột ngọt. Bạn hòa tan hỗn hợp bột năng và để trong 15 phút. Đánh bột cho tan đều nhúng nấm bào ngư đã làm sạch vào. Bắc chảo dầu lên bếp cho nóng. Dầu sôi thả nấm đã nhúng bột vào chiên giòn. Nấm chiên xong cho ra giấy thấm dầu và dọn lên dĩa ăn kèm với tương ớt.'),
(61, 4, 'Dưa chuột muối', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/dua-chuot-muoi-chay.jpg', 30000, 'Lượng nước chứa đến 90%, ngoài ra là hàng loạt các khoáng chất, vitamin cần bổ sung vào cơ thể mỗi ngày mà ăn chay cần có như:\r\n– Chất xơ, vitamin C, vitamin B1, B2, B5, B6, vitamin V3,\r\n– Folic acid, magie, canxi, kali, sắt, kẽm…'),
(62, 4, 'Bắp cải cuộn', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/bap-cai-cuon-chay.jpg', 35000, 'Thực phẩm này là rất thấp trong chất béo bão hòa và cholesterol. Nó cũng là một nguồn tốt của thiamin , canxi , sắt, magiê , phốt pho và kali. Đồng thời một nguồn rất tốt của chất xơ , Vitamin C , Vitamin K , Vitamin B6 , folate và mangan.'),
(63, 4, 'Khoai tây xào', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/khoai-tay-xao.jpg', 30000, 'Trong củ khoai tây chứa một nguồn dồi dào xơ và các khoáng chất cần thiết như Vitamin B6 và kali, và một nguồn rất tốt của Vitamin C. Khoai tây chứa ít Chất béo bão hòa, cholesterol và natri nên rất tốt cho tim mạch.'),
(64, 4, 'Canh hạt sen nấm', 'https://minhhouseware.com.vn/wp-content/uploads/2020/12/canh_nam_hat_sen_2.png', 45000, 'Bên cạnh nấm chứa nhiều chất dinh duỡng và vitamin thì hạt sen có chứa carbohydrate, protein, nhưng chỉ có 1,9-2,5g mỡ. Còn lại là các thành phần khác như nước (13%), khoáng chất (chủ yếu là natri, kali, canxi, phốt pho).'),
(65, 3, 'Cafe pha phin', 'https://www.cukcuk.vn/wp-content/uploads/2019/04/cafe-pha-phin.jpg', 15000, 'Cafe – thứ thức uống vô cùng quan trọng và sẽ là món đồ uống chủ đạo đối với quán cafe truyền thống. Theo thống kê, cafe chiếm gần 50% tổng doanh thu của quán. Bạn có thể thấy trên thị trường có rất nhiều loại cafe từ truyền thống đến cafe phương tây nhưng phổ biến nhất là cafe đen, cafe sữa. Cafe được trồng trên mảnh đất Tây Nguyên – Quê hương của những hạt cafe nguyên chất.'),
(66, 3, 'Cafe pha máy', 'https://www.cukcuk.vn/wp-content/uploads/2019/04/cafe-pha-may.jpg', 20000, 'Cafe máy (cafe Italia) là nhóm đồ uống đặc thù, có vị chua thanh, dịu nhẹ hơn so với café Việt. Việc pha chế cafe máy cần đến máy pha cafe và các dụng cụ chuyên biệt. Hơn nữa, người pha cafe máy (barista) cũng cần có một trình độ kỹ năng nhất định.'),
(67, 3, 'Trà vải cam dâu', 'https://dvpmarket.com/resources/uploads/thang_102019/tra-vai-cam-dau.jpg', 20000, 'Sự kết hợp của vải, cam và dâu cùng với vị trà thơm mát sẽ giúp bạn đánh tan cái nóng mùa hè. Đây đều là những loại topping khá dễ ăn, mang đầy đủ vị ngọt, vị chua và vị thơm, đem lại một thức uống hòa quyện đủ màu sắc và hương vị đáng để bạn thưởng thức cùng bạn bè.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name_product` tinytext NOT NULL,
  `image_product` tinytext NOT NULL,
  `price_product` float NOT NULL,
  `sale_product` float NOT NULL,
  `sl_product` int(11) NOT NULL,
  `madanhmuc` int(10) NOT NULL,
  `info_product` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name_product`, `image_product`, `price_product`, `sale_product`, `sl_product`, `madanhmuc`, `info_product`) VALUES
(1, 'Cơm tấm sườn', '178', 25000, 34590000, 200, 1, 'Cơm tấm sườn siu ngon có cơm và miếng sườn.'),
(2, 'Cơm tấm sườn trứng', '179', 27000, 24490000, 200, 1, 'Cơm tấm có cơm, miếng sườn và có thêm miếng trứng.'),
(3, 'Cơm tấm sườn bì chả', '180', 32000, 19990000, 200, 1, 'Cơm tấm có cơm, miếng sường, cộng thêm bì và miếng chả siu thơm ngon.'),
(4, 'Cơm tấm đặc biệt', '181', 35000, 9950000, 200, 1, 'Cơm tấm đặc biệt có cơm và đầy đủ topping trứng, bì, chả siu thum ngon.'),
(5, 'Khoai tây chiên', '182', 15000, 9990000, 200, 2, 'Khoai tây chiên giá kiểu Pháp giòn rụm màu vàng.'),
(6, 'Phô mai que', '183', 15000, 8950000, 200, 2, 'Phô mai que kéo sợi dai dai kèm tương ớt cay cay.'),
(7, 'Nước ép cam', '184', 15000, 16950000, 100, 3, 'Nước cam chua ngon không quá chua nhưng ngon.'),
(8, 'Nước ép chanh', '185', 15000, 7490000, 100, 3, 'Chúng tôi gọi nó là Lemonade vì nó là nước chanh.'),
(9, 'Cơm gà xối mỡ', '186', 40000, 44950000, 300, 1, 'Đĩa cơm gà bày ra đĩa trông bắt mắt với phần cơm vừa đủ ăn lưng bụng, thịt gà trộn bày lên trên, trang trí thêm ít rau răm và hành tây thái mỏng cùng muối tiêu bột. Cơm gà ăn kèm với ớt tương làm tại nhà, cay đậm đà thì quả thực là đáo khẩu. Chén canh cải nấu với gừng tươi và gỏi đu đủ, cà rốt thái sợi mỏng là những thành phần hỗ trợ tuyệt vời làm tôn thêm hương vị đĩa cơm gà.\r\nNhịp sống phố cổ khiến ta muốn thưởng thức buổi trưa thong thả và khoan thai. Gắp miếng thịt gà được trộn vừa miệng và cảm nhận hạt cơm mềm dẻo đang tan dần trong miệng thì quả thực ấn tượng khó phai.'),
(10, 'Bún bò Huế chay', '187', 25000, 29950000, 300, 4, 'Món bún bò Huế chay đặc trưng bởi nước dùng thơm cay mùi sa tế sả băm, cùng vị ngọt tự nhiên của các loại rau củ. Nhân nấm thơm mềm, đậu hũ chiên giòn mềm, đậu hũ ky giòn tan, thêm chả chay dai dai thật hấp dẫn.'),
(11, 'Chả giò chay', '188', 20000, 21990000, 300, 4, 'Ăn chay giúp tâm hồn thanh tịnh, tĩnh tâm và cũng tốt cho sức khỏe hơn. Mặc dù chế độ ăn chay loại trừ hoàn toàn các thực phẩm có nguồn gốc từ động vật, nhưng các món chay vẫn phải đảm bảo đầy đủ chất dinh dưỡng cần thiết và được chế biến sáng tạo để luôn thơm ngon và hấp dẫn.'),
(12, 'Gà rán', '189', 30000, 168000, 500, 2, 'KFC xuất hiện lần đầu ở Việt Nam vào năm 1997, khi mà khái niệm “fast food\" - thức ăn nhanh còn vô cùng xa lạ ở nước mình. Từ việc thua lỗ liên tục suốt 7 năm đầu tiên đặt chân khai phá thị trường, hiện nay KFC đã vươn vai trở thành 1 trong 2 ông lớn giữ thị phần cao nhất trong ngành kinh doanh đồ ăn nhanh ở xứ sở hơn 90 triệu dân này.\r\n\r\nCó thể nói, KFC không chỉ mang đến một lựa chọn thực phẩm mới cho người Việt, nó còn góp phần tạo nên một thói quen ăn uống mới cho chúng ta. Không quá khi nói, đối với một bộ phận giới trẻ hiện nay, fast food không còn đơn thuần chỉ là thức ăn, mà hơn thế, nó dường như đã trở thành thị hiếu, thành nếp sống của một thế hệ kế thừa năng động.'),
(13, 'Cháo lòng', '190', 20000, 51000, 500, 1, 'Nguyên liệu cho 4 phần ăn: Gạo 200 gr Nước dùng gà 2 lít Muối 10 gr Hạt nêm 10 gr Nước mắm 15 ml Tiêu 5 gr Huyết heo 30 ml (huyết tươi) Huyết heo 100 gr Tim heo 100 gr Lòng heo 100 gr Da heo 50 gr Gan heo 100 gr Gừng 50 gr Ớt 50 gr'),
(14, 'Cơm cháy', '191', 15000, 2490000, 500, 2, 'Cách làm cơm cháy chiên mắm ớt được rất nhiều người ưa chuộng vì cơm cháy nóng giòn thơm ngon mà cách làm và nguyên liệu thì vô cùng đơn giản.'),
(15, 'Cơm chiên', '192', 20000, 2990000, 500, 1, 'Hãy để tôi chỉ cho bạn cách làm món cơm chiên Dương Châu dễ dàng nhé! Đây là món cơm chiên kiểu Trung Quốc. Nó rất phổ biến và ngon'),
(16, 'Trà sữa trân châu', '193', 25000, 4190000, 500, 3, 'Bật mí 45 công thức pha chế năm 2022 đang làm chao đảo cộng đồng giới trẻ hiện nay. Những bí quyết chỉ có Barista biết được sẽ hé lộ trong bài tham khảo sau đây !\r\n'),
(17, 'Cơm gà tam kỳ', '194', 15000, 7990000, 500, 1, 'CƠM GÀ TAM KỲ Nguyên liệu: -Gà ta: 1 con -Bột nghệ: 2mcf -Gạo khô: 1kg -Tỏi băm: 1mc -Rau : húng lủi, rau răm -Đu đủ + cà rốt bào sợi: 200g -Ớt tương Hội An: 100g -Nước tương -Chanh tươi -Gia vị: nước mắm, đường, hạt nêm, muối, tiêu…. Cách làm: -Gà luộc cùng với 1mcf bột nghệ, vài lá chanh. Gà chín để nguội, xé phay hoặc chặt nhỏ tùy ý. -Gạo vo sạch, để ráo. -Cho vào chảo ít dầu ăn, phi vàng tỏi, cho gạo vào xào, cho vào ít nước luộc gà và 1mcf bột nghệ vào trộn đều. Tắt bếp, sang gạo vào nồi cơm'),
(18, 'Xúc xích que', '195', 15000, 7950000, 500, 2, 'Xúc xích nướng Xúc xích chiên. Xúc xích (tiếng Anh: Sausage) là một loại thực phẩm chế biến từ thịt (thông thường và chủ yếu là thịt heo) bằng phương pháp dồi (nhồi thịt và dồn vào một bì) '),
(19, 'Cá viên chiên', '200', 15000, 10000, 200, 2, 'Vậy để xây dựng cơ sở sản xuất cá viên chiên, các doanh nghiệp cần nắm rõ quy mô của cơ sở mình có cần phải lập kế hoạch bảo vệ môi trường cho cơ sở sản xuất cá viên chiên không'),
(20, 'Bánh tráng trộn', '201', 20000, 15000, 200, 2, 'Chỉ cần đảo một vòng thì bạn sẽ dễ dàng bắt gặp được những chiếc xe bán bánh tráng trộn trong một con hẻm nào đó. Tuy nhiên, trong bài viết này, Thích Cay sẽ giúp bạn có thể tự tay làm ngay món Bánh Tráng Trộn Jambon Sốt Sa Tế siêu ngon ngay tại nhà. Cùng theo dõi nhé!'),
(21, 'Bánh chuối chiên', '202', 5000, 5000, 100, 2, 'Bánh chuối là món rất được hay ăn sáng, ăn vặt. Để bánh chuối chiên được vàng thơm và giòn'),
(22, 'Trà xoài', '203', 15000, 15000, 100, 3, 'Nhìn qua list này mới thấy các thức uống vị xoài có vị trí vững vàng trong lòng giới trẻ'),
(23, 'Cà phê muối', '204', 15000, 15000, 100, 3, 'Cà phê kem muối là thức uống mới nổi lên trong mùa hè này, bạn đã biết cách pha chưa?'),
(24, 'Trà đào', '205', 15000, 15000, 100, 3, 'Trà đào là một loại trà tuyệt vời'),
(25, 'Trà sữa matcha', '206', 25000, 25000, 100, 3, 'Nếu có một sự kết hợp giữa trà sữa và matcha thì sao nhỉ? Thật quá tuyệt phải không? Cùng Beemart mua nguyên liệu và trổ tài pha chế cách làm trà sữa matcha nhé'),
(26, 'Topokki', '207', 15000, 10000, 200, 2, 'Món ăn vặt tuyệt vời'),
(27, 'Bánh canh hẹ', '208', 20000, 15000, 200, 1, 'Phú Quốc được mệnh danh là thiên đường ẩm thực, nổi tiếng nhiều món hải sản tươi sống. Bánh canh ghẹ Phú Quốc luôn được lòng thực khách');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `tendangnhap` varchar(100) NOT NULL,
  `matkhau` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `diachi` varchar(300) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `hoten`, `tendangnhap`, `matkhau`, `email`, `sdt`, `diachi`, `create_at`, `update_at`) VALUES
(0, 'Nguyễn Thanh Nhã', 'nha123', '00000000', 'thanhnha@gmail.com', '0123456789', 'Ca Mau', NULL, NULL),
(1, 'Nguyễn Trần Nguyên Thảo', 'thao123', '00000000', 'thao@gmail.com', '0333222111', 'Lam Dong', NULL, NULL),
(2, 'La O Thị Thanh', 'thanh123', '00000000', 'thanh@gmail.com', '0999888777', 'Phu Yen', NULL, NULL),
(3, 'Huỳnh Mai Ái Ngọc', 'ngoc123', '00000000', 'ngoc@gmail.com', '0444888111', 'Binh Thuan', NULL, NULL),
(4, 'Nguyen Thien Nhan', 'Nhan888', '888', 'nhan@gmail.com', '0234345456', 'Cu Lao', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `tentintuc` tinytext NOT NULL,
  `urltintuc` tinytext NOT NULL,
  `anhtintuc` tinytext NOT NULL,
  `thongtin` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `tentintuc`, `urltintuc`, `anhtintuc`, `thongtin`) VALUES
(1, 'Xiên bẩn gây hại cho sức khỏe như thế nào?', 'https://phamnghia.vn/xien-ban-nhung-khong-ban-ban-da-nghe-den-chua/', '196', 'Xiên bẩn sẽ gây ải chỉa cho người ăn, nếu bụng yếu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trungbay`
--

CREATE TABLE `trungbay` (
  `id` int(11) NOT NULL,
  `mamon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trungbay`
--

INSERT INTO `trungbay` (`id`, `mamon`) VALUES
(11, 29),
(12, 35),
(13, 40);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `acc_admin`
--
ALTER TABLE `acc_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trungbay`
--
ALTER TABLE `trungbay`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `acc_admin`
--
ALTER TABLE `acc_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT cho bảng `mon`
--
ALTER TABLE `mon`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `trungbay`
--
ALTER TABLE `trungbay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
