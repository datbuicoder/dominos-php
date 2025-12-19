-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3360
-- Generation Time: Jan 20, 2025 at 01:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbandoannhanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nameadmin` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nameadmin`, `username`, `password`, `admin_status`) VALUES
(7, 'Bùi Nguyễn Cảnh Đạt', 'dat004', '21232f297a57a5a743894a0e4a801fc3', 1);


-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tieude` varchar(250) NOT NULL,
  `img_baiviet` varchar(100) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` longtext NOT NULL,
  `ngayviet` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id_baiviet`, `tieude`, `img_baiviet`, `tomtat`, `noidung`, `ngayviet`) VALUES
(7, 'Đồ Ăn Nhanh Và Mức Độ Hạnh Phúc', '1730909434_l-intro-1662064407.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper tristique hendrerit. Sed et est congue, blandit nulla feugiat, hendrerit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus convallis venenatis justo, ut egestas dui faucibus in. Nam vitae sollicitudin arcu. Sed sollicitudin nunc justo, vel rutrum risus euismod congue. Vivamus consectetur turpis quis accumsan ullamcorper. Nullam sit amet ipsum pulvinar, laoreet nulla sed, auctor mi. Nunc auctor dictum tortor nec varius. Vivamus ac velit ut felis bibendum pulvinar. Nunc laoreet egestas arcu et condimentum. Maecenas quis commodo augue. Mauris elit augue, placerat ut dictum vitae, feugiat non ipsum. Cras porttitor neque erat. Aenean quis massa ac sapien efficitur rhoncus.\r\n\r\nSed lacinia sollicitudin felis, convallis volutpat magna tristique non. Proin eu tempus leo. Curabitur porta nisi vel urna blandit rutrum. Donec lacinia diam vel erat maximus, nec condimentum tortor rutrum. Donec eleifend justo non tellus varius tincidunt. Mauris nec laoreet metus. Mauris rhoncus fermentum purus non ornare. Ut at suscipit velit.\r\n\r\nAenean sit amet leo aliquet, tincidunt nisi nec, venenatis erat. Praesent in fringilla magna. Fusce ut quam dapibus libero pellentesque iaculis. Integer mollis iaculis molestie. Donec quis vehicula nisi. Mauris tincidunt nisl in neque convallis volutpat sit amet id mauris. Morbi malesuada arcu at ante interdum, cursus tincidunt turpis finibus. Nam vel tellus et leo placerat ultricies ut ac metus. Aliquam semper a dui semper mollis. Mauris sed maximus augue. Nulla lacus ante, accumsan eu ornare sed, condimentum et dolor. Phasellus iaculis tincidunt vulputate. Nullam lobortis sagittis arcu id placerat.\r\n\r\nVestibulum est diam, varius a neque nec, dapibus finibus mi. Nullam convallis nisl lectus, lobortis lobortis justo mollis in. Ut semper mi ipsum, gravida vehicula nulla varius pellentesque. Fusce eget lectus quis velit egestas sodales. Fusce lorem lacus, posuere at eros in, imperdiet sagittis augue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin elementum rutrum ante vel congue. Suspendisse vulputate elit vitae luctus ullamcorper. Etiam euismod gravida nulla non tincidunt. Quisque ipsum lectus, eleifend nec arcu quis, fermentum aliquam diam. Cras id placerat velit, id consequat lorem. Aenean elementum mi nec tempor vulputate. Phasellus nec convallis nisl.\r\n\r\nCurabitur vulputate tempor orci, sed pulvinar dui. Nunc sollicitudin, urna quis eleifend dictum, leo erat imperdiet nunc, ac laoreet velit libero ut sapien. Suspendisse leo augue, maximus et mauris eget, sagittis rutrum quam. Maecenas ut nisl a velit suscipit faucibus. Nulla eget pulvinar turpis. Maecenas cursus, ligula eu dictum sagittis, lacus sapien accumsan orci, a blandit ligula nibh quis purus. Aenean pellentesque ultricies gravida. Sed eleifend elementum eros, in rhoncus nulla consequat vitae. Proin sed eros id lectus rutrum semper sed pulvinar urna. Pellentesque a semper orci. Pellentesque ac quam sit amet sem tempus scelerisque. Praesent diam enim, lacinia quis molestie sed, fermentum eu dolor. Praesent nunc purus, tempus at mollis vel, pellentesque ut ligula.', '2024-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(20) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sp`, `soluongmua`) VALUES
(1, '2366', 1, 1),
(2, '7877', 2, 1),
(3, '8851', 3, 1),
(4, '8851', 1, 1),
(5, '3959', 2, 2),
(6, '3959', 1, 1),
(7, '6223', 2, 1),
(8, '6375', 3, 1),
(9, '4459', 4, 1),
(10, '9665', 2, 1),
(11, '2477', 19, 1),
(12, '4749', 9, 1),
(13, '7138', 1, 1),
(14, '4515', 1, 1),
(15, '2520', 1, 1),
(16, '1610', 9, 1),
(17, '7777', 3, 1),
(18, '59', 4, 1),
(19, '3011', 2, 1),
(20, '3011', 3, 1),
(21, '3011', 12, 1),
(22, '4481', 9, 1),
(23, '4481', 10, 1),
(24, '4481', 11, 1),
(25, '6933', 20, 1),
(26, '6933', 23, 1),
(27, '3809', 4, 1),
(28, '6219', 2, 1),
(29, '8610', 1, 1),
(30, '3333', 2, 1),
(31, '3333', 3, 1),
(32, '3333', 11, 1),
(33, '1853', 38, 2),
(34, '1853', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_registered`
--

CREATE TABLE `tbl_cart_registered` (
  `id_cart_registered` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(20) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart_registered`
--

INSERT INTO `tbl_cart_registered` (`id_cart_registered`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`) VALUES
(7, 4, '2366', 0, ''),
(9, 5, '7877', 0, ''),
(12, 8, '6223', 0, '2021-12-05 09:53:22'),
(13, 8, '6375', 0, '2021-12-05 09:53:58'),
(18, 9, '2477', 0, '2021-12-07 07:58:44'),
(19, 9, '4749', 0, '2021-12-07 08:02:32'),
(20, 9, '7138', 0, '2021-12-07 08:11:12'),
(21, 9, '4515', 0, '2021-12-07 08:16:10'),
(22, 9, '2520', 0, '2021-12-07 08:17:13'),
(23, 10, '3011', 0, '2021-12-15'),
(24, 10, '4481', 0, '2021-12-15'),
(25, 10, '6933', 0, '2021-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_unregistered`
--

CREATE TABLE `tbl_cart_unregistered` (
  `id_cart_unregistered` int(11) NOT NULL,
  `tenkh` varchar(250) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `email` varchar(250) NOT NULL,
  `noidung` longtext NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart_unregistered`
--

INSERT INTO `tbl_cart_unregistered` (`id_cart_unregistered`, `tenkh`, `diachi`, `sdt`, `email`, `noidung`, `code_cart`, `cart_status`, `cart_date`) VALUES
(6, 'ha', 'HN', '0372216266', 'dino@gmail.com', 'wfhoiwdf', '9292', 0, '2021-12-05 09:58:12'),
(7, 'ha', 'HN', '0372216266', 'dino@gmail.com', 'wfhoiwdf', '9984', 0, '2021-12-05 09:59:37'),
(8, 'ha', 'HN', '0372216266', 'dino@gmail.com', 'wfhoiwdf', '2187', 0, '2021-12-05 09:59:41'),
(9, 'ha', 'HN', '0372216266', 'dino@gmail.com', 'wfhoiwdf', '5968', 0, '2021-12-05 10:00:40'),
(10, 'ha', 'HN', '0372216266', 'dino@gmail.com', 'wfhoiwdf', '9150', 0, '2021-12-05 10:00:43'),
(11, 'Thái Văn Hà ', 'NA', '0372216266', 'thaivanha739@gmail.com', 'xcgjgj', '4459', 0, '2021-12-05 10:01:14'),
(12, 'Thái Văn Hà ', 'NA', '0372216266', 'thaivanha739@gmail.com', 'xcgjgj', '6524', 0, '2021-12-05 10:04:58'),
(13, 'Thái Văn Hà ', 'DL', '0372216266', 'dino@gmail.com', 'hahahahah', '9665', 0, '2021-12-07 07:53:29'),
(14, 'Thái Văn Hà ', 'NA', '0372216266', 'thaivanha739@gmail.com', 'sioufgbws', '1610', 0, '2021-12-07 08:22:10'),
(15, 'Thái Văn Hà ', 'NA', '0372216266', 'thaivanha739@gmail.com', 'sioufgbws', '9964', 0, '2021-12-07 08:22:39'),
(16, 'fsfsdf', 'sdfsdfdsf', 'fsdf', 'sdfsdfdsf', 'sdfsdfdsfsd', '7777', 0, '2021-12-15'),
(17, 'Đặng Phương Dung', 'NA', '0213544684', 'pdung@gmail.com', 'ship nhanh nha shop', '59', 0, '2021-12-15'),
(18, 'tesst', 'test', 'test', 'test', 'test\r\n', '3809', 0, '2021-12-15'),
(19, 'test', 'test', 'test', 'test', 'ship nhanh nhé shop', '6219', 0, '2021-12-16'),
(20, 'tesst', 'tesst', 'test', 'tesst', '', '8610', 0, '2021-12-16'),
(21, 'Lưu Công Lộc', 'Nam Định', '02464126545', 'locluu@gmail.com', 'Ship nhanh nhé shop', '3333', 0, '2021-12-18'),
(22, 'test11', 'qn', '012424141', 'gj@gmail.com', 'Nhanh cần ăn gấp', '1853', 1, '2024-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id_cmt` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_email` varchar(250) NOT NULL,
  `noidung` longtext NOT NULL,
  `id_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id_cmt`, `name`, `name_email`, `noidung`, `id_sp`) VALUES
(2, 'Dino', 'dino@gmail.com', 'Hàng rất là ngon nha Shop. Ship hàng nhanh gọn', 2),
(3, 'Văn Hà', 'hangu@gmail.com', 'Sản phẩm rất tốt', 1),
(5, 'locdz', 'locdz@gmail.com', 'hàng rất tốt', 2),
(6, 'binhdz', 'binhdz@gmail.com', 'hàng ship nhanh', 2),
(7, 'Hà dz', 'hadz@gmail.com', 'sản phẩm rất tốt nha shop <3', 1),
(11, 'huy', 'huy@gmail.com', 'hàng tuyệt vời', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `matkhau` varchar(250) NOT NULL,
  `dienthoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachhang`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(4, 'Dino', 'huy43412@gmail.com', 'Hải Dương', 'e10adc3949ba59abbe56e057f20f883e', '0867699706'),
(5, 'Lưu Công Lộc', 'locdz@gmail.com', 'Nam Định', 'e10adc3949ba59abbe56e057f20f883e', '0154568789'),
(7, 'Van ha', 'vanha1@gmail.com', 'NA', 'e10adc3949ba59abbe56e057f20f883e', '0372216266'),
(8, 'ha van', 'vanha2@gmail.com', 'HN', 'e10adc3949ba59abbe56e057f20f883e', '0372216266'),
(9, 'Thái Văn Hà', 'vanha6@gmail.com', 'TS', 'e10adc3949ba59abbe56e057f20f883e', '0372216266'),
(10, 'Đặng Phương Dung', 'pdung@gmail.com', 'NA', 'e10adc3949ba59abbe56e057f20f883e', '04542215465'),
(11, 'test', 'test@gmail.com', 'test', 'e10adc3949ba59abbe56e057f20f883e', 'test'),
(13, 'Nguyễn Vũ Hiệp', 'ad@gmail.com', 'Quảng Ninh', 'e10adc3949ba59abbe56e057f20f883e', '0789388656'),
(14, 'Nguyễn Văn A', 'nva@gmail.com', 'Hà Nội', '827ccb0eea8a706c4c34a16891f84e7b', '0987654321'),
(15, 'Nguyễn Văn A', 'nva@gmail.com', 'Hà Nội', '827ccb0eea8a706c4c34a16891f84e7b', '0987654321'),
(16, 'Nguyễn Văn B', 'nvb@gmail.com', '123 Kim Mã', 'e10adc3949ba59abbe56e057f20f883e', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(200) NOT NULL,
  `thutu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Pizza', 1),
(2, 'Burger & Sandwiches', 2),
(3, 'Fried Chicken & Nuggets', 3),
(4, 'Drinks & Desserts', 4),
(5, 'Combo Meal', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phanhoi`
--

CREATE TABLE `tbl_phanhoi` (
  `id_ph` int(11) NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `noidung` longtext NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_phanhoi`
--

INSERT INTO `tbl_phanhoi` (`id_ph`, `hoten`, `email`, `noidung`, `status`) VALUES
(2, 'test', 'test@gmail.com', 'test', 0),
(3, 'test', 'test@gmail.com', 'test', 0),
(4, 'test', 'test@gmail.com', 'test', 0),
(5, 'hello', 'hello@gmail.com', 'hello', 0),
(6, 'test', 'test@gmail.com', 'test', 0),
(7, 'Hiep', 'a@gmail.com', 'Đồ ăn ngon', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sp` int(11) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `masp` varchar(50) NOT NULL,
  `giasp` varchar(100) NOT NULL,
  `gia_sale` varchar(100) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `mota` tinytext NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sp`, `tensp`, `masp`, `giasp`, `gia_sale`, `hinhanh`, `mota`, `tinhtrang`, `id_danhmuc`) VALUES
(1, 'Pulled Pork Sandwich', 'sw01', '65000', '0', '1737314274_burger5.jpg', 'Pulled Pork Sandwich\r\nSandwich thịt heo xé nhỏ phủ sốt BBQ ngọt nhẹ, kèm với bắp cải trộn giòn, tạo nên hương vị đậm đà, thích hợp cho bữa ăn nhanh giàu protein.', 1, 2),
(2, 'Pizza Thịt Nguội & Dứa', 'pz01', '159000', '145000', '1737313936_pizza7.jpg', 'Pizza Thịt Nguội & Dứa\r\nPizza nhiệt đới với thịt nguội mặn mà, kết hợp cùng vị ngọt thanh của dứa và phô mai mozzarella, đem lại sự hài hòa giữa vị ngọt và mặn rất hấp dẫn.', 1, 1),
(3, 'Veggie Delight Burger', 'bg02', '175000', '0', '1737313283_pizza6.jpg', 'Veggie Delight Burger\r\nBurger chay với bánh patty làm từ đậu và rau củ, phủ thêm phô mai và rau xanh, thích hợp cho người ăn chay nhưng vẫn đầy hương vị.', 1, 1),
(4, 'Fish Fillet Sandwich', 'sw03', '69000', '0', '1737314146_burger4.jpg', 'Fish Fillet Sandwich\r\nMiếng cá chiên giòn với sốt tartar chua ngọt, xà lách tươi và phô mai, đem lại cảm giác nhẹ nhàng nhưng vẫn đầy đủ vị ngon từ cá.', 1, 2),
(9, 'Spicy Chicken Burger', 'bg07', '69000', '59000', '1737314102_burger3.jpg', 'Spicy Chicken Burger\r\nGà rán cay giòn rụm, kết hợp cùng phô mai, rau xà lách và sốt cay đặc biệt, tạo nên sự bùng nổ vị giác với độ cay và giòn ngon không thể cưỡng lại.', 1, 2),
(10, 'Cheese Lover’s Burger', 'bg08', '69000', '0', '1737314057_burger2.jpg', 'Cheese Lover’s Burger\r\nBurger phô mai với hai lớp phô mai cheddar tan chảy, thịt bò nướng mềm, kèm sốt phô mai béo ngậy, dành riêng cho những ai yêu thích vị phô mai đậm đà.', 1, 2),
(11, 'Classic Beef Burger', 'bg09', '55000', '0', '1737314019_burger1.jpg', 'Classic Beef Burger\r\nBánh burger bò truyền thống với miếng thịt bò nướng thơm lừng, phô mai cheddar, xà lách, cà chua và dưa leo muối, tạo nên vị đậm đà và hài hòa trong từng miếng cắn.', 1, 2),
(12, 'Pizza Thập Cẩm', 'pz03', '189000', '159000', '1737313202_pizza5.jpg', 'Pizza Thập Cẩm\r\nPizza thập cẩm đầy ắp các loại nhân như pepperoni, xúc xích, thịt nguội, ớt chuông, và nấm, giúp bạn tận hưởng nhiều hương vị trong cùng một miếng bánh.', 1, 1),
(13, 'Pizza Gà Nướng Teriyaki', 'pz04', '169000', '155000', '1737313142_pizza4.jpg', 'Pizza Gà Nướng Teriyaki\r\nGà nướng sốt teriyaki phủ trên nền pizza giòn, kết hợp cùng nấm, hành lá và phô mai mozzarella, mang đến hương vị Nhật Bản độc đáo và thơm ngon.', 1, 1),
(15, 'Pizza Xúc Xích & Thịt Xông Khói', 'pz06', '169000', '149000', '1737312538_pizza3.jpg', 'Pizza Xúc Xích & Thịt Xông Khói\r\nPhần pizza đầy đặn với xúc xích cay, thịt xông khói, và hành tây, hòa quyện cùng phô mai mozzarella tan chảy, tạo nên hương vị đậm đà và hấp dẫn.', 1, 1),
(16, 'Pizza Hải Sản', 'pz07', '150000', '0', '1737312257_pizza2.jpg', 'Pizza Hải Sản\r\nPizza hải sản đầy đặn với tôm, mực, nghêu, kết hợp cùng sốt kem và phô mai mozzarella, đem đến cảm giác tươi mới và ngọt ngào của biển cả.', 1, 1),
(17, 'Pizza Phô Mai Bốn Lớp', 'pz08', '130000', '0', '1737312204_pizza1.jpg', 'Pizza Phô Mai Bốn Lớp\r\nPizza với bốn loại phô mai béo ngậy (mozzarella, cheddar, parmesan và phô mai xanh) tan chảy trên nền đế giòn, tạo nên hương vị đậm đà, thơm phức.', 1, 1),
(19, 'Gà Rán Tẩm Sốt Tỏi', 'gr02', '69000', '65000', '1737314642_fc7.jpg', 'Gà Rán Tẩm Sốt Tỏi\r\nMiếng gà rán tẩm sốt tỏi đậm đà, thơm nức với hương tỏi hòa quyện cùng gia vị mặn ngọt, tạo nên hương vị độc đáo và lạ miệng.', 1, 3),
(20, 'Gà Không Xương Tẩm Bột', 'gr03', '69000', '55000', '1737314606_fc6.jpg', 'Gà Không Xương Tẩm Bột\r\nThịt gà không xương được tẩm bột và chiên vàng, dễ dàng thưởng thức và phù hợp cho những ai muốn trải nghiệm phần thịt gà mềm thơm mà không cần lo về xương.', 1, 3),
(21, 'Gà Viên Nuggets', 'gv04', '50000', '0', '1737314561_fc5.jpg', 'Gà Viên Nuggets\r\nMiếng gà viên nhỏ nhắn, giòn rụm bên ngoài và mềm thơm bên trong, dễ ăn và cực kỳ tiện lợi, đặc biệt hấp dẫn với trẻ nhỏ.', 1, 3),
(22, 'Gà Rán Tẩm Mật Ong', 'gr05', '65000', '0', '1737314521_fc4.jpg', 'Gà Rán Tẩm Mật Ong\r\nGà rán tẩm mật ong ngọt dịu, với lớp vỏ giòn và chút vị ngọt nhẹ, tạo nên sự kết hợp hoàn hảo giữa mặn và ngọt, thơm lừng mỗi khi cắn.', 1, 3),
(23, 'Gà Rán Phô Mai', 'gr06', '75000', '0', '1737314484_fc3.jpg', 'Gà Rán Phô Mai\r\nMiếng gà rán phủ phô mai béo ngậy, hòa quyện vị giòn tan của lớp vỏ với vị mặn béo của phô mai tan chảy, tạo cảm giác thơm ngon khó cưỡng.', 1, 3),
(24, 'Gà Rán Cay', 'gr07', '60000', '55000', '1737314454_fc2.jpg', 'Gà Rán Cay\r\nPhần gà rán cay nồng với lớp vỏ phủ bột ớt và các gia vị đặc biệt, kích thích vị giác với độ giòn tan cùng vị cay nhẹ từ ngoài vào trong.', 1, 3),
(25, 'Gà Rán Truyền Thống', 'gr01', '59000', '0', '1737314408_fc1.jpg', 'Gà Rán Truyền Thống\r\nGà rán giòn rụm với lớp vỏ vàng ruộm, thấm đậm gia vị truyền thống, thịt bên trong mềm mọng, đem lại hương vị quen thuộc và hấp dẫn.', 1, 3),
(27, 'Kem Ly Vani & Chocolate', 'apw02', '29000', '19000', '1737312039_dessert1.jpg', 'Phần kem hai vị vani và chocolate mát lạnh, kết hợp với topping hạt hạnh nhân và chocolate chip, tạo cảm giác ngọt ngào và sảng khoái cho ngày hè.', 1, 4),
(28, 'Nước Ép Cam Tươi', 'apw03', '30000', '20000', '1737311998_drink5.jpg', 'Nước Ép Cam Tươi\r\nLy nước ép cam 100% từ cam tươi, cung cấp vitamin C, mang vị chua nhẹ và ngọt tự nhiên. Đồ uống này vừa tốt cho sức khỏe lại giải khát cực kỳ hiệu quả.', 1, 4),
(29, 'Sinh Tố Dâu Tây', 'apw04', '40000', '27000', '1737311958_drink4.jpg', 'Sinh tố dâu tươi, ngọt dịu và hơi chua, được xay nhuyễn tạo kết cấu mịn màng, kèm chút kem tươi bên trên. Thức uống này vừa giải khát vừa bổ dưỡng.', 1, 4),
(31, 'Nước Chanh Bạc Hà', 'apw06', '30000', '20000', '1737311924_drink3.jpg', 'Ly nước chanh bạc hà chua ngọt hài hòa, được pha với chanh tươi và lá bạc hà thơm mát, giúp thanh lọc và làm mới vị giác.', 1, 4),
(32, 'Trà Đào Đá Xay', 'apw07', '25000', '20000', '1737311835_drink2.jpg', 'Thức uống trà đào thơm ngon, pha cùng đá xay mát lạnh, điểm thêm vài miếng đào tươi, tạo cảm giác ngọt dịu và tươi mát.', 1, 4),
(33, 'Coca-Cola Đá Lạnh', 'apw08', '20000', '12000', '1737311791_drink1.jpg', 'Ly Coca-Cola mát lạnh, sủi bọt, giúp giải khát tức thì với vị ngọt và hương thơm đặc trưng. Phù hợp với các món đồ chiên, giúp cân bằng hương vị.\r\n\r\n', 1, 4),
(34, 'Combo 5 – Combo Gà Nướng Healthy', 'spk01', '89000', '65000', '1737311677_combo8.jpg', 'Combo 5 – Combo Gà Nướng Healthy\r\n\r\nMón chính: Gà nướng thảo mộc tươi với sốt chanh leo.\r\nMón phụ: Rau củ hấp với sốt bơ hoặc khoai tây nghiền.\r\nĐồ uống: Nước suối hoặc nước dừa tươi.\r\n', 1, 5),
(35, 'Combo 8 – Combo Hải Sản', 'spk02', '91000', '78000', '1737311609_combo7.jpg', 'Combo 8 – Combo Hải Sản\r\n\r\nMón chính: Một phần cá tẩm bột chiên giòn kèm tôm chiên xù.\r\nMón phụ: Salad tươi với các loại rau xanh và dưa chuột, kèm sốt mè rang.\r\nĐồ uống: Nước ngọt hoặc nước chanh d', 1, 5),
(36, 'Combo 7 – Combo Wraps & Rolls', 'spk03', '119000', '85000', '1737311322_combo6.jpg', 'Combo 7 – Combo Wraps & Rolls\r\n\r\nMón chính: Gói bánh mì wrap với nhân gà nướng, rau xanh và sốt Caesar.\r\nMón phụ: Phần khoai lang chiên giòn.\r\nĐồ uống: Nước chanh bạc hà hoặc nước ép dưa hấu.\r\nTráng miệng: M', 1, 5),
(37, 'Combo 6 – Combo Pizza & Pasta', 'spk04', '135000', '101000', '1737311213_combo5.jpg', 'Combo 6 – Combo Pizza & Pasta\r\n\r\nMón chính: Một phần pizza cá nhân (có thể chọn vị bò, hải sản hoặc rau củ).\r\nMón phụ: Mỳ Ý sốt cà chua với phô mai parmesan bào nhuyễn.\r\nĐồ uống: Một cốc Coca-Cola cỡ l', 1, 5),
(38, 'Combo 4 – Combo Burger Deluxe', 'spk05', '89000', '65000', '1737311069_combo4.jpg', 'Combo 4 – Combo Burger Deluxe\r\n\r\nMón chính: Burger bò đặc biệt với thịt bò nướng than, thêm phô mai cheddar, hành tây caramen, và sốt BBQ.\r\nMón phụ: Phần khoai tây chiên curly (khoai chiên xoắn).\r\nĐồ uống: Sinh tố', 1, 5),
(39, 'Combo Gà Cay Salad', 'spk06', '79000', '59000', '1737310653_combo3.jpg', 'Combo 3 là phần ăn đa dạng và đầy đủ cho một bữa nhanh, bao gồm:\r\n\r\nMón chính: 3 miếng gà rán giòn tan với lớp vỏ vàng ruộm và thịt gà mềm bên trong.\r\nMón phụ: Một phần salad tươi', 1, 5),
(40, 'Combo Food 2', 'spk07', '145000', '119000', '1737309424_combo2.jpg', 'Combo 2 là một phần ăn nhanh tiện lợi, thường bao gồm các món cơ bản và phổ biến như:\r\n\r\nMón chính: Hai burger bò hoặc gà với phô mai, xà lách, cà chua và sốt đặc trưng.\r\nMón phụ: Hai khoai tây chiên giòn', 1, 5),
(41, 'Combo FastFood 1', 'spk08', '89000', '65000', '1737306271_combo1.jpg', 'Combo 1 là một phần ăn nhanh tiện lợi, thường bao gồm các món cơ bản và phổ biến như:\r\n\r\nMón chính: Một burger bò hoặc gà với phô mai, xà lách, cà chua và sốt đặc trưng.\r\nMón phụ: Khoai tây chiên giòn, ', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(2, '2021-12-05', 30, '2000', 30),
(4, '2021-12-07', 9, '5000', 3),
(6, '2021-12-15', 6, '25100', 11),
(7, '2021-12-16', 2, '9000', 2),
(8, '2021-12-18', 1, '11000', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Indexes for table `tbl_cart_registered`
--
ALTER TABLE `tbl_cart_registered`
  ADD PRIMARY KEY (`id_cart_registered`),
  ADD KEY `id_khachhang` (`id_khachhang`);

--
-- Indexes for table `tbl_cart_unregistered`
--
ALTER TABLE `tbl_cart_unregistered`
  ADD PRIMARY KEY (`id_cart_unregistered`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id_cmt`),
  ADD KEY `id_sp` (`id_sp`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_phanhoi`
--
ALTER TABLE `tbl_phanhoi`
  ADD PRIMARY KEY (`id_ph`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_cart_registered`
--
ALTER TABLE `tbl_cart_registered`
  MODIFY `id_cart_registered` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_cart_unregistered`
--
ALTER TABLE `tbl_cart_unregistered`
  MODIFY `id_cart_unregistered` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id_cmt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_phanhoi`
--
ALTER TABLE `tbl_phanhoi`
  MODIFY `id_ph` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD CONSTRAINT `tbl_cart_details_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `tbl_sanpham` (`id_sp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_cart_registered`
--
ALTER TABLE `tbl_cart_registered`
  ADD CONSTRAINT `tbl_cart_registered_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `tbl_dangky` (`id_khachhang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD CONSTRAINT `tbl_comments_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `tbl_sanpham` (`id_sp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `tbl_danhmuc` (`id_danhmuc`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
