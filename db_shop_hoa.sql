-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th2 02, 2018 lúc 09:18 AM
-- Phiên bản máy phục vụ: 10.0.31-MariaDB-cll-lve
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wikicach_hoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `HoTen` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `permission` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID`, `HoTen`, `TaiKhoan`, `MatKhau`, `permission`) VALUES
(1, 'Lâm Mỹ Hạnh', 'lmhanh', '$2y$10$haimuoihaihaimuoihai2ukcypX1XdQZIURgfT7XvDfiDqBy87Hom', 1),
(8, 'ql đơn hàng', 'donhang', '$2y$10$haimuoihaihaimuoihai2uYmG63iKfsrA/VglIi1z9AaICytB.WHO', 0),
(9, 'QL Sản Phẩm', 'sanpham', '$2y$10$haimuoihaihaimuoihai2uGb5oiUToKpE0yZjaCvISO5PTX/egm2m', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `id` int(11) NOT NULL,
  `MaHoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_hoa_don` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chi_tiet_hoa_don';

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_don`
--

INSERT INTO `chi_tiet_hoa_don` (`id`, `MaHoa`, `so_luong`, `ma_hoa_don`) VALUES
(4, 14, 1, 3),
(5, 74, 1, 4),
(6, 72, 1, 5),
(7, 46, 3, 6),
(8, 42, 1, 6),
(9, 21, 1, 7),
(10, 41, 1, 7),
(11, 75, 1, 8),
(12, 71, 1, 9),
(13, 69, 1, 10),
(14, 74, 1, 11),
(16, 70, 2, 12),
(19, 57, 1, 14),
(20, 76, 2, 15),
(21, 75, 1, 15),
(22, 74, 1, 16),
(23, 20, 2, 17),
(24, 21, 1, 18),
(25, 34, 1, 19),
(26, 38, 1, 19),
(27, 65, 1, 20),
(28, 35, 1, 21),
(29, 14, 1, 22),
(30, 46, 1, 23),
(31, 65, 1, 24),
(32, 66, 1, 25),
(33, 56, 10, 26),
(34, 70, 8, 26),
(35, 76, 2, 26),
(36, 69, 7, 26),
(37, 69, 3, 27),
(38, 74, 1, 28),
(39, 74, 1, 29),
(40, 74, 1, 30),
(41, 14, 3, 31),
(42, 65, 2, 32),
(43, 69, 1, 33),
(44, 72, 1, 34);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keywords_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `google_map` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `title_website`, `description_website`, `keywords_website`, `phone_number`, `email`, `address`, `google_map`, `logo`, `favicon`) VALUES
(1, 'Shop hoa tươi', 'Description shop hoa tươi', 'shop hoa tươi', '+841637909009', 'tnp.imex@gmail.com', 'Ho Chi Minh', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.6757668549867!2d106.66466961457186!3d10.759452492333047!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ee53b2415b7%3A0xe0c7e7adc25afe37!2zTOG6p3UgMiwsIDEzN0UgTmd1eeG7hW4gQ2jDrSBUaGFuaCwgcGjGsOG7nW5nIDksIFF14bqtbiA1LCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1514005205933\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'logo.png', 'fav.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa`
--

CREATE TABLE `hoa` (
  `MaHoa` int(11) NOT NULL,
  `TenHoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenHoa_URL` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `GiaKhuyenMai` double NOT NULL DEFAULT '200000',
  `ThanhPhan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `ThoiGian` date DEFAULT NULL,
  `SoLuongSP` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa`
--

INSERT INTO `hoa` (`MaHoa`, `TenHoa`, `TenHoa_URL`, `Gia`, `GiaKhuyenMai`, `ThanhPhan`, `NoiDung`, `Hinh`, `MaLoai`, `ThoiGian`, `SoLuongSP`) VALUES
(13, 'Thanh khiết', 'thanh-khiet', 650000, 550000, 'Hoa hồng Ecuador màu xanh bơ, Thạch thảo trắng, Hoa cẩm chướng Nhật (Green Wicky), Lá phụ', 'Màu xanh lá chính là màu tự nhiên nên luôn gợi cho người ta cảm giác gần gũi, tự nhiên. Nó cho tượng trưng cho sự phát triển, hòa thuận, tươi mát màu mỡ. Màu xanh còn thể hiện sự hi vọng, chống chọi mọi khó khăn.', 'hoa_hop_1.jpg', 2, '2017-12-20', 0),
(14, 'Tuổi thanh xuân', 'tuoi-thanh-xuan', 350000, 250000, 'Hoa hồng đỏ, Hoa hồng cam, Hoa phi yến, Hoa lá phụ', 'Được thiết kế từ hoa hồng, phi yến, mẫu hoa gợi lên nét ngọt ngào và dịu dàng của người con gái. \"Tuổi thanh xuân\" sẽ là món quà tuyệt vời cùng thông điệp an lành, hạnh phúc cho những người bạn gái của bạn', 'hoa_hop_2.jpg', 2, '2016-06-16', 15),
(15, 'Lúc mới yêu', 'luc-moi-yeu', 310000, 270000, 'Hoa hồng đỏ', 'Đơn giản, tinh tế và cổ điển là những gì có thể nhận xét về mẫu hoa này. Hoa hồng đỏ và hộp gỗ thông chính là sự kết hợp hoàn hảo, không bao giờ lỗi mốt. Nếu bạn đang tìm một món quà bất ngờ dành tặng cho những người thân yêu của mình, chọn ngay \"Lúc mới yêu\" nhé!', 'hoa_hop_3.jpg', 2, '2016-07-27', 20),
(16, 'Thầm mong', 'tham-mong', 270000, 150000, 'Hoa hồng kem, Hoa hồng đỏ, Hoa Salem tím', 'Nhẹ nhàng và tao nhã, \"Thầm mong\" như một điều ước cho những điều an lành, hạnh phúc và may mắn cho người nhận. ', 'hoa_hop_4.jpg', 2, '2016-06-03', 19),
(17, 'Đong đầy', 'dong-day', 450000, 350000, 'Hoa hồng đỏ, Hoa hồng kem, Hoa tú cầu', 'Với sự kết hợp tinh tế của hoa hồng và tú cầu, hộp hoa mang thông điệp sum họp, đong đầy, vươn lên tầm cao mới, thích hợp để tạng dịp chúc mừng, tặng người thân..', 'hoa_hop_5.jpg', 2, '2016-07-27', 18),
(18, 'Đại dương xanh', 'dai-duong-xanh', 400000, 300000, 'Hoa hồng đỏ, Hoa tú cầu, Hoa cẩm chướng, Hoa cúc trắng, Các loại hoa phụ khác', 'Mang theo nguồn cảm hứng từ đại dương xanh thẳm, mẫu hoa \"Đại dương xanh\" là sự kết hợp độc đáo giữa tú cầu và hoa cẩm chướng Nhật xanh mướt cùng hoa hồng và cúc trắng tinh khôi. Tông màu xanh trắng này gợi lên sự thanh lịch, tươi mát và chắc chắn sẽ mang lại nhiều niềm vui cho người nhận.', 'hoa_hop_6.jpg', 2, '2016-07-27', 19),
(19, 'Mùa yêu đầu', 'mua-yeu-dau', 260000, 140000, 'Hoa hồng đỏ, Hoa hồng da', 'Hộp hoa với sự kết hợp khéo léo của hai màu hoa hồng mang đến hình ảnh của một bản tình ca lãng mạn, ngọt ngào. Mẫu hoa như món quà bất ngờ cùng thông điệp \"Anh nhớ em rất nhiều\".', 'hoa_hop_7.jpg', 2, '2016-07-27', 19),
(20, 'May mắn', 'may-man', 400000, 200000, 'Sen đá, Hoa hướng dương, Hoa hồng, Các loại hoa phụ', 'Được thiết kế với tông kết hợp, mẫu hoa gồm hoa hướng dương và sen đá mang đến thông điệp về một tình yêu bền vững, trọn đời. Ngoài ra còn có ý nghĩa mang lại tài lộc, may mắn cho gia đình. Đây sẽ là món quà tuyệt vời dành tặng những người thân yêu của bạn.', 'hoa_hop_8.jpg', 2, '2016-07-27', 17),
(21, 'Giọt nắng hồng', 'giot-nang-hong', 300000, 200000, 'Hoa hồng, Hoa phi yến, Cẩm chướng Nhật (Green Wicky), Các loại hoa phụ', 'Nhẹ nhàng và ngọt ngào như một giọt nắng ban mai, mẫu hoa mang đến một cảm giác yên bình, đáng yêu và dịu mắt đến không ngờ. Thiết kế đơn giản chỉ với 2 loại hoa nhưng \"Giọt nắng hồng\" vẫn nổi bật và dễ dàng chiều lòng những người yêu hoa.', 'hoa_hop_9.jpg', 2, '2016-06-19', 18),
(22, 'Thầm mong', 'tham-mong', 350000, 200000, 'Hoa hồng các loại, Hoa baby trắng, Lá phụ', 'Nhẹ nhàng và tao nhã, \"Thầm mong\" như một điều ước cho những điều an lành, hạnh phúc và may mắn cho người nhận. ', 'hoa_hop_10.jpg', 2, '2016-07-27', 20),
(23, 'Giấc mơ hoa', 'giac-mo-hoa', 400000, 200000, 'Hoa hồng, Hoa ly mini, Hoa cúc tím, Hoa cúc Calimero, Hoa phụ khác', 'Với sự kết hợp tinh tế nhiều loại hoa mang sắc màu thanh nhã mang lại một cảm gác bình yên. \"Giấc mơ hoa\" như một điều ước cho những điều an lành, hạnh phúc và may mắn cho người nhận. ', 'hoa_hop_11.jpg', 2, '2016-07-27', 20),
(24, 'Season\'s love', 'season\'s-love', 380000, 250000, 'Hoa hồng, Hoa tú cầu, Hoa thạch thảo tím, Hoa cúc tím', 'Hộp hoa \"Season\'s love\" được thiết kế với hoa hồng đỏ chủ đạo và mang màu sắc tươi sáng, ngọt ngào. Đúng như tên gọi, mẫu hoa tựa như lời yêu thương gửi đến người thân, gia đình và bạn bè. Khởi đầu một mùa xuân mới với thông điệp yêu thương này bạn nhé!', 'hoa_hop_12.jpg', 2, '2016-07-27', 20),
(25, 'Hương mùa xuân', 'huong-mua-xuan', 550000, 350000, 'Hoa phi yến, Hoa cẩm chướng, Hoa thược dược', 'Giỏ hoa mang một vẻ đẹp rạng rỡ, tươi mới qua sự kết hợp đa dạng của các loại hoa như hoa phi yến, cẩm chướng, cúc hồng. Sự sắp xếp tự nhiên và hài hòa của giỏ hoa mang lại cảm giác như mùa xuân đã về đến. Hãy để \"Hương mùa xuân\" thổi một làn gió mới đến cho những người thân yêu quanh bạn nhé.', 'hoa_gio_1.jpg', 3, '2016-07-27', 20),
(26, 'Chốn mộng mơ', 'chon-mong-mo', 400000, 230000, 'Hoa hồng leo, Giỏ tre', 'Người ấy của bạn chắc chắn sẽ không khỏi động lòng khi nhìn thấy giỏ hoa xinh đẹp này trước cửa nhà! Được thiết kế trên nền hoa hồng da cùng hồng đỏ rực rỡ, chắc hẳn đây là cách tuyệt vời nhất để bày tỏ thành ý của bạn đến người đặc biệt rồ', 'hoa_gio_2.jpg', 3, '2016-07-27', 20),
(27, 'Sáng tinh mơ', 'sang-tinh-mo', 450000, 320000, 'Hoa hồng trắng, Hoa tú cầu', 'Lẵng hoa Sáng Tinh Mơ với tổng màu trắng tinh khiết, xen lẫn hoa baby. Một món quà nhẹ nhàng, lãng mạn và ngọt ngào.', 'hoa_gio_3.jpg', 3, '2016-07-27', 20),
(28, 'Qua miền lãng du', 'qua-mien-lang-du', 450000, 310000, 'Hoa hồng, Hoa cẩm chướng, Hoa cúc mini, Các loại hoa lá phụ khác', 'Rong ruổi giữa đất trời, tìm đến những vùng đất mới, khám phá vạn vật chắc hẳn là mơ ước của rất nhiều người. “Qua miền lãng du” là một mẫu hoa gồm nhiều loại hoa khác nhau, lối sắp xếp tạo nên một tổng thể đa dạng nhưng cũng thật tự nhiên. Có lẽ vì thế, “Qua miền lãng du” chính là món quà dành tặng ý nghĩa dành cho những tâm hồn yêu tự do, tha thiết được tung hoàng khắp chốn nhân gian. ', 'hoa_gio_4.jpg', 3, '2016-07-27', 20),
(29, 'Classic', 'classic', 500000, 240000, '50 đóa hoa hồng đỏ, Hoa baby', 'Giỏ hoa The Classic, hay còn gọi là Cổ điển, được thiết kế từ 50 bông hồng đỏ kết hợp hoa baby trong giỏ mây sang trọng đem đến một vẻ đẹp của sự đơn giản, hoải cổ và quý phái.', 'hoa_gio_5.jpg', 3, '2016-07-27', 20),
(30, 'Tinh tế', 'tinh-te', 550000, 430000, 'Hoa hồng đỏ, Hoa ly, Hoa baby', 'Sự kết hợp của hoa hồng, hoa ly với một chút nhẹ nhàng của hoa baby rất hài hoa tinh tế. Giỏ hoa thích hợp tặng thầy cô, người thân, các dịp lễ..', 'hoa_gio_6.jpg', 3, '2016-07-27', 20),
(31, 'Nhiệt huyết 1', 'nhiet-huyet', 800000, 610000, 'Hoa địa lan, Hoa hồng môn, Hoa cúc, Hoa hồng, Hoa lan mokara, Hoa cát tường, Các loại hoa phụ', 'Giỏ hoa \"Nhiệt huyết\" được thiết kế với nhiều màu sắc. Như một lời chúc ngày mới tràn đầy năng lượng và sáng tạo. \"Nhiệt huyết\" khoác thêm trên mình một hi vọng về sự thành công. Hãy dành tặng \"Nhiệt huyết 2\" cho bạn bè, người thân, đồng nghiệp, đối tác ... ', 'hoa_gio_7.jpg', 3, '2016-06-15', 20),
(32, 'Nhiệt huyết 2', 'nhiet-huyet-2', 850000, 750000, 'Hoa ly, Hoa lan hồ điệp, Hoa địa lan, Hoa hồng môn, Hoa tú cầu, Hoa cát tường', 'Giỏ hoa \"Nhiệt huyết\" được thiết kế với nhiều màu sắc. Như một lời chúc ngày mới tràn đầy năng lượng và sáng tạo. \"Nhiệt huyết\" khoác thêm trên mình một hi vọng về sự thành công. Hãy dành tặng \"Nhiệt huyết 2\" cho bạn bè, người thân, đồng nghiệp, đối tác ... ', 'hoa_gio_8.jpg', 3, '2016-07-27', 20),
(33, 'Nắng ban mai', 'nang-ban-mai', 450000, 240000, 'Hoa cúc đại, Hoa đồng tiền, Hoa cúc mini', 'Như tia nắng ban mai mai rọi vào phòng lúc sáng sớm, giỏ hoa mang nét đẹp rất duyên, rất ngọt ngào. \"Nắng ban mai\" thích hợp để dành tăng sinh nhật, kỉ niệm.. cho những cô gái dịu dàng và vẫn thường mơ mộng.', 'hoa_gio_9.jpg', 3, '2016-07-27', 20),
(34, 'My Dear', 'my-dear', 500000, 390000, 'Hoa cát tường nhiều màu, Hoa tú cầu', 'My Dear là giỏ hoa cát tường nhiều màu kết hợp với hoa tú cầu nhẹ nhàng, tươi mát. \"My dear\" là mẫu hoa thích hợp để bạn gửi đến mẹ, chị gái bởi vẻ đẹp mộc mạc, bình dị.', 'hoa_gio_10.jpg', 3, '2016-07-27', 19),
(35, 'Đón xuân', 'don-xuan', 550000, 370000, 'Hoa hồng, Hoa cúc,Hoa thạch thảo tím,Hoa cẩm chướng, Các loại hoa phụ khác', 'Giỏ hoa với nhiều loại hoa có tông màu tươi sáng như thể \"Mùa xuân đến trăm hoa đua nhau khoe sắc\". \"Đón xuân\" mang đến sự vui tươi, sôi nổi... đó chính là nụ cười và có lẽ chỉ có nụ cười mới mang nhiều vẻ đẹp như vậy. Thích hợp tặng sinh nhật, bạn bè, người yêu...', 'hoa_gio_11.jpg', 3, '2016-07-27', 19),
(36, 'Đắm say', 'dam-say', 600000, 520000, 'Hoa hồng đỏ, Hoa hồng trắng, Hoa salem trắng', 'Sắc đỏ nồng nàn và quyến rũ của những bông hồng sasa này chắc chắn sẽ đem đến cho người nhận cảm giác về một tình yêu đầy lãng mạn, ngọt ngào. Còn chần chờ gì nữa mà không cùng \"Đắm say\" thể hiện tình yêu của bạn. Hãy chọn \"Đắm say\" trong những dịp như sinh nhật, chúc mừng, giáng sinh, cầu hôn hay thậm chí chẳng vì một ngày đặc biệt nào cả. Chỉ đơn giản là thể hiện tình yêu mà thôi.', 'hoa_gio_12.jpg', 3, '2016-06-12', 20),
(37, 'Luxury queen', 'luxury-queen', 1000000, 800000, 'Hoa lan hồ điệp trắng, hồng', 'Sự kết hợp giữa những cành lan hồ điệp sẽ mang đến cho cô dâu nét đẹp dịu dàng mà quý phái.', 'hoa_cuoi_1.jpg', 6, '2016-06-08', 20),
(38, 'Love Paradise', 'love-paradise', 450000, 320000, 'Hoa hồng trắng, Hoa chuỗi ngọc', 'Không quá rực rỡ nhưng cũng đủ để làm cô dâu trở nên nổi bật và rạng rỡ biết bao. Sắc trắng tinh khôi của hoa hồng trắng kết hợp với màu đỏ của chuỗi ngọc như thể hiện một tình yêu đầy lãng mạn, tinh khôi những và cũng tràn đầy nồng nhiệt.', 'hoa_cuoi_2.jpg', 6, '2016-07-27', 19),
(39, 'Dáng ngọc', 'dang-ngoc', 450000, 240000, 'Hoa đồng tiền, Hoa baby, Hoa cẩm chướng', '\"Dáng ngọc\" dành cho những cô dâu thích sự nhẹ nhàng trong sáng nhưng tràn vị ngọt ngào trong tình yêu', 'hoa_cuoi_3.jpg', 6, '2016-06-09', 20),
(40, 'Love is color', 'love-is-color', 500000, 260000, 'Hoa hồng nhiều màu', 'Bó hoa cưới kết hợp nhiều màu sắc của hoa hồng theo gam màu pastel làm cho cô dâu thêm phần sang trọng và rạng rỡ trong ngày cưới.', 'hoa_cuoi_4.jpg', 6, '2016-07-27', 20),
(41, 'Fresh girl', 'fresh-girl', 450000, 270000, 'Hoa hoàng anh, Hoa hồng, Hoa địa lan', 'Bó hoa mang đến vẻ đẹp trong lành thuần khiết như chính tên gọi của nó. \"Fresh girl\" sẽ mang đến cảm giác tự tin cho cô dâu trong ngày trọng đại.', 'hoa_cuoi_5.jpg', 6, '2016-07-27', 19),
(42, 'Purple Tulip', 'purple-tulip', 500000, 280000, '30 đóa hoa Tulip tím', 'Bó hoa tuy đơn giản nhưng khoác lên mình sự sang trọng quý phái. Bó hoa cưới này chắc chắn là sự lựa chọn tuyệt vời cho các cô dâu nhân ngày trọng đại.', 'hoa_cuoi_6.jpg', 6, '2016-07-27', 19),
(43, 'Tinh khôi', 'tinh-khoi', 600000, 390000, 'Hoa hồng trắng, Hoa hồng môn trắng, Hoa cẩm chướng Nhật (Green Wicky)', '\"Tinh khôi\" là mẫu hoa độc đáo, khác lạ dành cho cô dâu. Với tông màu trắng thuần khiết sẽ làm cho cô dâu y hệt như nàng công chúa bước ra từ cổ tích bên chàng hoàng tử ngọt ngào, say đắm.', 'hoa_cuoi_7.jpg', 6, '2016-07-27', 20),
(44, 'Đẳng cấp', 'dang-cap', 700000, 580000, 'Hoa mẫu đơn nhiều màu', 'Sắc rực rỡ của hoa mẫu đơn chắc chắn làm cho cô dâu thêm phần nổi bật trong ngày cưới. Hoa mẫu đơn mang sức hấp dẫn nồng nàn, thể hiện vẻ đẹp, sức quyến rũ của tình yêu. Ngoài ra bó hoa mẫu đơn còn làm cho cô dâu trở nên đẳng cấp và sang trọng.', 'hoa_cuoi_8.jpg', 6, '2016-07-27', 20),
(45, 'Fresh love', 'fresh-love', 700000, 540000, 'Hoa hồng trắng, Hoa hồng xanh, Sen đá, Các loại hoa lá phụ khác', 'Một bó hoa cưới thể hiện chính tình yêu ngọt ngào nhưng cũng đầy màu sắc của những cung bậc tình cảm giữa cô dâu- chú rể. Và cả niềm hi vọng về một tương lai phía trước đầy hạnh phúc.', 'hoa_cuoi_9.jpg', 6, '2016-07-27', 20),
(46, 'My love', 'my-love', 600000, 350000, 'Hoa hồng, Hoa lan, Các loại hoa phụ', 'Bó hoa cưới đơn giản nhưng cũng không kém phần sang trọng với tông màu trắng- tím. Như chính tình yêu lãng mạn và đầy thủy chung của cô dâu - chú rể.', 'hoa_cuoi_10.jpg', 6, '2016-07-27', 16),
(47, 'I\'m your', 'i\'m-your', 600000, 520000, 'Hoa hồng, Hoa mẫu đơn, Hoa baby', '\"I\'m your\" là mẫu hoa độc đáo, khác lạ dành cho cô dâu. Với thông điệp đơn giản, chân thành \"Em luôn đặc biệt, em là chính em và em là của anh\", \"I\'m your\" dành cho những bạn yêu thích sự mới lạ, độc đáo nhưng vẫn đơn giản và đẹp.', 'hoa_cuoi_11.jpg', 6, '2016-07-27', 20),
(48, 'Lavender - Rose', 'lavender- rose', 650000, 420000, 'Hoa lavender, Hoa hồng, Các loại hoa lá phụ', 'Bó hoa cưới mang sắc tím như chính tình yêu lãng mạn, thủy chung của cô dâu chú rể. Cùng với hoa lavender với vẻ đẹp hoang sơ mới mẻ, mang đến hương thơm nhẹ nhàng phảng phất tạo một cảm giác khó quên.', 'hoa_cuoi_12.jpg', 6, '2016-07-27', 20),
(49, 'Giã biệt', 'gia-biet', 1200000, 1000000, 'Hoa ly trắng, Hoa cúc trắng, Hoa hồng, Hoa cẩm chướng Nhật (Green Wicky)', 'Trong cuộc sống chúng ta mất bất cứ thứ gì chúng ta cũng có thể có lại được , nhưng khi chúng ta mất vĩnh viễn một người thân hay một người bạn chúng ta không bao giờ tìm lại được. Với vòng hoa chia buồn Giã Biệt được kết từ hoa Cúc, hoa ly và các phụ liệu khác. Chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẽ cùng gia đình họ.', 'hoa_chia_buon_1.jpg', 4, '2016-05-31', 20),
(50, 'Thương nhớ', 'thuong-nho', 1100000, 1000000, 'Hoa ly, Hoa cúc nhiều màu, Hoa tú cầu xanh, Các loại hoa lá phụ khác', 'Bạn bè, người thân ra đi luôn để lại nỗi buồn và nhung nhớ khôn nguôi trong tâm trí mỗi người. Trong giây phút chia cách đau thương, từng kỷ niệm được hồi tưởng như một cuốn phim chiếu chậm, tràn ngập những niềm vui, nỗi buồn cũng như tiếc nuối. Kệ hoa “Thương nhớ” chất chứa nỗi niềm riêng của người ở lại giành cho người đã khuất, những nỗi niềm giờ đây đã không biết tỏ cùng ai.', 'hoa_chia_buon_2.jpg', 4, '2016-07-27', 20),
(51, 'Miền an lạc', 'niem-an-lac', 1200000, 1000000, 'Hoa ly, Hoa cúc tím, Hoa cúc trắng, Hoa tú cầu', 'Rũ bỏ những muộn phiền, trần ai của cuộc sống, để lòng thanh thản tiến vào hư vô là ý nghĩa của kệ hoa chia buồn “Miền An Lạc”. “Miền An Lạc” thể hiện lòng thành kính của những người ở lại đối với người đã ra đi, nguyện cầu ai rồi cũng đến được bến bờ bình yên.', 'hoa_chia_buon_3.jpg', 4, '2016-07-27', 20),
(52, 'Thành kính phân ưu', 'thanh-kinh-phan-uu', 900000, 750000, 'Hoa cúc trắng, Hoa ly trắng, Hoa tú cầu, Hoa mini trắng, Các loại lá phụ', 'Thành Kính Phân Ưu 1 gồm có hoa Cúc Trắng, hoa Ly Trắng, môn xanh và cẩm tú cầu. Thích hợp để tặng chia buồn.', 'hoa_chia_buon_4.jpg', 4, '2016-07-27', 20),
(53, 'Hạ trắng', 'ha-trang', 950000, 800000, 'Hoa ly trắng, Hoa hồng môn, Hoa cúc trắng, Hoa hồng, Các loại lá phụ', 'Trong cuộc sống chúng ta mất bất cứ thứ gì chúng ta cũng có thể có lại được , nhưng khi chúng ta mất vĩnh viễn một người thân hay một người bạn chúng ta không bao giờ tìm lại được. Với vòng hoa chia buồn \"Hạ trắng\" chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẻ cùng gia đình họ.', 'hoa_chia_buon_5.jpg', 4, '2016-07-27', 20),
(54, 'Nốt trầm', 'not-tram', 1100000, 1000000, 'Hoa ly trắng, Hoa cúc trắng, lan hồ điệp trắng, Hoa cúc tím', 'Có người từng ví mỗi cuộc đời tựa như một bản nhạc với đầy đủ cung bậc thăng trầm. Ứng với những khoảnh khắc tươi vui là những giai điệu rộn ràng và ngược lại, đối với những đớn đau, mất mát thì người ta chỉ có thể cảm nhận sự buồn bã, trầm mặc. Kệ hoa “Nốt trầm” gửi gắm niềm tiếc thương của người ở lại đối với người đã đi xa, cảm tạ vì đã xuất hiện và là một phần cuộc sống của nhau, cùng nhau tạo nên bản nhạc ý nghĩa của cuộc đời.', 'hoa_chia_buon_6.jpg', 4, '2016-07-27', 20),
(55, 'Tôn kính', 'ton-kinh', 650000, 500000, 'Hoa lan tím, Hoa ly, Các loại lá phụ khác ', 'Trong cuộc sống chúng ta mất bất cứ thứ gì chúng ta cũng có thể có lại được, nhưng khi chúng ta mất vĩnh viễn một người thân hay một người bạn chúng ta không bao giờ tìm lại được. Với vòng hoa chia buồn Tôn Kính được kết từ hoa Ly Hồng, hoa Lan Tím và các phụ liệu khác chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẻ cùng gia đình họ.', 'hoa_chia_buon_7.jpg', 4, '2016-07-27', 20),
(56, 'Luyến tiếc', 'luyen-tiec', 800000, 540000, 'Hoa hồng môn, Hoa ly trắng, Hoa cúc trắng, Hoa hồng xanh, Hoa tú cầu, Các loại hoa lá phụ khác', 'Trong cuộc sống chúng ta mất bất cứ thứ gì chúng ta cũng có thể có lại được, nhưng khi chúng ta mất vĩnh viễn một người thân hay một người bạn chúng ta không bao giờ tìm lại được. Với vòng hoa chia buồn Luyến Tiếc được kết từ hoa ly trắng, cúc trắng, hồng môn xanh và các phụ liệu khác. chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẽ cùng gia đình họ.', 'hoa_chia_buon_8.jpg', 4, '2016-07-27', 10),
(57, 'Cõi mơ', 'coi-mo', 1000000, 800000, 'Hoa hồng vàng, Hoa hồng trắng, Hoa cúc tím, Hoa hồng tím, Các loại hoa lá phụ khác', 'Trong cuộc sống chúng ta mất bất cứ thứ gì chúng ta cũng có thể có lại được , nhưng khi chúng ta mất vĩnh viễn một người thân hay một người bạn chúng ta không bao giờ tìm lại được. Với vòng hoa chia buồn Cõi Mơ được kết từ hoa Hồng, hoa Cúc nhiều màu, và các phụ liệu khác chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẻ cùng gia đình họ.', 'hoa_chia_buon_9.jpg', 4, '2016-06-17', 20),
(58, 'Vĩnh biệt', 'vinh-biet', 1100000, 1000000, 'Hoa lan hồ điệp trắng, Hoa hồng trắng, Hoa cúc trắng', 'Trong cuộc sống chúng ta mất bất cứ thứ gì chúng ta cũng có thể có lại được , nhưng khi chúng ta mất vĩnh viễn một người thân hay một người bạn chúng ta không bao giờ tìm lại được. Với vòng hoa chia buồn Vĩnh biệt 1 được kết từ hoa Cúc Trắng, Lan hồ điệp Trắng, Hồng Trắng và các phụ liệu khác chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẻ cùng gia đình họ.', 'hoa_chia_buon_10.jpg', 4, '2016-07-27', 20),
(59, 'Hạc trắng', 'hac-trang', 700000, 620000, 'Hoa hồng trắng, Hoa lan trắng, Các loại lá phụ', 'Trong cuộc sống chúng ta mất bất cứ thứ gì chúng ta cũng có thể có lại được, nhưng khi chúng ta mất vĩnh viễn một người thân hay một người bạn chúng ta không bao giờ tìm lại được. Với kệ hoa chia buồn Hạc Trắng được kết từ hoa Lan, Hồng trắng trên kệ gỗ và các phụ liệu khác chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẻ cùng gia đình họ.', 'hoa_chia_buon_11.jpg', 4, '2016-07-27', 20),
(60, 'Vĩnh cửu', 'vinh-cuu', 750000, 660000, 'Hoa lan trắng, Hoa lan tím, Các loại lá phụ', 'Trong cuộc sống chúng ta mất bất cứ thứ gì chúng ta cũng có thể có lại được, nhưng khi chúng ta mất vĩnh viễn một người thân hay một người bạn chúng ta không bao giờ tìm lại được. Với kệ hoa chia buồn Vĩnh cửu được kết từ hoa lan trắng, lan tím, và các phụ liệu khác chúng tôi sẽ thay mặt bạn đưa tiễn họ và chia sẻ cùng gia đình họ.', 'hoa_chia_buon_12.jpg', 4, '2016-07-27', 20),
(61, 'Bách chiến bách thắng', 'bach-chien-bach-thang', 2100000, 2000000, 'Hoa địa lan, Hoa lan hồ điệp, Hoa lan vũ nữ, Các loại hoa lá phụ khác', 'Kệ hoa khai trương kết hợp hài hòa giữa các loại hoa lan với màu sắc thanh lịch. Kệ hoa mang ý nghĩa tốt đẹp bới sắc màu ấy là biểu tượng của thành công, hợp tác thuận lợi. Thích hợp tặng dịp khai trương công ty, cửa hàng, văn phòng..', 'hoa_chuc_mung_1.jpg', 4, '2016-07-27', 20),
(62, 'Phát triển bền vững', 'phat-trien-ben-vung', 2100000, 2000000, 'Hoa tú cầu, Hoa hồng, Hoa cúc mini, Hoa thủy tiên Nhật, Các loại hoa phụ khác', 'Kệ hoa kết hợp nhiều màu sắc rất bắt mắt và không kém phần sang trọng. Kệ hoa là lời chúc mừng tốt đẹp nhất gửi đến đối tác, khách hàng, bạn bè nhân ngày kỉ niệm thành lập, khai trương công ti, văn phòng, nhà hàng...', 'hoa_chuc_mung_2.jpg', 4, '2016-07-27', 20),
(63, 'Thịnh vượng', 'thinh-vuong', 1300000, 1200000, 'Hoa lan mokara 3 tầng, Các loại lá phụ', 'Chọn tông vàng làm màu sắc chủ đạo, kệ hoa sử dụng hoa lan mokara mang đến vẻ đẹp thanh nhã. Màu sắc ôn hòa của kệ hoa kết hợp thiết kế 3 tầng sẽ khiến không gian của bạn thêm phần sang trọng. Kệ hoa thích hợp tặng bạn bè, khách hàng, đối tác nhân dịp khai trương', 'hoa_chuc_mung_3.jpg', 4, '2016-05-30', 20),
(64, 'Phát tài - Phát lộc', 'phat-tai-phat-loc', 800000, 570000, 'Hoa hồng môn đỏ, Hoa ly, Hoa lan mokara, Hoa hồng đỏ, Hoa thiên điểu, Các loại lá phụ', 'Những đóa hoa tươi màu đỏ bắt mắt được cắm theo phong cách sóng đôi sẽ trở thành món quà nổi bật của bạn. Lẵng hoa được thiết kế với hoa hồng đỏ, hồng môn đỏ kết hợp hoa ly, hoa lan vàng biểu trưng cho sự phát tài, phát lộc. Hoa dành cho khai trương nhà hàng, công ti với thông điệp chúc đối tác ngày càng vươn xa.', 'hoa_chuc_mung_4.jpg', 4, '2016-07-27', 20),
(65, 'Niềm tin', 'niem-tin', 600000, 470000, 'Hoa thiên điểu, Hoa hồng, Hoa tú cầu, Hoa hoàng anh, Các loại lá phụ', 'Trong những dịp khai trương, chúc mừng, giỏ hoa này sẽ là lựa chọn dành cho bạn. Mang vẻ đẹp tươi sáng và nét lịch sự, giỏ hoa là sự kết hợp giữa hoa tú cầu, hoa hồng xanh và hoa thiên điểu.', 'hoa_binh_1.jpg', 5, '2016-06-10', 16),
(66, 'Rạng rỡ', 'rang-ro', 650000, 560000, 'Hoa hồng vàng, Hoa hướng dương, Hoa baby, Hoa cẩm chướng Nhật, Các loại lá phụ', '\"Rạng rỡ\" là một món quà thích hợp tặng người thân, những người mà bạn quí trọng. Bình hoa là sự kết hợp những bông hoa hướng dương vàng rực, hoa hồng duyên dáng trên nền hoa baby mỏng manh. Bình hoa thể hiện sự trân trọng, niềm tự hào mà bạn muốn gửi tới người nhận.', 'hoa_binh_2.jpg', 5, '2016-06-03', 18),
(67, 'Gắn kết yêu thương', 'gan-ket-yeu-thuong', 650000, 570000, 'Hoa hồng da, Hoa hồng đỏ, Hoa tú cầu, Hoa baby', 'Gắn Kết Yêu Thương gồm hoa hoa hồng nhiều màu kết hơp cùng các loại lá phụ cao cấp. Những sắc màu tươi tắn, trẻ trung, đáng yêu và đầy cá tính của hai trái tim trẻ nguyện sánh bước và gắn kết cùng nhau trên con đường đời. Thích hợp để tặng chúc sức khỏe, kỉ niệm,..', 'hoa_binh_3.jpg', 5, '2016-06-10', 20),
(68, 'Dịu dàng', 'diu-dang', 680000, 540000, 'Hoa hồng, Hoa cát tường tím, Hoa cúc tím, Hoa baby, Các loại hoa lá phụ', 'Được thiết kế với tông màu hồng tím, bình hoa Dịu dàng mang lại một vẻ đẹp dịu dàng, ngọt ngào và không kém phần lãng mạn. Những hoa cát tường tím điểm xuyết trên nền hoa hồng kết hợp đồng cúc, baby. Một bình hoa thế này sẽ là món quà tuyệt vời để chúc người luôn hạnh phúc và ngập tràn tình yêu', 'hoa_binh_4.jpg', 5, '2016-06-05', 20),
(69, 'Sum họp', 'sum-hop', 700000, 530000, 'Hoa hồng đỏ, Hoa cát tường tím, Hoa sen đá, Các loai hoa phụ khác', '\"Một chiều thênh thang,về nơi con sóng tràn Nơi đây bình yên một màu xanh gió trong lành...\". Bình hoa như nhắn gửi yêu thương đến hạnh phúc gia đình, sự sum họp quây quần bên nhau.', 'hoa_binh_5.jpg', 5, '2016-05-28', 8),
(70, 'Tia nắng ban mai', 'tia-nang-ban-mai', 450000, 240000, 'Hoa thiên điểu, Hoa lan mokara, Hoa hướng dương, Hoa hồng, Hoa cúc xanh', 'Rực rỡ và ấm áp như những tia nắng ban mai, mẫu hoa được thiết kế theo tông màu vàng này chắc chắn sẽ mang đến cho người nhận niềm hạnh phúc và may mắn. Mẫu hoa thích hợp tặng các dịp chúc mừng, cảm ơn v.v...', 'hoa_binh_6.jpg', 5, '2016-06-08', 5),
(71, 'Tình yêu ngọt ngào', 'tinh-yeu-ngot-ngao', 750000, 560000, 'Hoa hồng, Hoa tú cầu hồng, Hoa cát tường, Các loại hoa lá phụ khác', '\"Tình yêu ngọt ngào\" là sự kết hợp dễ thương của các loại hoa màu hồng và bình sứ cao cấp. Những đóa hoa đang nở rộ khoe sắc tươi tắn chứa đựng một tình yêu mãnh liệt, nồng cháy của một trái tim sôi nổi. Thích hợp để tặng người yêu, kỉ niệm, sinh nhật,...', 'hoa_binh_7.jpg', 5, '2016-07-27', 15),
(72, 'An nhiên', 'an-nhien', 400000, 230000, 'Hoa hồng trắng, Hoa tú cầu, Hoa hồng da, Lá khuynh diệp', 'Sắc trắng kết hợp cùng một chút màu xanh mát rượi của tú cầu luôn mang lại một cảm giác bình yên, trong trẻo đến lạ. \"An nhiên\" sẽ mang đến cho người nhận lời chúc an lành, bình yên trong tâm hồn và nhiều niềm vui trong cuộc sống.', 'hoa_binh_8.jpg', 5, '2016-06-06', 15),
(74, 'Sắc vàng', 'sac-vang', 800000, 680000, 'Hoa lan vữ nữ, Hoa hồng vàng,Các loại hoa lá phụ', 'Bình hoa với tông màu vàng là chủ đạo, mang đến cảm giác tươi mới cho người nhận. Ngoài ra với sự kết hợp tinh tế của các loại hoa làm cho \"Sắc vàng\" mang vẻ đẹp sang trọng. Thích hợp để trưng bày, hoặc giành tặng cho bạn bè, người thân, đối tác…', 'hoa_binh_10.jpg', 5, '2016-07-27', 14),
(75, 'Give love', 'give-love', 380000, 200000, 'Hoa hồng, Hoa cúc tím, Hoa baby', 'Chọn tông hồng - trắng làm màu sắc chủ đạo, “Give love” tạo nên một tổng thể nhẹ nhàng, khơi gợi cảm giác thư thái, vui tươi khi ngắm nhìn. Tên gọi “Give love” gửi gắm thông điệp: Tình yêu vốn dĩ không phải là điều ta nhận đuợc mà là những gì ta cho đi. Hãy chia sẻ yêu thương khi ta còn có thể vì chính tình yêu sẽ làm cuộc sống thêm tươi vui, hạnh phúc! Tách hoa “Give love” phù hợp tặng cho bạn bè, người thân và cả người ấy. Đặc biệt, với kích thước nhỏ gọn, “Give love” phù hợp trưng bày ở nhiều không gian khác nhau.', 'hoa_binh_11.jpg', 5, '2016-06-04', 0),
(76, 'Ngày cuối tuần', 'ngay-cuoi-tuan', 450000, 230000, 'Hoa hồng, Hoa tú cầu, Hoa hoàng anh', 'Sau một tuần làm việc mệt nhoài, chúng ta đều có quyền tự thưởng cho mình những ngày nghỉ để phục hồi năng lượng. Những ngày cuối tuần có thể trôi qua nhẹ nhàng và tùy ý, miễn sao chúng khiến bản thân cảm thấy thoải mái, dễ chịu. Dựa trên ý tưởng đó, “Ngày cuối tuần” ra đời với sự tập hợp của nhiều loại hoa có điểm chung là dịu nhẹ, tinh khiết. Hy vọng rằng món quà này sẽ đem đến cho khách hàng “một làn gió mát”, giảm bớt áp lực giữa cuộc sống bộn bề lo toan, tiếp sức cho những ngày dài phía trước.', 'hoa_binh_12.jpg', 5, '2016-06-16', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL,
  `ngay_dat` datetime NOT NULL,
  `trang_thai` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tong_thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_khach_hang`, `ngay_dat`, `trang_thai`, `tong_thanh_tien`) VALUES
(3, 57, '2018-01-05 21:08:14', 'Đã xử lý', 250000),
(4, 58, '2018-01-06 21:23:30', 'Đã xử lý', 680000),
(5, 59, '2018-01-06 21:31:11', 'Đã xử lý', 230000),
(6, 60, '2018-01-07 21:33:03', 'Đã xử lý', 1330000),
(7, 61, '2018-01-07 21:35:04', 'Đã xử lý', 470000),
(8, 62, '2018-01-08 10:02:02', 'Đã xử lý', 200000),
(9, 63, '2018-01-08 10:03:35', 'Đã xử lý', 560000),
(10, 64, '2018-01-09 09:37:34', 'Chưa xử lý', 530000),
(11, 65, '2018-01-09 10:29:30', 'Chưa xử lý', 1350000),
(12, 66, '2018-01-09 18:59:25', 'Chưa xử lý', 480000),
(14, 68, '2018-01-12 13:16:50', 'Chưa xử lý', 200000),
(15, 69, '2018-01-12 21:35:56', 'Chưa xử lý', 660000),
(16, 70, '2018-01-13 17:53:54', 'Chưa xử lý', 680000),
(17, 71, '2018-01-14 16:28:54', 'Chưa xử lý', 400000),
(18, 72, '2017-10-01 19:59:00', 'Đã xử lý', 200000),
(19, 73, '2018-01-14 20:07:48', 'Chưa xử lý', 710000),
(20, 74, '2018-01-14 20:15:03', 'Chưa xử lý', 470000),
(21, 75, '2018-01-15 18:10:24', 'Chưa xử lý', 370000),
(22, 76, '2018-01-15 18:23:32', 'Chưa xử lý', 200000),
(23, 77, '2018-01-15 18:25:24', 'Chưa xử lý', 350000),
(24, 0, '2018-01-21 20:59:22', 'Chưa xử lý', 470000),
(25, 81, '2018-01-26 08:14:02', 'Chưa xử lý', 560000),
(26, 82, '2018-01-26 18:48:21', 'Chưa xử lý', 11490000),
(27, 83, '2018-01-27 05:22:23', 'Chưa xử lý', 1590000),
(28, 83, '2018-01-27 05:22:38', 'Chưa xử lý', 680000),
(29, 84, '2018-01-28 11:24:34', 'Chưa xử lý', 680000),
(30, 78, '2018-01-28 20:32:00', 'Chưa xử lý', 680000),
(31, 78, '2018-01-28 20:33:12', 'Chưa xử lý', 750000),
(32, 87, '2018-02-01 20:01:50', 'Chưa xử lý', 940000),
(33, 88, '2018-02-02 08:03:46', 'Đã xử lý', 530000),
(34, 88, '2018-02-02 09:16:38', 'Chưa xử lý', 230000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_khach_hang` int(11) NOT NULL,
  `ten_khach_hang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phai` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_khach_hang`, `ten_khach_hang`, `phai`, `email`, `dia_chi`, `dien_thoai`, `matKhau`) VALUES
(47, 'Nguyễn Văn A', 1, 'a@gmail.com', 'Quận 10 Việt Nam', '016666666', ''),
(48, 'Nguyễn Văn B', 1, 'b@gmail.com', 'Việt Nam', '232', ''),
(49, 'Lâm Văn C', 1, 'c@gmail.com', 'Việt Nam', '213213', ''),
(50, 'Lâm Văn D', 1, 'd@gmail.com', 'Việt Nam', '213d213', ''),
(51, 'Nguyễn Thị C', 0, 'cc@gmail.com', 'Việt Nam', '01', ''),
(52, 'Anh', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(53, 'Trần Văn C', 1, 'asdas@asdas.com', '192 Hàm Tử', '113', ''),
(54, 'Nguyễn Thị A', 0, 'asdas@asdas.com', '187 Lê Lợi', '6546849', ''),
(55, 'Nguyễn Thị A', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(56, 'Anh', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(57, 'Anh', 0, 'vuphuongang020497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(58, 'Anh', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(59, 'Anh', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(60, 'Lan', 0, 'lan@gmail.com', '135 Nguyễn Huệ', '546546', ''),
(61, 'Tèo', 1, 'teo@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(62, 'sdf', 1, 'dfs@gmail.com', 'dsads', '214312', ''),
(63, 'anh', 0, 'vuphuongang020497@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(64, 'Hòa', 1, 'hoa@gmail.com', '218 Lê Văn Sỹ', '0565165654', ''),
(65, 'Loan', 0, 'loan123@gmail.com', '123 Lê Lợi', '3216546', ''),
(66, 'Minh', 1, 'minh@gmail.com', '194 Lê Hồng Phong', '0938184297', ''),
(67, 'Nguyễn Văn A', 1, 'a@gmail.com', 'viet nam', '01637902900', ''),
(68, 'Nguyễn Văn A', 1, 'da@Gmail.com', 'vietnam', '01637902900', ''),
(69, 'Nguyễn Văn B', 1, 'pinkp7996@gmail.com', '137E, Nguyễn Chí Thanh, Phường 9, Quận 5, TPHCM', '01637900000', ''),
(70, 'Hoa', 0, 'hoa@gmail.com', '124 Hồng Bàng', '65465465', ''),
(71, 'Huy', 1, 'huy@gmail.com', '198 Ba Đình', '56879846', ''),
(72, 'Hoàng', 1, 'hoangnam@gmail.com', '155 Lê Lai', '546548', '827ccb0eea8a706c4c34a16891f84e7b'),
(73, 'Thắng', 1, 'thang@gmail.com', '189 Lý Thường Kiệt', '654684', '827ccb0eea8a706c4c34a16891f84e7b'),
(74, 'Thúy', 0, 'thanhthuy@gmail.com', '182 Nguyễn Tri Phương', '5133216', '827ccb0eea8a706c4c34a16891f84e7b'),
(75, 'mỹ', 0, 'vuphuonganh2497@gmail.com', '194 Lê Hồng Phong', '0938184297', '827ccb0eea8a706c4c34a16891f84e7b'),
(76, 'Nguyễn Thị Tú', 0, 'nguyenthitu@gmail.com', '123 Cống Quỳnh', '5665654', '827ccb0eea8a706c4c34a16891f84e7b'),
(77, 'Trương Ngọc Hân', 0, 'ngochan@gmail.com', '234 Nguyễn Kim', '5464', '827ccb0eea8a706c4c34a16891f84e7b'),
(78, 'Quỳnh Anh', 1, 'quynhchi@gmail.com', '31651651', '54 Nguyễn Cư Trinh', '827ccb0eea8a706c4c34a16891f84e7b'),
(79, 'Nguyễn Thị Hoa', 0, 'hoa@gmail.com', '12 Hai Bà Trưng', '13568468', '827ccb0eea8a706c4c34a16891f84e7b'),
(80, 'a', 1, 'adas@gmail.com', 'aa', '11', '96e79218965eb72c92a549dd5a330112'),
(81, 'phuc', 1, 'pinkp7996@gmail.com', 'dong nai', '01637902900', '7a1c841b4a1a2491168327b0c24f561a'),
(82, 'asda', 1, 'asd@gmail.com', 'dasdas', '312', 'a7b1cabd7d021b107ef6064ad2d75c7b'),
(83, 'a', 1, 'a@gmail.com', 'a', '1', '698d51a19d8a121ce581499d7b701668'),
(84, 'Nguyễn Văn A', 1, 'a@gmail.com', 'Quận 10, HCM, VN', '01637900000', '0cc175b9c0f1b6a831c399e269772661'),
(85, 'Vũ Phương Anh', 0, 'vuphuonganh@gmail.com', '194 Lê Hồng Phong', '0938184297', '827ccb0eea8a706c4c34a16891f84e7b'),
(86, 'Quỳnh Chi', 0, 'yeudoiyeunguoiyeutele@gmail.com', '54 Nguyễn Cư Trinh', '132135165', '827ccb0eea8a706c4c34a16891f84e7b'),
(87, 'Nguyễn Văn A', 1, 'a@gmail.com', 'Việt Nam', '01637900000', '20ca70c7c8f494c7bd1d54ad23d40cde'),
(88, 'Nguyễn Thị B', 0, 'b@gmail.com', 'việt nam', '016379999999', '0a2c9fef5b387c0a81119c420231640d');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su`
--

CREATE TABLE `lich_su` (
  `id` int(11) NOT NULL,
  `ma_hoa` int(11) NOT NULL,
  `ma_khach_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lich_su`
--

INSERT INTO `lich_su` (`id`, `ma_hoa`, `ma_khach_hang`) VALUES
(1, 75, 85),
(2, 67, 85),
(3, 20, 85);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_hoa`
--

CREATE TABLE `loai_hoa` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_hoa`
--

INSERT INTO `loai_hoa` (`MaLoai`, `TenLoai`) VALUES
(2, 'Hoa hộp'),
(3, 'Hoa cắm giỏ'),
(4, 'Hoa đại sảnh'),
(5, 'Hoa cắm bình'),
(6, 'Hoa cầm tay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_tin`
--

CREATE TABLE `loai_tin` (
  `MaLoaiTin` int(11) NOT NULL,
  `TenLoaiTin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loai_tin`
--

INSERT INTO `loai_tin` (`MaLoaiTin`, `TenLoaiTin`) VALUES
(1, 'Tin tức mới'),
(2, 'Tin công ty'),
(3, 'Tin khuyến mãi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `hinh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `hinh`) VALUES
(1, 'logo.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_cao`
--

CREATE TABLE `quang_cao` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quang_cao`
--

INSERT INTO `quang_cao` (`id`, `TieuDe`, `Hinh`, `DuongDan`, `ThoiGian`) VALUES
(1, 'QC1 Hoa', 'Banner-cuoi-trang-1.jpg', 'danh-sach-hoa.html', '2018-01-12 18:16:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(100) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `TieuDe`, `Hinh`, `DuongDan`, `ThoiGian`) VALUES
(1, 'Khai trương shop', '1.png', 'danh-sach-hoa', '2017-12-17 13:03:06'),
(2, 'Khuyến mãi noel', '2.jpg', 'danh-sach-hoa', '2017-12-17 11:47:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin`
--

CREATE TABLE `thong_tin` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `HanhDong` varchar(50) NOT NULL DEFAULT 'Mua Ngay',
  `ThoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thong_tin`
--

INSERT INTO `thong_tin` (`id`, `TieuDe`, `Hinh`, `DuongDan`, `HanhDong`, `ThoiGian`) VALUES
(1, 'Banner 1', '1.jpg', '.', 'Mua Ngay', '2018-01-12 18:14:50'),
(2, 'Banner 2', '2.jpg', '.', 'Mua Ngay', '2018-01-12 18:15:08'),
(3, 'Banner 3', '3.jpg', '.', 'Mua Ngay', '2018-01-12 18:15:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `MaTT` int(11) NOT NULL,
  `TenTT` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` date NOT NULL,
  `MaLoaiTin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`MaTT`, `TenTT`, `NoiDung`, `Hinh`, `ThoiGian`, `MaLoaiTin`) VALUES
(1, 'Mách nhỏ 10 mẹo giữ hoa tươi lâu!', '<p><strong>Cắm trong nước &acirc;́m làm tăng t&ocirc;́c đ&ocirc;̣ hút nước của hoa.</strong></p>\r\n\r\n<p>Hoa tươi lu&ocirc;n mang đến cho mọi người niềm vui v&agrave; hạnh ph&uacute;c. Tuy nhi&ecirc;n, vẻ đẹp của hoa rất nhanh ch&oacute;ng t&agrave;n phai khi bạn chưa kịp thưởng thức. Tuy kh&ocirc;ng thể lưu giữ m&atilde;i m&atilde;i nhưng lu&ocirc;n c&oacute; một số c&aacute;ch để bạn n&iacute;u giữ &quot;tuổi thanh xu&acirc;n&quot; của những đ&oacute;a hoa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cắm hoa trong b&igrave;nh lớn</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://3.bp.blogspot.com/-X8S0WMhkS_g/WQrdyWR7ZqI/AAAAAAAADL4/fWSqe0MLkxA5YRfOkdHCWyToBynXCc4kQCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-1.jpg\" style=\"height:270px; width:500px\" /></strong></p>\r\n\r\n<p>Lu&ocirc;n lu&ocirc;n sử dụng b&igrave;nh, lọ sạch sẽ.&nbsp;B&iacute; quyết n&agrave;y sẽ l&agrave;m giảm nguy cơ vi khuẩn v&agrave; vi sinh vật sinh s&ocirc;i&nbsp;v&agrave; l&agrave;m hỏng&nbsp;hoa.&nbsp;Để đảm bảo rằng th&acirc;n c&acirc;y của hoa kh&ocirc;ng bị th&iacute;t qu&aacute; chặt,&nbsp;h&atilde;y chọn b&igrave;nh với cổ rộng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cắm hoa trong nước n&oacute;ng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://4.bp.blogspot.com/-aVriRMqoOQc/WQrdyTmoifI/AAAAAAAADL8/Wh2XHsxGjhwQ_Ten0m2ja-eDtR7B5OXDgCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-2.jpg\" style=\"height:250px; width:500px\" /></strong></p>\r\n\r\n<p>Tất nhi&ecirc;n l&agrave; kh&ocirc;ng phải cắm nước s&ocirc;i. Nhiệt độ nước cắm ban đầu khoảng&nbsp;43-44 độ C.&nbsp;Đổ nước v&agrave;o b&igrave;nh v&agrave; đặt n&oacute; ở nơi tho&aacute;ng m&aacute;t trong một hoặc hai giờ.&nbsp;C&aacute;c ph&acirc;n tử nước n&oacute;ng di chuyển nhanh hơn qua th&acirc;n c&acirc;y, trong khi hoa mất &iacute;t độ ẩm v&igrave; nhiệt độ kh&ocirc;ng kh&iacute; lạnh hơn.&nbsp;Phương ph&aacute;p n&agrave;y gi&uacute;p k&eacute;o d&agrave;i tuổi thọ của hoa tươi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;y sử dụng nước ấm</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://1.bp.blogspot.com/-b3eiKs3dj0w/WQrdy3ETUOI/AAAAAAAADME/12f6GjoBIMcoss8TjkzZoTkr5w1mAnGfQCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-3.jpg\" style=\"height:396px; width:500px\" /></strong></p>\r\n\r\n<p>Nếu bạn kh&ocirc;ng sử dụng phương ph&aacute;p tr&ecirc;n, chỉ cần cắm hoa của bạn trong nước ấm hoặc ở nhiệt độ ph&ograve;ng.&nbsp;Hoa h&uacute;t&nbsp;lấy nước n&oacute;ng dễ d&agrave;ng hơn so với nước&nbsp;lạnh.&nbsp;Tuy nhi&ecirc;n, c&aacute;c loại hoa c&oacute; củ như ti&ecirc;n &ocirc;ng lại th&iacute;ch nước lạnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ngắt bớt l&aacute; ph&iacute;a dưới</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://4.bp.blogspot.com/-sP3FdAlI7vc/WQrdy1-ZAHI/AAAAAAAADMI/BCugCXkDl1sqm8-_3ZHWnkvg9rDAM-zcwCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-4.jpg\" style=\"height:396px; width:500px\" /></strong></p>\r\n\r\n<p>Để l&agrave;m hoa tươi hơn, trước khi cắm, mọi người phải ngắt hết l&aacute; phần dưới kh&ocirc;ng để cho nằm trong nước. L&aacute; ch&igrave;m trong nước c&oacute; thể bắt đầu thối rất nhanh, do đ&oacute; l&agrave; m&ocirc;i trường l&yacute; tưởng&nbsp;cho vi khuẩn ph&aacute;t triển.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Thay nước thường xuy&ecirc;n</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://1.bp.blogspot.com/-XDvsRKCqgHQ/WQrdy8DAj9I/AAAAAAAADMM/jJ2ZPYwhm5M0RDHm79YflNften-SHlVogCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-5.jpg\" style=\"height:396px; width:500px\" /></strong></p>\r\n\r\n<p>Để giữ hoa tươi, h&atilde;y thay nước mỗi ng&agrave;y.&nbsp;V&agrave; đừng qu&ecirc;n rửa sạch c&aacute;c mảnh l&aacute; v&agrave; c&aacute;nh hoa vụn trong b&igrave;nh. Bạn cũng c&oacute; thể th&ecirc;m một v&agrave;i vi&ecirc;n aspirin v&agrave;o b&igrave;nh nước để giữ cho nước sạch v&agrave; kh&ocirc;ng c&oacute; vi khuẩn g&acirc;y hại hoa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cắt c&agrave;nh&nbsp;theo một g&oacute;c ch&eacute;o</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://4.bp.blogspot.com/-kQBEld7dVLE/WQrdzBUjTZI/AAAAAAAADMU/LSwk4ucySfY6vNxlPesYxLXyqyFJa2gvgCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-6.jpg\" style=\"height:333px; width:500px\" /></strong></p>\r\n\r\n<p>Đừng qu&ecirc;n cắt bớt c&agrave;nh một ch&uacute;t mỗi ng&agrave;y. Sử dụng một con dao sắc v&agrave; cắt 1&nbsp;g&oacute;c 45 độ.&nbsp;Mẹo đơn giản n&agrave;y sẽ l&agrave;m tăng&nbsp;khả năng hấp thụ nước của hoa.&nbsp;</p>\r\n\r\n<p>Với nhiều loại hoa nhạy cảm hơn như hoa hồng,&nbsp;tốt nhất n&ecirc;n cắt c&agrave;nh dưới nước.&nbsp;Hoa hồng đặc biệt nhạy cảm với bọt kh&iacute; v&agrave; vi khuẩn, g&acirc;y cản trở sự hấp thụ nước v&agrave; l&agrave;m cho hoa h&eacute;o&nbsp;nhanh hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sử dụng chất bảo quản hoa</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://1.bp.blogspot.com/-hlVKs9d2sfw/WQrdzRamk0I/AAAAAAAADMQ/PfQXz0QdP7IVIdlrCauSHHtlX4REZSzOACLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-7.jpg\" style=\"height:335px; width:500px\" /></strong></p>\r\n\r\n<p>Bạn c&oacute; thể mua chất bảo quản&nbsp;hoa tại c&aacute;c cửa h&agrave;ng n&ocirc;ng nghiệp.&nbsp;Chất bảo quản thực vật chứa c&aacute;c th&agrave;nh phần cơ bản cần thiết để&nbsp;k&eacute;o d&agrave;i tuổi thọ của hoa tươi.&nbsp;Hơn nữa, trong số c&aacute;c th&agrave;nh phần của ch&uacute;ng c&oacute;&nbsp;c&aacute;c chất diệt khuẩn ngăn kh&ocirc;ng cho vi khuẩn l&acirc;y lan v&agrave; l&acirc;y nhiễm .</p>\r\n\r\n<p>Một c&aacute;ch đơn giản để tự chế chất bảo quản l&agrave; pha nước c&oacute; ga với nước rửa b&aacute;t v&agrave;o trong b&igrave;nh nước cắm. Sử dụng một phần soda v&agrave; ba phần nước, sau đ&oacute; th&ecirc;m một v&agrave;i giọt thuốc tẩy (kh&ocirc;ng nhiều) để diệt c&aacute;c vi sinh vật g&acirc;y hại.&nbsp;Tr&ecirc;n thực tế, hỗn hợp n&agrave;y c&oacute; thể hiệu quả hơn nhiều so với một số chất bảo quản hoa được b&agrave;y b&aacute;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Giữ hoa c&aacute;ch xa &aacute;nh nắng mặt trời trực tiếp, l&ograve; sưởi v&agrave; tr&aacute;i c&acirc;y.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://3.bp.blogspot.com/-ftCP402_RWI/WQrdzXh40PI/AAAAAAAADMY/L_s_6y31gVMeB5b217RmqH-D1BpEIJLGwCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-8.jpg\" style=\"height:250px; width:500px\" /></strong></p>\r\n\r\n<p>T&igrave;m một nơi để&nbsp;hoa kh&ocirc;ng bị &aacute;nh s&aacute;ng mặt trời trực tiếp hoặc gần c&aacute;c nguồn nhiệt.&nbsp;Bạn cũng n&ecirc;n tr&aacute;nh đặt hoa cắt gần&nbsp;b&aacute;t với tr&aacute;i c&acirc;y,&nbsp;v&igrave; ch&uacute;ng to&aacute;t&nbsp;ra một lượng nhỏ ethylene, một loại kh&iacute; c&oacute; thể khiến hoa h&eacute;o&nbsp;đi nhanh ch&oacute;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vứt bỏ hoa h&eacute;o c&agrave;ng sớm c&agrave;ng tốt.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://3.bp.blogspot.com/-KZiiszPbk48/WQrdzlz5W0I/AAAAAAAADMc/t2pTxs9WOvYRMpYAPqYZ7NJuXWvJP0hVgCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-9.jpg\" style=\"height:396px; width:500px\" /></strong></p>\r\n\r\n<p>Bỏ bất kỳ b&ocirc;ng hoa n&agrave;o đang h&eacute;o dần ra khỏi b&igrave;nh. Nếu kh&ocirc;ng, kh&iacute; ethylene to&aacute;t ra từ những b&ocirc;ng hoa đang h&eacute;o rũ sẽ nhanh ch&oacute;ng l&agrave;m những b&ocirc;ng hoa tươi yếu dần.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cắm&nbsp;hoa đ&uacute;ng c&aacute;ch</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://1.bp.blogspot.com/-SkqjELk79WY/WQrdycj1KtI/AAAAAAAADMA/Xvt_Y9wiSP4LGg4GJT0U84bQPfQgsR7RQCLcB/s1600/ma%25CC%2581ch-nho%25CC%2589-chi%25CC%25A3-em-10-me%25CC%25A3o-giu%25CC%2583-hoa-tuoi-lau-ai-cu%25CC%2583ng-nen-bie%25CC%2581t-10.jpg\" style=\"height:396px; width:500px\" /></strong></p>\r\n\r\n<p>Kh&ocirc;ng phải tất cả c&aacute;c loại hoa đều c&oacute; thể cắm chung với nhau.&nbsp;Hoa thủy ti&ecirc;n v&agrave; hoa ti&ecirc;n &ocirc;ng rất dễ l&agrave;m h&eacute;o c&aacute;c hoa kh&aacute;c, v&igrave; vậy tốt nhất n&ecirc;n để ch&uacute;ng trong b&igrave;nh ri&ecirc;ng.</p>\r\n\r\n<p><strong>Shop hoa tươi&nbsp;sưu t&acirc;̀m</strong></p>\r\n', 'tin_tuc_1.jpg', '2017-12-17', 1),
(2, 'NÊN TẶNG GÌ TRONG NGÀY CỦA MẸ?', '<p>Nếu bạn chưa nghĩ ra được th&igrave; <strong>shop hoa tươi</strong>&nbsp;sẽ gợi &yacute; để&nbsp;bạn tham khảo nh&eacute;&nbsp;nh&eacute;:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. L&agrave;m một album h&igrave;nh kỷ niệm:</strong></p>\r\n\r\n<p>C&aacute;c tấm ảnh, khung h&igrave;nh của những ph&uacute;t gi&acirc;y vui vẻ, hạnh ph&uacute;c đ&atilde; qua của ba mẹ, con c&aacute;i, anh em sẽ l&agrave; chất keo gắn kết c&aacute;c th&agrave;nh vi&ecirc;n gia đ&igrave;nh lại với nhau hơn v&agrave; l&agrave; điều m&agrave; người mẹ n&agrave;o cũng mong muốn cho gia đ&igrave;nh m&igrave;nh. H&atilde;y cố gắng t&igrave;m v&agrave; sưu tập những h&igrave;nh ảnh m&agrave; mẹ chưa từng xem hay đ&atilde; l&acirc;u rồi chưa xem, đảm bảo mẹ m&igrave;nh sẽ bất ngờ v&agrave; cảm động lắm đấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Đồ handmade</strong></p>\r\n\r\n<p>C&aacute;c mẹ sẽ rất hạnh ph&uacute;c khi được nhận một m&oacute;n qu&agrave; do ch&iacute;nh tay bạn l&agrave;m ra đấy. Nếu kh&eacute;o tay, bạn c&oacute; thể lựa chọn l&agrave;m tặng mẹ một lẵng hoa giấy k&egrave;m theo một tấm&nbsp;thiệp thật độc đ&aacute;o, c&ugrave;ng lời đề tặng y&ecirc;u thương d&agrave;nh cho mẹ. Bạn cũng c&oacute; thể tự thiết kế ri&ecirc;ng một khung h&igrave;nh bằng gỗ rồi đặt ảnh chụp gia đ&igrave;nh, ảnh của mẹ v&agrave; bạn hoặc ảnh của ri&ecirc;ng mẹ v&agrave;o đ&oacute;. Chắc chắn mẹ sẽ rất ngạc nhi&ecirc;n với những m&oacute;n qu&agrave; độc đ&aacute;o do ch&iacute;nh tay bạn l&agrave;m n&ecirc;n đ&oacute;.</p>\r\n\r\n<p>Nguy&ecirc;n liệu cho những m&oacute;n qu&agrave; độc n&agrave;y rất dễ t&igrave;m. Bạn c&oacute; thể tận dụng những đồ vật cũ hoặc mua tại c&aacute;c cửa h&agrave;ng b&aacute;n qu&agrave; tặng, văn ph&ograve;ng phẩm với chi ph&iacute; kh&ocirc;ng vượt qu&aacute;&nbsp;200,000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Hoa tươi</strong></p>\r\n\r\n<p>Hoa tươi dường như l&agrave; m&oacute;n qu&agrave; th&ocirc;ng dụng nhất d&agrave;nh tặng cho c&aacute;c mẹ v&agrave;o những ng&agrave;y lễ lớn như 8/3, 20/10, đương nhi&ecirc;n l&agrave; kh&ocirc;ng c&oacute; ngoại lệ cho Ng&agrave;y Của Mẹ &ndash; Mother&rsquo;s Day. Thay v&igrave; mua hoa hồng, bạn c&oacute; thể chọn mua một b&oacute; hoa ly để về nh&agrave; cắm, một b&oacute; cẩm chướng hay một lẵng&nbsp;<a href=\"http://diendanrao.com/tang-qua-gi-trong-ngay-cua-me-mothers-day/%20http://diendanrao.com/hoa-lan\" target=\"_blank\">hoa lan</a>&nbsp;t&ugrave;y v&agrave;o sở th&iacute;ch của mẹ v&agrave; bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. L&agrave;m một DVD d&agrave;nh cho gia đ&igrave;nh v&agrave; mẹ:</strong></p>\r\n\r\n<p>Tối h&ocirc;m đ&oacute; h&atilde;y tập hợp gia đ&igrave;nh lại để xem một đĩa DVD ngắn được sản xuất bởi ch&iacute;nh bạn. DVD đ&oacute; c&oacute; nội dung g&igrave; đ&acirc;y ? H&atilde;y&nbsp;&ldquo;Be Creative&rdquo;&nbsp;n&agrave;o: chỉnh sửa tập hợp một v&agrave;i tấm ảnh để tạo slide, quay clip cha con n&oacute;i về mẹ, lồng v&agrave;o một v&agrave;i đoạn nhạc m&agrave; mẹ ưa th&iacute;ch, tạo hiệu ứng h&igrave;nh ảnh k&egrave;m những lời ch&uacute;c d&agrave;nh cho mẹ,&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. Một buổi ăn tối v&agrave; vui chơi c&ugrave;ng mẹ :</strong></p>\r\n\r\n<p>Mọi th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh h&atilde;y d&agrave;nh trọn một buổi tối để rủ mẹ đi ăn ngo&agrave;i một bữa. Sau đ&oacute; cả nh&agrave; c&ugrave;ng l&agrave;m v&agrave;i mini liveshow ca nhạc như h&aacute;t Karaoke chẳng hạn. Đ&acirc;y sẽ l&agrave; dịp để mẹ tho&aacute;t khỏi nhịp điệu nội trợ nh&agrave;m ch&aacute;n h&agrave;ng ng&agrave;y v&agrave; nạp năng lượng đấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. Nếu kh&ocirc;ng ăn ngo&agrave;i th&igrave; tự tay bạn l&agrave;m buổi tối cho mẹ vậy:</strong></p>\r\n\r\n<p>Tự tay bạn l&agrave;m những m&oacute;n m&agrave; mẹ th&iacute;ch. H&atilde;y để b&agrave; ngồi relax v&agrave; xem bạn tự tay dọn b&agrave;n ăn chi&ecirc;u đ&atilde;i v&agrave; phục vụ cả nh&agrave;. Chắn chắn l&agrave; mẹ bạn sẽ ăn rất ngon.</p>\r\n\r\n<p>&Agrave; c&ograve;n một c&aacute;i m&igrave;nh qu&ecirc;n l&agrave; sau khi ăn th&igrave; bạn h&atilde;y nhớ tự tay rửa ch&eacute;n v&agrave; dọn dẹp nh&eacute; v&agrave; nhớ l&agrave; phải l&agrave;m sao cho sạch b&oacute;ng đấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. Phụ mẹ l&agrave;m c&aacute;c việc thường ng&agrave;y trong gia đ&igrave;nh:</strong></p>\r\n\r\n<p>Đ&acirc;y c&oacute; thể xem l&agrave; c&aacute;ch cổ điển v&agrave; &iacute;t tốn k&eacute;m nhất nhưng m&agrave; kh&ocirc;ng bao giờ l&agrave; lỗi thời đ&acirc;u. H&atilde;y lau nh&agrave;, qu&eacute;t nh&agrave;, tưới c&acirc;y, dọn dẹp nh&agrave; cửa, rửa xe, giặt đồ, ủi đồ,&hellip; n&oacute;i chung l&agrave; mẹ l&agrave;m c&aacute;i g&igrave; th&igrave; m&igrave;nh nhảy v&agrave;o phụ th&ocirc;i.</p>\r\n\r\n<p>Mẹ thường rất đơn giản chỉ cần m&igrave;nh biết quan t&acirc;m mẹ, y&ecirc;u thương mẹ nhiều khi đ&oacute; cũng l&agrave; m&oacute;n qu&aacute; tuyệt vời kh&ocirc;ng k&eacute;m đối với mẹ đ&oacute; c&aacute;c bạn ạ!</p>\r\n', 'tin_tuc_3.jpg', '2017-12-17', 1),
(3, 'Lung linh những chiếc váy hoa tí hon dễ thương', 'Với đôi tay khéo léo nghệ sĩ đã sắp xếp những cánh hoa, bông hoa và vẽ nên những bức tranh thật ấn tượng và trông rất thực về chiếc váy của người phụ nữ.\r\nHoa và thời trang là hai niềm đam mê của phái đẹp. Kết hợp giữa 2 yếu tố này tạo nên vẻ đẹp khó tả. Và đây cũng chính là nguồn cảm hứng giúp nghệ sĩ thi giác người Malaysia, Limzy tạo nên những bản phác thảo thời trang từ rất nhiều loại hoa khác nhau như hồng, cẩm chướng, hoa lan, hướng dương.', 'tin_tuc_4.jpg', '2016-06-13', 1),
(4, 'Những cách tặng hoa bất ngờ cho ngày 20/10', '<p><strong>1.Hoa tươi:</strong></p>\r\n\r\n<p><a href=\"http://www.dienhoadanang.com/danh-muc/16-hoa-tuoi-tang-dip-20-11\" target=\"_blank\">Hoa tươi</a>&nbsp;lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu trong danh mục c&aacute;c m&oacute;n qu&agrave; tặng &yacute; nghĩa nhất để trao gửi y&ecirc;u thương v&agrave; thể hiện tấm l&ograve;ng. Trong c&aacute;c ng&agrave;y đặc biệt trong năm, mỗi nh&agrave; lại kh&ocirc;ng thể vắng b&oacute;ng những giỏ hoa, b&oacute; hoa tươi sắc v&agrave; trong ng&agrave;y 20/11 hoa tươi lại c&agrave;ng được ưa chuộng.&nbsp;</p>\r\n\r\n<p>C&aacute;c Thầy, c&aacute;c C&ocirc; nhận được b&oacute; hoa tươi của học tr&ograve; c&ugrave;ng những d&ograve;ng chữ ngay ngắn tr&ecirc;n tấm thiệp viết tay chắc hẳn trong t&acirc;m khảm sẽ rất vui mừng bời c&ocirc;, cậu học tr&ograve; nhỏ của m&igrave;nh nay đ&atilde; lớn kh&ocirc;n, đ&atilde; biết tới c&ocirc;ng lao dưỡng dục của m&igrave;nh suốt những th&aacute;ng ng&agrave;y đ&egrave;n s&aacute;ch.</p>\r\n\r\n<p>Hoa tươi ng&agrave;y nay c&oacute; thật nhiều kiểu d&aacute;ng để bạn lựa chọn, vừa&nbsp;<a href=\"http://www.dienhoadanang.com/danh-muc/20-hoa-tuoi-bo-\" target=\"_blank\">b&oacute; tr&ograve;n, b&oacute; d&agrave;i</a>, vừa cắm giỏ, cắm hộp rồi cắm b&igrave;nh,... Bạn tha hồ lựa chọn kiểu c&aacute;ch h&ograve;a trộn m&agrave;u sắc bắt mắt để d&agrave;nh tặng C&ocirc;, Thầy. Nếu bạn muốn th&ecirc;m phần &yacute; nghĩa, bạn ho&agrave;n to&agrave;n c&oacute; thể mua hoa tươi về v&agrave; tự tạo cho m&igrave;nh m&oacute;n qu&agrave; tặng nh&acirc;n ng&agrave;y 20/11. C&ograve;n nếu kh&ocirc;ng bạn c&oacute; thể tới c&aacute;c&nbsp;<a href=\"http://www.dienhoadanang.com/\" target=\"_blank\" title=\"Điện hoa Đà Nẵng\">shop hoa uy t&iacute;n</a>&nbsp;để dặt hoa theo &yacute; m&igrave;nh mong muốn, c&aacute;c&nbsp;<a href=\"http://www.dienhoadanang.com/\" target=\"_blank\" title=\"Hoa tươi Đà Nẵng\">dịch vụ giao hoa tận tay</a>&nbsp;lu&ocirc;n sẵn s&agrave;ng gi&uacute;p đỡ bạn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://4.bp.blogspot.com/-yrhBrpLcRY4/WBFsf0wI_6I/AAAAAAAABYw/ib-Qb_agd2kEwMwJMM6R8-QjxhfV4AdnACLcB/s1600/tang_qua_20-11_y_nghia_nhat1.jpg\" style=\"height:690px; width:500px\" /></p>\r\n\r\n<p><em>Hoa tươi lu&ocirc;n l&agrave; lựa chọn số 1 trong truyền tải th&ocirc;ng điệp y&ecirc;u thương</em></p>\r\n\r\n<p><strong>2.&nbsp;Nước hoa:</strong></p>\r\n\r\n<p>Một chai nước hoa dung t&iacute;ch nhỏ vừa hợp t&uacute;i tiền của bạn lại cực k&igrave; xinh xắn với hương thơm nồng n&agrave;n sẽ rất ph&ugrave; hợp để d&agrave;nh tặng cho những Thầy, C&ocirc; gi&aacute;o y&ecirc;u l&agrave;m đẹp v&agrave; chỉn chu.</p>\r\n\r\n<p>Tất nhi&ecirc;n rồi, ai chẳng muốn được tặng những m&oacute;n qu&agrave; y&ecirc;u th&iacute;ch chứ, vậy n&ecirc;n trước khi tặng nước hoa cho thầy c&ocirc;&nbsp;bạn n&ecirc;n t&igrave;m hiểu m&ugrave;i hương v&agrave; nh&atilde;n hiệu ưa d&ugrave;ng của thầy c&ocirc;&nbsp;trước đ&atilde; nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://2.bp.blogspot.com/-rY6ccRZskmg/WBFsfqmxGpI/AAAAAAAABYs/QbMtQLjR3ocxb2dLcM-xa-e5YA3l1YaHgCLcB/s1600/tang_qua_20-11_y_nghia_nhat2.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><em>Nước hoa tặng Thầy, C&ocirc; cũng l&agrave; một gợi &yacute; th&uacute; vị cho ng&agrave;y 20/11</em></p>\r\n\r\n<p><strong>3.Sơ mi, c&agrave; vạt, quần t&acirc;y tặng Thầy, &aacute;o d&agrave;i tặng C&ocirc;:</strong></p>\r\n\r\n<p>M&oacute;n qu&agrave; n&agrave;y c&oacute; rất nhiều kiểu d&aacute;ng, mẫu m&atilde; với thương hiệu v&agrave; chất liệu kh&aacute;c nhau m&agrave; gi&aacute; cả th&igrave; rất phải chăng.</p>\r\n\r\n<p>Nếu bạn chọn mua &aacute;o d&agrave;i hay sơ mi&nbsp;để tặng C&ocirc;, Thầy, bạn n&ecirc;n ch&uacute; &yacute; đến thương hiệu, kiểu d&aacute;ng, m&agrave;u sắc &aacute;o m&agrave; thầy hay mặc mỗi ng&agrave;y để chọn được m&oacute;n qu&agrave; tinh tế nhất. Dịp 20/11 c&aacute;c cửa h&agrave;ng v&agrave; nh&atilde;n hiệu &aacute;o d&agrave;i c&oacute; nhiều ưu đ&atilde;i cho kh&aacute;ch h&agrave;ng đấy.</p>\r\n\r\n<p>Bạn cũng c&oacute; thể rủ chung nh&oacute;m bạn c&ugrave;ng tặng qu&agrave; Thầy&nbsp;v&agrave; mua cả set gồm &aacute;o sơ mi, c&agrave; vạt v&agrave; quần t&acirc;y. Lưu &yacute;: Trước khi mua bạn n&ecirc;n&nbsp;t&igrave;m hiểu kỹ lưỡng về chiều cao, c&acirc;n nặng v&agrave; sở th&iacute;ch của người nhận qu&agrave; nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://4.bp.blogspot.com/-UWYSi9nriNc/WBFsfpRrGtI/AAAAAAAABYo/-4yL3QWbx2UDzzxe_e7V8SALZEnzoz0ygCLcB/s1600/tang_qua_20-11_y_nghia_nhat3.jpg\" style=\"height:434px; width:600px\" /></p>\r\n\r\n<p><em>&Aacute;o sơ mi, &aacute;o d&agrave;i l&agrave; m&oacute;n qu&agrave; tặng c&ocirc;, thầy được nhiều người lựa chọn</em></p>\r\n\r\n<p><strong>4.B&uacute;t viết:</strong></p>\r\n\r\n<p>B&uacute;t viết ch&iacute;nh l&agrave; vật bất ly th&acirc;n của c&ocirc; thầy, tất nhi&ecirc;n bạn kh&ocirc;ng thể mua c&aacute;c loại b&uacute;t viết th&ocirc;ng thường rồi,&nbsp;c&oacute; rất nhiều thương hiệu b&uacute;t k&yacute; cao cấp th&iacute;ch hợp l&agrave;m qu&agrave; tặng như b&uacute;t Parker, Water Man, Pilot... với đủ kiểu d&aacute;ng v&agrave; gi&aacute; cả. Bạn n&ecirc;n chọn c&aacute;c loại b&uacute;t&nbsp;bi thay v&igrave; b&uacute;t mực để tiện hơn cho c&ocirc;ng việc của c&aacute;c thầy c&ocirc;.</p>\r\n\r\n<p>Đặc biệt, một c&acirc;y b&uacute;t tốt c&oacute; khắc t&ecirc;n của thầy c&ocirc; chắc chắn sẽ l&agrave; m&oacute;n qu&agrave; &yacute; nghĩa m&agrave; bất cứ thầy c&ocirc; n&agrave;o cũng sẽ n&acirc;ng niu.</p>\r\n\r\n<p><img alt=\"\" src=\"https://1.bp.blogspot.com/-5PGLNyMuL_w/WBFsgBKs5YI/AAAAAAAABY0/GWUcU887YEgac2wwGu9yUxchaqcg3huzQCLcB/s1600/tang_qua_20-11_y_nghia_nhat4.jpg\" style=\"height:255px; width:500px\" /></p>\r\n\r\n<p><em>B&uacute;t bi c&aacute;c d&ograve;ng cao cấp</em></p>\r\n\r\n<p><strong>5.Tranh thư ph&aacute;p:</strong></p>\r\n\r\n<p>Một bức tranh thư ph&aacute;p kh&ocirc;ng qu&aacute; mắc tiền nhưng lại l&agrave; m&oacute;n qu&agrave; tặng &yacute; nghĩa khi đ&oacute; l&agrave; những chữ để b&agrave;y tỏ l&ograve;ng biết ơn tới những thầy c&ocirc;. Bạn cũng c&oacute; thể mua tranh hoặc tự tạo bức tranh l&agrave;m m&oacute;n qu&agrave; th&ecirc;m &yacute; nghĩa.</p>\r\n\r\n<p>B&ecirc;n dưới bức tranh, bạn c&oacute; thể để một h&agrave;ng chữ b&eacute; x&iacute;u về th&ocirc;ng tin người tặng. Mỗi lần xem tranh chắc chắn thầy c&ocirc; sẽ nhớ về người đ&atilde; tặng m&igrave;nh d&ugrave; thời gian đ&atilde; qua đi nhiều năm.</p>\r\n\r\n<p><img alt=\"\" src=\"https://4.bp.blogspot.com/-VlvCDXQojxI/WBFsgt661aI/AAAAAAAABY8/dSUqOD-JxiMPf7EcsUK45nnfMAMcn4uWQCLcB/s1600/tang_qua_20-11_y_nghia_nhat5.jpg\" style=\"height:387px; width:600px\" /></p>\r\n\r\n<p><em>Tranh thư ph&aacute;p &yacute; nghĩa</em></p>\r\n\r\n<p><strong>6.Bộ mỹ&nbsp;phẩm dưỡng da:</strong></p>\r\n\r\n<p>Phụ nữ lu&ocirc;n lu&ocirc;n th&iacute;ch l&agrave;m đẹp, c&aacute;c c&ocirc; gi&aacute;o cũng kh&ocirc;ng ngoại lệ. Những m&oacute;n đồ trang điểm như phấn, kem b&ocirc;i l&ecirc;n mặt... th&igrave;&nbsp;c&ograve;n phải c&acirc;n nhắc xem c&oacute; ph&ugrave; hợp với da mặt hay kh&ocirc;ng, song những loại mỹ phẩm như son m&ocirc;i, bộ dưỡng thể, kem dưỡng da tay... th&igrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng v&igrave; vậy bạn ho&agrave;n to&agrave;n c&oacute; thể &#39;&#39;đầu tư&#39;&#39; để tặng c&ocirc; gi&aacute;o của m&igrave;nh.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://4.bp.blogspot.com/-kaoSlFmuXIE/WBFsgZAvGCI/AAAAAAAABY4/ibOIpgy4mlcc25F00TmZGhxvLELmj93QQCLcB/s1600/tang_qua_20-11_y_nghia_nhat6.jpg\" style=\"height:273px; width:600px\" /></p>\r\n\r\n<p><em>20/11 v&agrave;o dịp tiết trời sang đ&ocirc;ng, se lạnh v&agrave; kh&ocirc; th&iacute;ch hợp&nbsp;tặng mỹ phẩm dưỡng da</em></p>\r\n\r\n<p><strong>7. Trang sức, đồng hồ:</strong></p>\r\n\r\n<p>Bạn kh&ocirc;ng cần phải chọn những m&oacute;n qu&aacute; đắt tiền khiến thầy c&ocirc; ngại ng&ugrave;ng v&agrave; kh&ocirc;ng d&aacute;m nhận,&nbsp;tốt nhất l&agrave; n&ecirc;n chọn những sản phầm đẹp, bền v&agrave; ph&ugrave; hợp với t&uacute;i tiền của m&igrave;nh.&nbsp;C&aacute;c thương hiệu như nữ trang PNJ, SJC, Doji... l&agrave; những gợi &yacute; cho bạn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://3.bp.blogspot.com/-tiiEsm-9EVs/WBFsgnLGB6I/AAAAAAAABZA/BoCCE6hNwqEdRbvHXqB3GDGr5-byuMvCwCLcB/s1600/tang_qua_20-11_y_nghia_nhat7.jpg\" style=\"height:413px; width:600px\" /></p>\r\n\r\n<p><em>Nữ trang cho C&ocirc; gi&aacute;o v&agrave; đồng hồ cho thầy</em></p>\r\n\r\n<p><strong>8.Voucher mua sắm:</strong></p>\r\n\r\n<p>Tuy c&oacute; vẻ thực dụng nhưng n&oacute; l&agrave; m&oacute;n qu&agrave; rất thiết thực d&agrave;nh tặng c&aacute;c Thầy, C&ocirc; được nhiều người nghĩ đến. Sẽ &yacute; nghĩa hơn khi n&oacute; được đ&iacute;nh k&egrave;m tấm thiệp viết tay từ ch&iacute;nh người tặng</p>\r\n\r\n<p>Nếu nắm được sở th&iacute;ch, th&oacute;i quen của thầy c&ocirc; th&igrave; chắc chắn đ&acirc;y sẽ l&agrave; m&oacute;n qu&agrave; khiến thầy c&ocirc; vui mừng hết mức.</p>\r\n\r\n<p><img alt=\"\" src=\"https://4.bp.blogspot.com/-8BNRS0x_kyM/WBFsg7krtpI/AAAAAAAABZE/FwJc3rkKgic5BqBQy1b6Y3O4hvQOAtoTgCLcB/s1600/tang_qua_20-11_y_nghia_nhat8.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p><em>Những chiếc voucher cũng l&agrave; qu&agrave; tặng bạn n&ecirc;n chọn để tặng thầy c&ocirc;</em></p>\r\n\r\n<p><strong>Shop hoa tươi</strong>&nbsp;ch&uacute;c bạn chọn được m&oacute;n qu&agrave; ưng &yacute; nhất d&agrave;nh tặng C&ocirc;, Thầy nh&acirc;n ng&agrave;y&nbsp;<a href=\"http://www.dienhoadanang.com/danh-muc/16-hoa-tuoi-tang-dip-20-11\" target=\"_blank\">20/11</a>&nbsp;nh&eacute;!</p>\r\n', 'tin_tuc_5.jpg', '2017-12-17', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CT_MON` (`MaHoa`),
  ADD KEY `ma_don_hang` (`ma_hoa_don`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoa`
--
ALTER TABLE `hoa`
  ADD PRIMARY KEY (`MaHoa`),
  ADD KEY `MaLoai` (`MaLoai`),
  ADD KEY `MaHoa` (`MaHoa`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_hoa` (`ma_hoa`),
  ADD KEY `ma_khach_hang` (`ma_khach_hang`);

--
-- Chỉ mục cho bảng `loai_hoa`
--
ALTER TABLE `loai_hoa`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `loai_tin`
--
ALTER TABLE `loai_tin`
  ADD PRIMARY KEY (`MaLoaiTin`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_cao`
--
ALTER TABLE `quang_cao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_tin`
--
ALTER TABLE `thong_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`MaTT`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `hoa`
--
ALTER TABLE `hoa`
  MODIFY `MaHoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_khach_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `loai_hoa`
--
ALTER TABLE `loai_hoa`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `loai_tin`
--
ALTER TABLE `loai_tin`
  MODIFY `MaLoaiTin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `quang_cao`
--
ALTER TABLE `quang_cao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `thong_tin`
--
ALTER TABLE `thong_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `MaTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_don`
--
ALTER TABLE `chi_tiet_hoa_don`
  ADD CONSTRAINT `_FK_chi_tiet_hoa_don_hoa` FOREIGN KEY (`MaHoa`) REFERENCES `hoa` (`MaHoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_FK_chi_tiet_hoa_don_hoa_don` FOREIGN KEY (`ma_hoa_don`) REFERENCES `hoa_don` (`ma_hoa_don`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoa`
--
ALTER TABLE `hoa`
  ADD CONSTRAINT `FK_H_LH` FOREIGN KEY (`MaLoai`) REFERENCES `loai_hoa` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lich_su`
--
ALTER TABLE `lich_su`
  ADD CONSTRAINT `_FK_lich_su_hoa` FOREIGN KEY (`ma_hoa`) REFERENCES `hoa` (`MaHoa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `_FK_lich_su_khach_hang` FOREIGN KEY (`ma_khach_hang`) REFERENCES `khach_hang` (`ma_khach_hang`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
