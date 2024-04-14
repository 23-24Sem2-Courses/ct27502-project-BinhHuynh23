-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 03:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ct275_btlon`
--

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `IDHangHoa` int(11) NOT NULL,
  `TenHangHoa` varchar(255) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Thumbnail` varchar(255) NOT NULL,
  `Gia` int(11) NOT NULL,
  `KhuyenMai` int(100) NOT NULL,
  `MoTa` longtext NOT NULL,
  `IDLoaiHangHoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`IDHangHoa`, `TenHangHoa`, `SoLuong`, `Thumbnail`, `Gia`, `KhuyenMai`, `MoTa`, `IDLoaiHangHoa`) VALUES
(1, 'Iphone SE 2022', 96, 'iphone-se-2020.jpg', 18000000, 16000000, 'iPhone SE 64 GB (2022) vẫn không thay đổi thiết kế nhiều so với phiên bản tiền nhiệm. Máy vẫn có màn hình 4.7 inch, viền màn hình trên và dưới được giữ lại để chứa camera selfie và nút Home “huyền thoại\". Màn hình iPhone SE 64 GB (2022) sẽ sử dụng tấm nền IPS LCD, cho chất lượng hiển thị khá tốt.', 1),
(2, 'Oppo A95', 99, 'oppo-a95.jpg', 6000000, 5400000, 'OPPO A95 sẽ có 2 phiên bản màu sắc Glowing Rainbow Silver (Bạc) và Glowing Starry Black (Đen) cho người dùng thỏa thích lựa chọn theo sở thích của mình.\r\n\r\nTổng thể điện thoại rất sang trọng, cảm giác cầm nắm thoải mái khi có độ mỏng 7.95 mm và trọng lượng 175 g kết hợp với phần khung viền được làm cong 2.5D đem đến trải nghiệm sử dụng vô cùng thích thú.', 1),
(3, 'Realme 7i', 47, 'realme-7i.jpg', 3000000, 2900000, 'Tiếp nối bộ đôi đình đám Realme 7 và Realme 7 Pro, Realme đã cho ra mắt thêm thành viên mới Realme 7i với một mức giá hấp dẫn hơn. Máy vẫn giữ lại những thông số ấn tượng như màn hình 90 Hz đi kèm hiệu năng từ Snapdragon 662 cho trải nghiệm mượt mà và ổn định. ', 1),
(4, 'Samsung Galaxy S21 Fe', 100, 'samsung-galaxy-s21-fe.jpg', 15000000, 14000000, 'Samsung Galaxy S21 FE 5G sở hữu khung viền nhôm bóng bẩy, mặt lưng bằng nhựa có độ nhám nhẹ chống bám vân tay và chống trượt tốt, các cạnh viền hoàn thiện bo cong nhẹ tạo nét mềm mại và tinh tế cho tổng thể thiết kế, đồng thời tạo cảm giác cầm nắm chắc tay.\r\n\r\nMáy mỏng 7.9 mm và nhẹ chỉ 177 g, dễ dàng sử dụng bằng 1 tay kể cả với các bạn nữ với lòng bàn tay nhỏ, cho thao tác sử dụng thuận tiện, linh hoạt, cũng tiện bảo quản và mang theo.', 1),
(5, 'Vivo Y21', 99, 'vivo-y21.jpg', 10000000, 8500000, 'Máy có một thiết kế nguyên khối tạo cảm giác bền bỉ, chắc chắn. Vivo Y21 còn mang đến trải nghiệm cầm nắm thoải mái với thân máy mỏng chỉ 8 mm và có các cạnh viền bo tròn mịn màng giúp cho mọi thao tác sử dụng trở nên hoàn hảo.\r\n\r\n\r\n', 1),
(6, 'Ốp lưng Iphone', 100, 'op-lung-iphone.jpg', 50000, 45000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(7, 'Ốp lưng Oppo', 49, 'op-lung-oppo.jpg', 20000, 19000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(8, 'Ốp lưng Realme', 100, 'op-lung-realme.jpg', 35000, 32000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(9, 'Ốp lưng Samsung', 99, 'op-lung-samsung.jpg', 85000, 80000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(10, 'Ốp lưng Vivo', 100, 'op-lung-vivo.jpg', 20000, 18000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(11, 'Bluetooth Airpods Pro', 100, 'bluetooth-airpods-pro.jpg', 2000000, 19600000, 'Airpods Pro có thiết kế tương tự như AirPods Pro nhưng không còn phần eartips, đường viền và thân ngắn hơn cho âm thanh truyền tải đến tai tối ưu. Bề mặt tai nghe Bluetooth Apple phủ sắc trắng thời thượng, được làm từ các vật liệu tái chế với độ bền cao, bảo vệ môi trường sống của con người. ', 3),
(12, 'Bluetooth True Wireless Ava', 100, 'bluetooth-true-wireless-ava.jpeg', 2500000, 2350000, 'Thiết kế gọn gàng, thời thượng, đeo chắc chắn.Mang đến chất âm sinh động, chân thật. \r\nKết nối không dây ổn định nhờ công nghệ Bluetooth 5.0.Thời gian sử dụng tai nghe liên tục trong 4 tiếng, hộp sạc cho 12 tiếng.Tăng/Giảm âm lượng, chuyển bài hát, nghe/nhận cuộc gọi linh hoạt với cảm ứng chạm.\r\nAVA+ DS201A-WB thiết kế tối giản, màu sắc thuần khiết (2 phiên bản màu đen lịch lãm và beige trang nhã) tạo điểm nhấn cho phong cách thời trang của bạn. Kiểu dáng nhỏ gọn của housing và hộp sạc cho bạn thuận tiện mang theo bên mình khi đi làm, đi học, đi chơi,...', 3),
(13, 'Tai nghe Bluetooth Kanen', 50, 'tai-nghe-bluetooth-kanen.jpeg', 1800000, 17000000, 'Thiết kế gọn gàng, thời thượng, đeo chắc chắn.Mang đến chất âm sinh động, chân thật. \r\nKết nối không dây ổn định nhờ công nghệ Bluetooth 5.0.Thời gian sử dụng tai nghe liên tục trong 4 tiếng, hộp sạc cho 12 tiếng.Tăng/Giảm âm lượng, chuyển bài hát, nghe/nhận cuộc gọi linh hoạt với cảm ứng chạm.\r\nAVA+ DS201A-WB thiết kế tối giản, màu sắc thuần khiết (2 phiên bản màu đen lịch lãm và beige trang nhã) tạo điểm nhấn cho phong cách thời trang của bạn. Kiểu dáng nhỏ gọn của housing và hộp sạc cho bạn thuận tiện mang theo bên mình khi đi làm, đi học, đi chơi,...', 3),
(14, 'Bluetooth True Wireless LG', 100, 'bluetooth-true-wireless-lg.jpeg', 8500000, 8200000, 'Thiết kế gọn gàng, thời thượng, đeo chắc chắn.Mang đến chất âm sinh động, chân thật. \r\nKết nối không dây ổn định nhờ công nghệ Bluetooth 5.0.Thời gian sử dụng tai nghe liên tục trong 4 tiếng, hộp sạc cho 12 tiếng.Tăng/Giảm âm lượng, chuyển bài hát, nghe/nhận cuộc gọi linh hoạt với cảm ứng chạm.\r\nAVA+ DS201A-WB thiết kế tối giản, màu sắc thuần khiết (2 phiên bản màu đen lịch lãm và beige trang nhã) tạo điểm nhấn cho phong cách thời trang của bạn. Kiểu dáng nhỏ gọn của housing và hộp sạc cho bạn thuận tiện mang theo bên mình khi đi làm, đi học, đi chơi,...', 3),
(15, 'Tai Nghe Bluetooth Mozard', 100, 'tai-nghe-bluetooth-mozard.jpeg', 4000000, 3900000, 'Thiết kế gọn gàng, thời thượng, đeo chắc chắn.Mang đến chất âm sinh động, chân thật. \r\nKết nối không dây ổn định nhờ công nghệ Bluetooth 5.0.Thời gian sử dụng tai nghe liên tục trong 4 tiếng, hộp sạc cho 12 tiếng.Tăng/Giảm âm lượng, chuyển bài hát, nghe/nhận cuộc gọi linh hoạt với cảm ứng chạm.\r\nAVA+ DS201A-WB thiết kế tối giản, màu sắc thuần khiết (2 phiên bản màu đen lịch lãm và beige trang nhã) tạo điểm nhấn cho phong cách thời trang của bạn. Kiểu dáng nhỏ gọn của housing và hộp sạc cho bạn thuận tiện mang theo bên mình khi đi làm, đi học, đi chơi,...', 3),
(16, 'Iphone6 SE', 60, 'iphone-6Se.png', 6000000, 5900000, 'iPhone SE 64 GB (2022) vẫn không thay đổi thiết kế nhiều so với phiên bản tiền nhiệm. Máy vẫn có màn hình 4.7 inch, viền màn hình trên và dưới được giữ lại để chứa camera selfie và nút Home “huyền thoại\". Màn hình iPhone SE 64 GB (2022) sẽ sử dụng tấm nền IPS LCD, cho chất lượng hiển thị khá tốt.', 1),
(17, 'Iphone11 Promax', 100, 'iphone-11Promax.png', 18000000, 17000000, 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', 1),
(18, 'Iphone12 Promax', 100, 'iphone-12-promax.jpg', 32000000, 31000000, 'iPhone 12 Mini sở hữu thiết kế vuông vức, thay vì các cạnh tròn như trên những chiếc iPhone gần đây, các cạnh được vát phẳng tương tự iPhone 4, iPhone 5 đình đám một thời.', 1),
(19, 'Oppo Revo6', 100, 'oppo-revo-6.jpg', 85000000, 17000000, 'Điện thoại OPPO Reno7 Z 5G có khung viền vát phẳng, vuông vức trendy làm cho máy toát lên nét hiện đại và năng động. Bốn góc được bo cong mềm mại tạo cảm giác thoải mái và nhẹ nhàng (chỉ 173 g). Với thiết kế nguyên khối làm tổng thể máy trở nên cực kỳ chắc chắn, không chỉ đẹp mà còn tăng độ bền.', 1),
(20, 'Samsung Galaxy Note20', 100, 'samsung-galaxy-note20.jpg', 6000000, 5900000, 'Để máy vận hành một cách ổn định hơn Samsung trang bị cho Galaxy A23 con chip quốc dân dành cho thị trường di động tầm trung hiện nay (04/2022) mang tên Snapdragon 680 8 nhân với hiệu suất tối đa đạt được là 2.4 GHz.', 1),
(21, 'Samsung Galaxy S8', 100, 'samsung-galaxy-s8.png', 23000000, 21000000, 'Để máy vận hành một cách ổn định hơn Samsung trang bị cho Galaxy A23 con chip quốc dân dành cho thị trường di động tầm trung hiện nay (04/2022) mang tên Snapdragon 680 8 nhân với hiệu suất tối đa đạt được là 2.4 GHz.', 1),
(22, 'Samsung XPera', 100, 'samsung-xPera.jpg', 6000000, 5900000, 'Để máy vận hành một cách ổn định hơn Samsung trang bị cho Galaxy A23 con chip quốc dân dành cho thị trường di động tầm trung hiện nay (04/2022) mang tên Snapdragon 680 8 nhân với hiệu suất tối đa đạt được là 2.4 GHz.', 1),
(23, 'Ốp lưng con thỏ', 100, 'op-lung-con-tho.jpg', 35000, 34000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(24, 'Ốp lưng khủng long', 0, 'op-lung-cute-khunglong.jpg', 36000, 34000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(25, 'Ốp lưng khủng long Cute', 100, 'op-lung-cute-khunglong.jpg', 35000, 34000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(26, 'Ốp lưng trái tim', 100, 'op-lung-trai-tim.jpg', 39000, 38000, 'Kiểu dáng tối giản, sang trọng với gam dịu dàng, nhã nhặn.\r\nThiết kế thích hợp cho mẫu điện thoại thông tin.\r\nSử dụng chất liệu nhựa dẻo chất lượng tốt, chịu lực, dễ uốn cong. \r\nThao tác tách rời và lắp ốp vào máy nhanh nhẹn, không tốn sức.', 2),
(27, 'Oppo reno 7 pro', 100, 'oppo-reno7-pro.jpg', 9900000, 9400000, 'Oppo Reno7 Pro là một chiếc điện thoại thông minh cao cấp với tiết kế đẹp mắt và các tính năng mạnh mẽ. Với màn hình AMOLED kích thước lớn, độ phân giải cao và tần số làm mới cao, Oppo Reno7 Pro mang đến trải nghiệm hình ảnh sắc nét và màu sắc sống động.', 1),
(28, 'Iphone XS Max', 40, 'iphone-xs-max.jpg', 9999000, 7999000, 'Chiếc điện thoại cao cấp của Apple với màn hình Super Retina, camera kép 12MP, chip A12 Bionic.', 1),
(29, 'Iphone 13 Promax', 45, 'iphone-13-promax.jpg', 25000000, 22000000, 'Đây là 1 siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 1),
(30, 'Oppo A57', 30, 'oppo-a57.jpg', 5000000, 3999999, 'OPPO đã bổ sung thêm vào dòng sản phẩm OPPO A giá rẻ một thiết bị mới có tên OPPO A57 128GB. Khác với mẫu A57 5G đã được ra mắt trước đó, điện thoại dòng A mới có màn hình HD+, camera chính 13 MP và pin 5000 mAh.', 1),
(37, 'Iphone 15 Promax', 15, 'iphone-15-promax.jpg', 30000000, 27990000, 'iPhone 15 Pro Max mẫu điện thoại mới nhất của Apple cuối cùng cũng đã chính thức được ra mắt vào tháng 09/2023. Mẫu điện thoại này sở hữu một con chip với hiệu năng mạnh mẽ Apple A17 Pro, màn hình đẹp mắt và cụm camera vô cùng chất lượng.', 1),
(38, 'Realme C67', 20, 'realme-c67.jpg', 5000000, 4690000, 'Nhằm mang đến cho người dùng thêm nhiều lựa chọn ở phân khúc giá rẻ thì realme đã cho ra mắt realme C67, một sản phẩm nổi bật với thiết kế sang trọng, camera chụp ảnh đẹp cùng pin lớn có sạc nhanh, hứa hẹn đem đến nhiều trải nghiệm tốt cho người dùng.', 1),
(39, 'Oppo Find N3 5G', 10, 'oppo-find-n3.jpg', 44000000, 39000000, 'OPPO chính thức giới thiệu sản phẩm OPPO Find N3 5G, một chiếc điện thoại thông minh với thiết kế gập ngang hoàn toàn hiện đại và đẳng cấp, nổi bật với camera và hiệu năng đứng đầu. Đây là một bước đột phá của OPPO trong việc kết hợp sự tiện ích và thẩm mỹ tối ưu, đem lại trải nghiệm độc đáo cho người dùng.', 1),
(40, 'Xiaomi Redmi 13C', 20, 'xiaomi-redmi-13c.jpg', 3200000, 2990000, 'Để cạnh tranh với các đối thủ trong phân khúc, Xiaomi đã cho ra mắt sản phẩm mới Xiaomi Redmi 13C 6GB, một sản phẩm giá rẻ có nhiều cải tiến nổi bật. Sản phẩm này được nâng cấp nhiều về thiết kế, hiệu năng thông qua chip MediaTek Helio G85 và camera có độ phân giải tới 50 MP.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `IDHinhAnh` int(11) NOT NULL,
  `TenHinhAnh` varchar(255) NOT NULL,
  `IDHangHoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`IDHinhAnh`, `TenHinhAnh`, `IDHangHoa`) VALUES
