-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2023 lúc 03:55 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dataonline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsp`, `soluong`, `gia`) VALUES
(12, 66, 1, '20500000'),
(12, 66, 2, '33990000'),
(11, 35, 1, ' 32590000'),
(12, 33, 1, ' 35890000'),
(13, 33, 1, ' 35890000'),
(13, 32, 1, ' 89000000'),
(14, 35, 1, ' 32590000'),
(14, 33, 1, ' 35890000'),
(15, 35, 1, ' 32590000'),
(16, 35, 1, ' 32590000'),
(18, 35, 1, ' 32590000'),
(18, 34, 1, ' 26990000'),
(19, 35, 1, ' 32590000'),
(20, 35, 1, ' 32590000'),
(21, 35, 1, ' 32590000'),
(22, 35, 1, ' 32590000'),
(23, 32, 1, ' 89000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` text NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`) VALUES
(1, 2, 'hdf sjdfhdk', '0987654321', 'example@gmail.com', 10, '1000000'),
(2, 2, '4444444444', '0987654321', 'example@gmail.com', 10, '1000000'),
(3, 2, 'hdf sjdfhdk', '0987654321', 'example@gmail.com', 10, '1000000'),
(4, 2, 'hdf sjdfhdk', '0987654321', 'example@gmail.com', 10, '1000000'),
(5, 1, 'ha noi', '123456789', 'hoang@gmail.com', 2, '59580000'),
(6, 1, 'ha noi', '123456789', 'hoang@gmail.com', 2, '59580000'),
(7, 1, 'ha noi', '123456789', 'hoang@gmail.com', 2, '59580000'),
(8, 1, '20 le loi', '123456789', 'hoang@gmail.com', 1, '32590000'),
(9, 1, '20 le loi', '123456789', 'hoang@gmail.com', 1, '32590000'),
(10, 1, '22 lr loi', '123456789', 'hoang@gmail.com', 1, '32590000'),
(11, 1, 'ha noi', '123456789', 'hoang@gmail.com', 1, '32590000'),
(12, 1, '123 ha noi', '123456789', 'hoang@gmail.com', 1, '35890000'),
(13, 1, '123 ha noi', '123456789', 'hoang@gmail.com', 2, '124890000'),
(14, 1, 'hai duong', '123456789', 'hoang@gmail.com', 2, '68480000'),
(15, 0, 'hd', '', '', 1, '32590000'),
(16, 0, 'hd', '', '', 1, '32590000'),
(17, 1, 'ha', '123456789', 'hoang@gmail.com', 0, '0'),
(18, 1, 'hanoi', '123456789', 'hoang@gmail.com', 2, '59580000'),
(19, 1, 'none', '123456789', 'hoang@gmail.com', 1, '32590000'),
(20, 1, 'ha noi', '123456789', 'hoang@gmail.com', 1, '32590000'),
(21, 1, 'dfffsdfas', '123456789', 'hoang@gmail.com', 1, '32590000'),
(22, 1, '444544', '123456789', 'hoang@gmail.com', 1, '32590000'),
(23, 1, 'hanoi', '123456789', 'hoang@gmail.com', 1, '89000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `hinhanh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Trang chủ', 'https://ngochieu.name.vn/img/home.png'),
(2, 'Điện thoại', 'https://ngochieu.name.vn/img/mobile.png'),
(3, 'Laptop', 'https://ngochieu.name.vn/img/laptop.png'),
(4, 'Thông tin', 'https://ngochieu.name.vn/img/info.png'),
(5, 'Liên hệ', 'https://ngochieu.name.vn/img/contact.png'),
(6, 'Đơn hàng', 'https://ngochieu.name.vn/img/contact.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(11) NOT NULL,
  `tensp` varchar(250) NOT NULL,
  `giasp` varchar(100) NOT NULL,
  `hinhanh` text NOT NULL,
  `mota` text NOT NULL,
  `loai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES
(1, 'Laptop Dell XPS 13 9315 Model 2022', '21200000', 'https://thegioiso365.vn/wp-content/uploads/2022/08/3.png', 'Chip: Intel Core i5-1230U \nRAM: DDR4 4GB (2 khe cắm)\nỔ cứng: SSD 512GB\nChipset đồ họa: Intel HD Graphics 620\nMàn hình: 13.4 inch FHD Newoutlet', 2),
(2, 'MacBook Pro 16 inch 2023 – (M2 Max/64GB/1TB)', '89000000', 'https://laptopvang.com/wp-content/uploads/2023/02/macbook_pro_16_inch_2023_m2_max_64gb_ac-768x768.jpg', 'Màu: Xám (Space Gray)\r\nCPU: Apple M2 Max with 12-core CPU\r\nGPU: 38-core GPU, 16-core Neural Engine\r\nRAM: 64GB unified memory\r\nStorage: 1TB SSD\r\nMàn hình: 16.2 inch Liquid Retina XDR display (3456x2234), 254ppi\r\n140W USB-C Power Adapter\r\nTrọng lượng: 2.16Kg', 2),
(3, 'Laptop HP SPECTRE X360 16 2IN1 2022', '35890000', 'https://bizweb.dktcdn.net/thumb/grande/100/378/807/products/hp-spectre-x360-16-2-in-1-2022-h1.jpg?v=1660038127450', 'CPU: 12th Generation Intel® Core™ i7-12700H vPro (14-Cores, 20-Threads, 24MB Cache, up to 4.7GHz Max Turbo Frequency)\r\nRAM: 16GB DDR4 3200MHz\r\nỔ cứng 512GB PCIe M.2 SSD\r\nCard đồ họa: Intel® Iris® Xe Graphics\r\nMàn hình\" 16″ IPS 3K+ (3072 x 1920) Multi-Touch, 400nits – Gập 360 độdiagonal IPS BrightView micro-edge WLED-backlit', 2),
(4, 'Điện thoại iPhone 14 Pro Max 128GB', '26990000', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/10/28/638025697712034572_iPhone%2014%20Promax%20(1).jpg', 'Kích thước màn hình 6.7 inch\r\nBộ nhớ trong: 128 GB\r\nPhiên bản CPU	Apple A16 Bionic\r\nĐộ phân giải: 2796 x 1290 Pixels\r\nVersion: iOS 16', 1),
(5, 'Điện thoại Samsung Galaxy S23 Ultra', '32590000', 'https://onewaymobile.vn/images/products/2023/02/02/large/samsung-s23-ultra-green_1675308334.png', 'RAM: 12GB \r\nKích thước màn hình: 6.8\" \r\nTần số quét:120 Hz \r\nBộ nhớ trong: 1TB \r\nĐộ phân giải: camera sau Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP \r\nĐộ phân giải: camera trước 40 MP \r\nChip xử lý: Snapdragon 8 Gen 2 \r\nDung lượng pin:5000 mAh', 1),
(21, 'Laptop Dell XPS 13 9315 Model 2022', '21200000', 'https://thegioiso365.vn/wp-content/uploads/2022/08/3.png', 'Chip: Intel Core i5-1230U \r\nRAM: DDR4 4GB (2 khe cắm)\r\nỔ cứng: SSD 512GB\r\nChipset đồ họa: Intel HD Graphics 620\r\nMàn hình: 13.4 inch FHD Newoutlet', 2),
(22, 'MacBook Pro 16 inch 2023 – (M2 Max/64GB/1TB)', '89000000', 'https://laptopvang.com/wp-content/uploads/2023/02/macbook_pro_16_inch_2023_m2_max_64gb_ac-768x768.jpg', 'Màu: Xám (Space Gray)\r\nCPU: Apple M2 Max with 12-core CPU\r\nGPU: 38-core GPU, 16-core Neural Engine\r\nRAM: 64GB unified memory\r\nStorage: 1TB SSD\r\nMàn hình: 16.2 inch Liquid Retina XDR display (3456x2234), 254ppi\r\n140W USB-C Power Adapter\r\nTrọng lượng: 2.16Kg', 2),
(23, 'Laptop HP SPECTRE X360 16 2IN1 2022', '35890000', 'https://bizweb.dktcdn.net/thumb/grande/100/378/807/products/hp-spectre-x360-16-2-in-1-2022-h1.jpg?v=1660038127450', 'CPU: 12th Generation Intel® Core™ i7-12700H vPro (14-Cores, 20-Threads, 24MB Cache, up to 4.7GHz Max Turbo Frequency)\r\nRAM: 16GB DDR4 3200MHz\r\nỔ cứng 512GB PCIe M.2 SSD\r\nCard đồ họa: Intel® Iris® Xe Graphics\r\nMàn hình\" 16″ IPS 3K+ (3072 x 1920) Multi-Touch, 400nits – Gập 360 độdiagonal IPS BrightView micro-edge WLED-backlit', 2),
(24, 'Điện thoại iPhone 14 Pro Max 128GB', '26990000', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/10/28/638025697712034572_iPhone%2014%20Promax%20(1).jpg', 'Kích thước màn hình 6.7 inch\r\nBộ nhớ trong: 128 GB\r\nPhiên bản CPU	Apple A16 Bionic\r\nĐộ phân giải: 2796 x 1290 Pixels\r\nVersion: iOS 16', 1),
(25, 'Điện thoại Samsung Galaxy S23 Ultra', '32590000', 'https://onewaymobile.vn/images/products/2023/02/02/large/samsung-s23-ultra-green_1675308334.png', 'RAM: 12GB \r\nKích thước màn hình: 6.8\" \r\nTần số quét:120 Hz \r\nBộ nhớ trong: 1TB \r\nĐộ phân giải: camera sau Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP \r\nĐộ phân giải: camera trước 40 MP \r\nChip xử lý: Snapdragon 8 Gen 2 \r\nDung lượng pin:5000 mAh', 1),
(26, 'Laptop Dell XPS 13 9315 Model 2022', '21200000', 'https://thegioiso365.vn/wp-content/uploads/2022/08/3.png', 'Chip: Intel Core i5-1230U \r\nRAM: DDR4 4GB (2 khe cắm)\r\nỔ cứng: SSD 512GB\r\nChipset đồ họa: Intel HD Graphics 620\r\nMàn hình: 13.4 inch FHD Newoutlet', 2),
(27, 'MacBook Pro 16 inch 2023 – (M2 Max/64GB/1TB)', '89000000', 'https://laptopvang.com/wp-content/uploads/2023/02/macbook_pro_16_inch_2023_m2_max_64gb_ac-768x768.jpg', 'Màu: Xám (Space Gray)\r\nCPU: Apple M2 Max with 12-core CPU\r\nGPU: 38-core GPU, 16-core Neural Engine\r\nRAM: 64GB unified memory\r\nStorage: 1TB SSD\r\nMàn hình: 16.2 inch Liquid Retina XDR display (3456x2234), 254ppi\r\n140W USB-C Power Adapter\r\nTrọng lượng: 2.16Kg', 2),
(28, 'Laptop HP SPECTRE X360 16 2IN1 2022', '35890000', 'https://bizweb.dktcdn.net/thumb/grande/100/378/807/products/hp-spectre-x360-16-2-in-1-2022-h1.jpg?v=1660038127450', 'CPU: 12th Generation Intel® Core™ i7-12700H vPro (14-Cores, 20-Threads, 24MB Cache, up to 4.7GHz Max Turbo Frequency)\r\nRAM: 16GB DDR4 3200MHz\r\nỔ cứng 512GB PCIe M.2 SSD\r\nCard đồ họa: Intel® Iris® Xe Graphics\r\nMàn hình\" 16″ IPS 3K+ (3072 x 1920) Multi-Touch, 400nits – Gập 360 độdiagonal IPS BrightView micro-edge WLED-backlit', 2),
(29, 'Điện thoại iPhone 14 Pro Max 128GB', '26990000', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/10/28/638025697712034572_iPhone%2014%20Promax%20(1).jpg', 'Kích thước màn hình 6.7 inch\r\nBộ nhớ trong: 128 GB\r\nPhiên bản CPU	Apple A16 Bionic\r\nĐộ phân giải: 2796 x 1290 Pixels\r\nVersion: iOS 16', 1),
(30, 'Điện thoại Samsung Galaxy S23 Ultra', '32590000', 'https://onewaymobile.vn/images/products/2023/02/02/large/samsung-s23-ultra-green_1675308334.png', 'RAM: 12GB \r\nKích thước màn hình: 6.8\" \r\nTần số quét:120 Hz \r\nBộ nhớ trong: 1TB \r\nĐộ phân giải: camera sau Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP \r\nĐộ phân giải: camera trước 40 MP \r\nChip xử lý: Snapdragon 8 Gen 2 \r\nDung lượng pin:5000 mAh', 1),
(31, 'Laptop Dell XPS 13 9315 Model 2022', '21200000', 'https://thegioiso365.vn/wp-content/uploads/2022/08/3.png', 'Chip: Intel Core i5-1230U \r\nRAM: DDR4 4GB (2 khe cắm)\r\nỔ cứng: SSD 512GB\r\nChipset đồ họa: Intel HD Graphics 620\r\nMàn hình: 13.4 inch FHD Newoutlet', 2),
(32, 'MacBook Pro 16 inch 2023 – (M2 Max/64GB/1TB)', '89000000', 'https://laptopvang.com/wp-content/uploads/2023/02/macbook_pro_16_inch_2023_m2_max_64gb_ac-768x768.jpg', 'Màu: Xám (Space Gray)\r\nCPU: Apple M2 Max with 12-core CPU\r\nGPU: 38-core GPU, 16-core Neural Engine\r\nRAM: 64GB unified memory\r\nStorage: 1TB SSD\r\nMàn hình: 16.2 inch Liquid Retina XDR display (3456x2234), 254ppi\r\n140W USB-C Power Adapter\r\nTrọng lượng: 2.16Kg', 2),
(33, 'Laptop HP SPECTRE X360 16 2IN1 2022', '35890000', 'https://bizweb.dktcdn.net/thumb/grande/100/378/807/products/hp-spectre-x360-16-2-in-1-2022-h1.jpg?v=1660038127450', 'CPU: 12th Generation Intel® Core™ i7-12700H vPro (14-Cores, 20-Threads, 24MB Cache, up to 4.7GHz Max Turbo Frequency)\r\nRAM: 16GB DDR4 3200MHz\r\nỔ cứng 512GB PCIe M.2 SSD\r\nCard đồ họa: Intel® Iris® Xe Graphics\r\nMàn hình\" 16″ IPS 3K+ (3072 x 1920) Multi-Touch, 400nits – Gập 360 độdiagonal IPS BrightView micro-edge WLED-backlit', 2),
(34, 'Điện thoại iPhone 14 Pro Max 128GB', '26990000', 'https://images.fpt.shop/unsafe/fit-in/960x640/filters:quality(90):fill(white):upscale()/fptshop.com.vn/Uploads/Originals/2022/10/28/638025697712034572_iPhone%2014%20Promax%20(1).jpg', 'Kích thước màn hình 6.7 inch\r\nBộ nhớ trong: 128 GB\r\nPhiên bản CPU	Apple A16 Bionic\r\nĐộ phân giải: 2796 x 1290 Pixels\r\nVersion: iOS 16', 1),
(35, 'Điện thoại Samsung Galaxy S23 Ultra', '32590000', 'https://onewaymobile.vn/images/products/2023/02/02/large/samsung-s23-ultra-green_1675308334.png', 'RAM: 12GB \r\nKích thước màn hình: 6.8\" \r\nTần số quét:120 Hz \r\nBộ nhớ trong: 1TB \r\nĐộ phân giải: camera sau Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP \r\nĐộ phân giải: camera trước 40 MP \r\nChip xử lý: Snapdragon 8 Gen 2 \r\nDung lượng pin:5000 mAh', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`) VALUES
(1, 'hoang@gmail.com', '123456', 'hoang', '123456789');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
