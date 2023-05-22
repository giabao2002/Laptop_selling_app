-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2023 lúc 05:20 PM
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
(23, 32, 1, ' 89000000'),
(24, 35, 1, ' 32590000'),
(24, 34, 1, ' 26990000'),
(25, 60, 1, ' 5210000'),
(26, 59, 1, ' 5790000'),
(27, 60, 1, ' 5210000');

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
(25, 1, 'ha noi', '123456789', 'hoang@gmail.com', 1, '5210000'),
(26, 1, 'ha noi', '123456789', 'hoang@gmail.com', 1, '5790000'),
(27, 1, 'ha noi', '123456789', 'hoang@gmail.com', 1, '5210000');

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
(1, 'Trang chủ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL0_Z8CR1wAqwNn-oPeSXlV4ZmViWRefA8qQ&usqp=CAU'),
(2, 'Điện thoại', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREUrkBDTmusUlnTQs6KFIT774FVBZJNgRieg&usqp=CAU'),
(3, 'Laptop', 'data:image/png;base64,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'),
(4, 'Thông tin', 'data:image/jpeg;base64,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'),
(5, 'Liên hệ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png'),
(6, 'Đơn hàng', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1EOvLv1R7Nfgh4MN2jz88UFPZ3mjDJd7ljg&usqp=CAU');

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
(1, 'Laptop Dell XPS 13 9315 Model 2022', '21200000', 'https://no1computer.vn/images/products/2022/08/01/large/dell-xps-9315-2022-4-_1659325442.jpeg', 'Chip: Intel Core i5-1230U \nRAM: DDR4 4GB (2 khe cắm)\nỔ cứng: SSD 512GB\nChipset đồ họa: Intel HD Graphics 620\nMàn hình: 13.4 inch FHD Newoutlet', 2),
(2, 'MacBook Pro 16 inch 2023 – (M2 Max/64GB/1TB)', '89000000', 'https://laptopvang.com/wp-content/uploads/2023/02/macbook_pro_16_inch_2023_m2_max_64gb_ac-768x768.jpg', 'Màu: Xám (Space Gray)\r\nCPU: Apple M2 Max with 12-core CPU\r\nGPU: 38-core GPU, 16-core Neural Engine\r\nRAM: 64GB unified memory\r\nStorage: 1TB SSD\r\nMàn hình: 16.2 inch Liquid Retina XDR display (3456x2234), 254ppi\r\n140W USB-C Power Adapter\r\nTrọng lượng: 2.16Kg', 2),
(3, 'Laptop HP SPECTRE X360 16 2IN1 2022', '35890000', 'https://bizweb.dktcdn.net/thumb/grande/100/378/807/products/hp-spectre-x360-16-2-in-1-2022-h1.jpg?v=1660038127450', 'CPU: 12th Generation Intel® Core™ i7-12700H vPro (14-Cores, 20-Threads, 24MB Cache, up to 4.7GHz Max Turbo Frequency)\r\nRAM: 16GB DDR4 3200MHz\r\nỔ cứng 512GB PCIe M.2 SSD\r\nCard đồ họa: Intel® Iris® Xe Graphics\r\nMàn hình\" 16″ IPS 3K+ (3072 x 1920) Multi-Touch, 400nits – Gập 360 độdiagonal IPS BrightView micro-edge WLED-backlit', 2),
(4, 'Điện thoại iPhone 14 Pro Max 128GB', '26990000', 'https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-den-thumb-600x600.jpg', 'Kích thước màn hình 6.7 inch\r\nBộ nhớ trong: 128 GB\r\nPhiên bản CPU	Apple A16 Bionic\r\nĐộ phân giải: 2796 x 1290 Pixels\r\nVersion: iOS 16', 1),
(5, 'Điện thoại Samsung Galaxy S23 Ultra', '32590000', 'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2023/02/02/image-removebg-preview-2_638109032737377121.png', 'RAM: 12GB \r\nKích thước màn hình: 6.8\" \r\nTần số quét:120 Hz \r\nBộ nhớ trong: 1TB \r\nĐộ phân giải: camera sau Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP \r\nĐộ phân giải: camera trước 40 MP \r\nChip xử lý: Snapdragon 8 Gen 2 \r\nDung lượng pin:5000 mAh', 1),
(46, 'Điện thoại oppo Reno8 5G', '12490000', 'https://cdn.tgdd.vn/Products/Images/42/263714/oppo-reno8-5g-den-thumb-600x600.jpg', 'Màn hình: AMOLED6.43\"Full HD+ \r\nHệ điều hành: Android 12 \r\nCamera sau: Chính 50 MP & Phụ 8 MP, 2 MP Camera trước: 32 MP \r\nChip: MediaTek Dimensity 1300 \r\nRAM: 8 GB \r\nDung lượng lưu trữ: 256 GB \r\nSIM: 2 Nano SIM Hỗ trợ 5G \r\nPin, Sạc: 4500 mAh80 W', 1),
(47, 'Laptop ASUS ROG Zephyrus Duo 16', '92990000', 'https://laptop88.vn/media/product/7692_10719_asus_rog_zephyrus_duo_16_gx650_5.jpg', 'CPU: AMD Ryzen™ 9-6900HX \r\nRAM: 32GB(16GB x 2) DDR5 4800Mhz \r\nỔ cứng: 2TB M.2 NVMe™ PCIe® 4.0 Performance SSD \r\nKích thước màn hình: 16-inch WQXGA \r\nCard màn hình: NVIDIA® GeForce RTX™ 3080 Ti 16GB GDDR6 \r\nWireless: Wi-Fi 6E(802.11ax) \r\nBàn phím: tiêu chuẩn - Đèn nền bàn phím - Backlit Chiclet Keyboard Per-Key RGB', 2),
(48, 'Laptop Acer Nitro 5', '23950000', 'https://img.sosanhgia.com/images/500x320/5c90e0b46a7740b4af09da05dc8467b5/laptop-acer-nitro-5-an5155751g6-nhqd8sv002.jpeg', 'CPU: Intel Core i5-11400H\r\nRAM: 8GB DDR4 3200MHz \r\nỔ cứng: 512GB SSD M.2 PCIE\r\nKích thước màn hình: 15.6\" FHD (1920 x 1080) IPS\r\nCard màn hình: NVIDIA GeForce RTX 3050 4GB GDDR6 \r\nHệ điều hành Windows 10 Home', 2),
(49, 'Điện thoại Xiaomi Redmi Note 12 8GB', '5790000', 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_32353/dien-thoai-xiao_main_711_1020.png.webp', 'Màn hình: AMOLED6.67\"Full HD+\r\nHệ điều hành: Android 13\r\nCamera sau: Chính 50 MP & Phụ 8 MP, 2 MPCamera trước: 13 MP\r\nChip: Snapdragon 685 8 nhân\r\nRAM: 8 GB \r\nDung lượng lưu trữ: 128 GB\r\nSIM: 2 Nano SIMHỗ trợ 4G\r\nPin, Sạc: 5000 mAh33 W', 1),
(50, 'Điện thoại realme 9 Pro+ 5G', '5210000', 'https://cdn.tgdd.vn/Products/Images/42/255513/realme-9-pro-plus-5g-blue-thumb-600x600.jpg', 'Màn hình:Super AMOLED6.4\"Full HD+\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 50 MP & Phụ 8 MP, 2 MP\r\nCamera trước:16 MP\r\nChip:MediaTek Dimensity 920 5G\r\nRAM:8 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:4500 mAh60 W', 1),
(51, 'Laptop Dell XPS 13 9315 Model 2022', '21200000', 'https://no1computer.vn/images/products/2022/08/01/large/dell-xps-9315-2022-4-_1659325442.jpeg', 'Chip: Intel Core i5-1230U \r\nRAM: DDR4 4GB (2 khe cắm)\r\nỔ cứng: SSD 512GB\r\nChipset đồ họa: Intel HD Graphics 620\r\nMàn hình: 13.4 inch FHD Newoutlet', 2),
(52, 'MacBook Pro 16 inch 2023 – (M2 Max/64GB/1TB)', '89000000', 'https://laptopvang.com/wp-content/uploads/2023/02/macbook_pro_16_inch_2023_m2_max_64gb_ac-768x768.jpg', 'Màu: Xám (Space Gray)\r\nCPU: Apple M2 Max with 12-core CPU\r\nGPU: 38-core GPU, 16-core Neural Engine\r\nRAM: 64GB unified memory\r\nStorage: 1TB SSD\r\nMàn hình: 16.2 inch Liquid Retina XDR display (3456x2234), 254ppi\r\n140W USB-C Power Adapter\r\nTrọng lượng: 2.16Kg', 2),
(53, 'Laptop HP SPECTRE X360 16 2IN1 2022', '35890000', 'https://bizweb.dktcdn.net/thumb/grande/100/378/807/products/hp-spectre-x360-16-2-in-1-2022-h1.jpg?v=1660038127450', 'CPU: 12th Generation Intel® Core™ i7-12700H vPro (14-Cores, 20-Threads, 24MB Cache, up to 4.7GHz Max Turbo Frequency)\r\nRAM: 16GB DDR4 3200MHz\r\nỔ cứng 512GB PCIe M.2 SSD\r\nCard đồ họa: Intel® Iris® Xe Graphics\r\nMàn hình\" 16″ IPS 3K+ (3072 x 1920) Multi-Touch, 400nits – Gập 360 độdiagonal IPS BrightView micro-edge WLED-backlit', 2),
(54, 'Điện thoại iPhone 14 Pro Max 128GB', '26990000', 'https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-den-thumb-600x600.jpg', 'Kích thước màn hình 6.7 inch\r\nBộ nhớ trong: 128 GB\r\nPhiên bản CPU	Apple A16 Bionic\r\nĐộ phân giải: 2796 x 1290 Pixels\r\nVersion: iOS 16', 1),
(55, 'Điện thoại Samsung Galaxy S23 Ultra', '32590000', 'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2023/02/02/image-removebg-preview-2_638109032737377121.png', 'RAM: 12GB \r\nKích thước màn hình: 6.8\" \r\nTần số quét:120 Hz \r\nBộ nhớ trong: 1TB \r\nĐộ phân giải: camera sau Chính 200 MP & Phụ 12 MP, 10 MP, 10 MP \r\nĐộ phân giải: camera trước 40 MP \r\nChip xử lý: Snapdragon 8 Gen 2 \r\nDung lượng pin:5000 mAh', 1),
(56, 'Điện thoại oppo Reno8 5G', '12490000', 'https://cdn.tgdd.vn/Products/Images/42/263714/oppo-reno8-5g-den-thumb-600x600.jpg', 'Màn hình: AMOLED6.43\"Full HD+ \r\nHệ điều hành: Android 12 \r\nCamera sau: Chính 50 MP & Phụ 8 MP, 2 MP Camera trước: 32 MP \r\nChip: MediaTek Dimensity 1300 \r\nRAM: 8 GB \r\nDung lượng lưu trữ: 256 GB \r\nSIM: 2 Nano SIM Hỗ trợ 5G \r\nPin, Sạc: 4500 mAh80 W', 1),
(57, 'Laptop ASUS ROG Zephyrus Duo 16', '92990000', 'https://laptop88.vn/media/product/7692_10719_asus_rog_zephyrus_duo_16_gx650_5.jpg', 'CPU: AMD Ryzen™ 9-6900HX \r\nRAM: 32GB(16GB x 2) DDR5 4800Mhz \r\nỔ cứng: 2TB M.2 NVMe™ PCIe® 4.0 Performance SSD \r\nKích thước màn hình: 16-inch WQXGA \r\nCard màn hình: NVIDIA® GeForce RTX™ 3080 Ti 16GB GDDR6 \r\nWireless: Wi-Fi 6E(802.11ax) \r\nBàn phím: tiêu chuẩn - Đèn nền bàn phím - Backlit Chiclet Keyboard Per-Key RGB', 2),
(58, 'Laptop Acer Nitro 5', '23950000', 'https://img.sosanhgia.com/images/500x320/5c90e0b46a7740b4af09da05dc8467b5/laptop-acer-nitro-5-an5155751g6-nhqd8sv002.jpeg', 'CPU: Intel Core i5-11400H\r\nRAM: 8GB DDR4 3200MHz \r\nỔ cứng: 512GB SSD M.2 PCIE\r\nKích thước màn hình: 15.6\" FHD (1920 x 1080) IPS\r\nCard màn hình: NVIDIA GeForce RTX 3050 4GB GDDR6 \r\nHệ điều hành Windows 10 Home', 2),
(59, 'Điện thoại Xiaomi Redmi Note 12 8GB', '5790000', 'https://cdn11.dienmaycholon.vn/filewebdmclnew/DMCL21/Picture//Apro/Apro_product_32353/dien-thoai-xiao_main_711_1020.png.webp', 'Màn hình: AMOLED6.67\"Full HD+\r\nHệ điều hành: Android 13\r\nCamera sau: Chính 50 MP & Phụ 8 MP, 2 MPCamera trước: 13 MP\r\nChip: Snapdragon 685 8 nhân\r\nRAM: 8 GB \r\nDung lượng lưu trữ: 128 GB\r\nSIM: 2 Nano SIMHỗ trợ 4G\r\nPin, Sạc: 5000 mAh33 W', 1),
(60, 'Điện thoại realme 9 Pro+ 5G', '5210000', 'https://cdn.tgdd.vn/Products/Images/42/255513/realme-9-pro-plus-5g-blue-thumb-600x600.jpg', 'Màn hình:Super AMOLED6.4\"Full HD+\r\nHệ điều hành:Android 12\r\nCamera sau:Chính 50 MP & Phụ 8 MP, 2 MP\r\nCamera trước:16 MP\r\nChip:MediaTek Dimensity 920 5G\r\nRAM:8 GB\r\nDung lượng lưu trữ:128 GB\r\nSIM:2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:4500 mAh60 W', 1);

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
(1, 'hoang@gmail.com', '123456', 'Hoang', '123456789');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