(3, 'oppo-A95-1.png', 2),
(4, 'oppo-A95-2.jpg', 2),
(5, 'realme-7i-1.jpg', 3),
(6, 'realme-7i-2.jpg', 3),
(8, 'samsung-galaxy-s21-fe-2.jpg', 4),
(9, 'samsung-galaxy-s21-fe-1.jpg', 4),
(10, 'Vivo-Y21-va-Vivo-Y21s-1.jpg', 5),
(11, 'Vivo-Y21-va-Vivo-Y21s-2.jpg', 5),
(12, 'op-lung-ipone-1.jpg', 6),
(13, 'op-lung-ipone-2.jpg', 6),
(14, 'realme-7i-1.jpg', 7),
(15, 'op-lung-samsung-2.jpg', 8),
(16, 'op-lung-realme-1.jpg', 9),
(17, 'samsung-galaxy-s21-2.jpeg', 9),
(18, 'op-lung-vivo-1.jpg', 10),
(19, 'op-lung-vivo-2.jpg', 10),
(20, 'bluetooth-air-2-1.jpg', 11),
(21, 'bluetooth-air-2-2.jpg', 11),
(22, 'aka-1.jpg', 12),
(23, 'aka-2.jpg', 12),
(24, 'kanen-1.jpeg', 13),
(25, 'kanen-2.jpeg', 13),
(26, 'LG-1.jpg', 14),
(27, 'LG-2.jpg', 14),
(28, 'LG-2.jpg', 14),
(29, 'moza-1.jpg', 15),
(30, 'moza-2.jpg', 15),
(31, 'iphone-se1.jpg', 16),
(32, 'Iphone-se2.jpg', 16),
(33, 'iphone-11-2.jpg', 17),
(34, 'iphone-11-1.jpeg', 17),
(35, 'iphone-12-1.jpg', 18),
(36, 'iphone-12-2.jpg', 18),
(37, 'oppo-reno6-5g-1.jpg', 19),
(38, 'oppo-reno6-5g-2.jpg', 19),
(39, 'samsung-galaxy-s21-2.jpeg', 20),
(40, 'samsung-galaxy-s21-1.jpg', 21),
(41, 'samsung-galaxy-s20-5g-2.jpg', 20),
(42, 'samsung-galaxy-s20-5g-1.jpg', 21),
(43, 'realme-7i-2.jpg', 22),
(44, 'oppo-A95-1.png', 22),
(45, 'khunglong-1.jpg', 24),
(46, 'khunglong-2.jpg', 24),
(47, 'khunglong-1.jpg', 25),
(48, 'khunglong-4.jpg', 25),
(49, 'traitim-1.jpg', 26),
(50, 'traitim-2.jpg', 26),
(51, 'contho-1.jpg', 23),
(52, 'contho-2.jpg', 23),
(53, 'oppo-reno7-pro-1.jpg', 27),
(54, 'oppo-reno7-pro-2.jpg', 27),
(55, 'iphone-xs-max-1.jpg', 28),
(56, 'iphone-xs-max-2.jpg', 28),
(57, 'iphone-13-promax-1.jpg', 29),
(58, 'oppo-a57-1.jpg', 30),
(59, 'oppo-a57-2.jpg', 30),
(62, 'iphone-15-promax-1.jpg', 37),
(63, 'iphone-15-promax-2.jpg', 37),
(64, 'realme-c67-1.jpg', 38),
(65, 'realme-c67-2.jpg', 38),
(66, 'oppo-find-n3-1.jpg', 39),
(67, 'oppo-find-n3-2.jpg', 39),
(68, 'xiaomi-redmi-13c-1.jpg', 40),
(69, 'xiaomi-redmi-13c-2.jpg', 40),
(70, 'iphone-se-2022-1.jpg', 1),
(71, 'iphone-se-2022-2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `IDHoaDon` int(11) NOT NULL,
  `IDHangHoa` int(11) NOT NULL,
  `IDKH` int(11) NOT NULL,
  `SoLuongMua` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `NgayDatHang` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`IDHoaDon`, `IDHangHoa`, `IDKH`, `SoLuongMua`, `TongTien`, `DiaChi`, `NgayDatHang`) VALUES
(5, 1, 2, 1, 18000000, 'An Giang', '2024-04-13 11:39:40'),
(6, 7, 2, 1, 20000, 'An Giang', '2024-04-13 16:15:00'),
(7, 9, 2, 1, 85000, 'An Giang', '2024-04-13 16:15:00'),
(8, 1, 2, 1, 18000000, 'An Giang', '2024-04-14 12:15:11'),
(9, 2, 2, 1, 6000000, 'An Giang', '2024-04-14 13:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `IDKH` int(11) NOT NULL,
  `HoTenKH` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`IDKH`, `HoTenKH`, `Email`, `MatKhau`, `SDT`, `DiaChi`) VALUES
(1, 'Võ Minh Tân', 'tanb2111863@student.ctu.edu.vn', '123456789', '0786932679', '158/22/17 Hẻm 2b, An Phú ,Ninh Kiều, Cần Thơ'),
(2, 'Huỳnh Thanh Bình', 'binhb2111831@student.ctu.edu.vn', '123456', '0123456789', 'An Giang'),
(9, 'Nguyễn Văn A', 'nva@gmail.com', 'a1111111', '0123456789', 'Cần Thơ');

-- --------------------------------------------------------

--
-- Table structure for table `loaihanghoa`
--

CREATE TABLE `loaihanghoa` (
  `IDLoaiHH` int(11) NOT NULL,
  `TenLoaiHH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaihanghoa`
--

INSERT INTO `loaihanghoa` (`IDLoaiHH`, `TenLoaiHH`) VALUES
(1, 'DienThoai'),
(2, 'OpLung'),
(3, 'TaiNghe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`IDHangHoa`),
  ADD KEY `IDLoaiHangHoa_foreignkey` (`IDLoaiHangHoa`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`IDHinhAnh`),
  ADD KEY `IDHangHoa_foreignkeyIMG` (`IDHangHoa`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`IDHoaDon`),
  ADD KEY `FK_IDKH` (`IDKH`),
  ADD KEY `FK_IDHH` (`IDHangHoa`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`IDKH`);

--
-- Indexes for table `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  ADD PRIMARY KEY (`IDLoaiHH`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `IDHangHoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `IDHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `IDHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `IDKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  MODIFY `IDLoaiHH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `IDLoaiHangHoa_foreignkey` FOREIGN KEY (`IDLoaiHangHoa`) REFERENCES `loaihanghoa` (`IDLoaiHH`);

--
-- Constraints for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `IDHangHoa_foreignkeyIMG` FOREIGN KEY (`IDHangHoa`) REFERENCES `hanghoa` (`IDHangHoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_IDHH` FOREIGN KEY (`IDHangHoa`) REFERENCES `hanghoa` (`IDHangHoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_IDKH` FOREIGN KEY (`IDKH`) REFERENCES `khachhang` (`IDKH`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
