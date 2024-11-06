-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 25, 2024 lúc 11:21 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web2041_ph52516`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int NOT NULL,
  `iduser` int DEFAULT '0',
  `bill_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bill_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bill_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bill_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1. thanh toán trực tiếp 2. chuyển khoản 3. thanh toán online',
  `ngaydathang` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `total` int NOT NULL DEFAULT '0',
  `bill_status` tinyint(1) DEFAULT '0' COMMENT '0. đơn hàng mới 1. đang xử lí 2. đang giao hàng 3. đã giao hàng',
  `receive_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receive_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receive_tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(4, 0, 'Lê Quang Thắng', '51/6 Ngọa Long ', '025185552', 'thangml@gmail.com', 1, '01:08:05pm 24/07/24', 276, 0, NULL, NULL, NULL),
(6, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 3, '01:32:39pm 24/07/24', 110, 0, NULL, NULL, NULL),
(8, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 3, '01:39:07pm 24/07/24', 110, 0, NULL, NULL, NULL),
(10, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:40:23pm 24/07/24', 165, 0, NULL, NULL, NULL),
(11, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:45:13pm 24/07/24', 165, 0, NULL, NULL, NULL),
(12, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:45:27pm 24/07/24', 165, 0, NULL, NULL, NULL),
(13, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:45:38pm 24/07/24', 165, 0, NULL, NULL, NULL),
(14, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:45:49pm 24/07/24', 165, 0, NULL, NULL, NULL),
(15, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:46:13pm 24/07/24', 165, 0, NULL, NULL, NULL),
(16, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:46:42pm 24/07/24', 165, 0, NULL, NULL, NULL),
(17, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:47:26pm 24/07/24', 165, 0, NULL, NULL, NULL),
(18, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:48:35pm 24/07/24', 165, 0, NULL, NULL, NULL),
(19, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:49:12pm 24/07/24', 165, 0, NULL, NULL, NULL),
(20, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:49:24pm 24/07/24', 165, 0, NULL, NULL, NULL),
(21, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:34pm 24/07/24', 165, 0, NULL, NULL, NULL),
(22, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:35pm 24/07/24', 165, 0, NULL, NULL, NULL),
(23, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:36pm 24/07/24', 165, 0, NULL, NULL, NULL),
(24, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:37pm 24/07/24', 165, 0, NULL, NULL, NULL),
(25, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:37pm 24/07/24', 165, 0, NULL, NULL, NULL),
(26, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:37pm 24/07/24', 165, 0, NULL, NULL, NULL),
(27, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:38pm 24/07/24', 165, 0, NULL, NULL, NULL),
(28, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:38pm 24/07/24', 165, 0, NULL, NULL, NULL),
(29, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:38pm 24/07/24', 165, 0, NULL, NULL, NULL),
(30, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:38pm 24/07/24', 165, 0, NULL, NULL, NULL),
(31, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:39pm 24/07/24', 165, 0, NULL, NULL, NULL),
(32, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:50:39pm 24/07/24', 165, 0, NULL, NULL, NULL),
(33, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:56:04pm 24/07/24', 165, 0, NULL, NULL, NULL),
(34, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:56:52pm 24/07/24', 165, 0, NULL, NULL, NULL),
(35, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '01:57:43pm 24/07/24', 165, 0, NULL, NULL, NULL),
(36, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:15:57pm 24/07/24', 165, 0, NULL, NULL, NULL),
(37, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:30:00pm 24/07/24', 165, 0, NULL, NULL, NULL),
(38, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:30:32pm 24/07/24', 165, 0, NULL, NULL, NULL),
(39, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:30:46pm 24/07/24', 165, 0, NULL, NULL, NULL),
(40, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:30:53pm 24/07/24', 165, 0, NULL, NULL, NULL),
(41, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:31:12pm 24/07/24', 165, 0, NULL, NULL, NULL),
(42, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:31:24pm 24/07/24', 165, 0, NULL, NULL, NULL),
(43, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:31:34pm 24/07/24', 165, 0, NULL, NULL, NULL),
(44, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:38:44pm 24/07/24', 165, 0, NULL, NULL, NULL),
(45, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:39:08pm 24/07/24', 165, 0, NULL, NULL, NULL),
(46, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:40:09pm 24/07/24', 165, 0, NULL, NULL, NULL),
(47, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:41:07pm 24/07/24', 165, 0, NULL, NULL, NULL),
(48, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:41:23pm 24/07/24', 165, 0, NULL, NULL, NULL),
(49, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:41:41pm 24/07/24', 165, 0, NULL, NULL, NULL),
(50, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:42:37pm 24/07/24', 165, 0, NULL, NULL, NULL),
(51, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:43:55pm 24/07/24', 165, 0, NULL, NULL, NULL),
(52, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:45:06pm 24/07/24', 165, 0, NULL, NULL, NULL),
(53, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:46:54pm 24/07/24', 165, 0, NULL, NULL, NULL),
(54, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:48:34pm 24/07/24', 165, 0, NULL, NULL, NULL),
(55, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:48:47pm 24/07/24', 165, 0, NULL, NULL, NULL),
(56, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:48:48pm 24/07/24', 165, 0, NULL, NULL, NULL),
(57, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:48:48pm 24/07/24', 165, 0, NULL, NULL, NULL),
(58, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:48:49pm 24/07/24', 165, 0, NULL, NULL, NULL),
(59, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:48:49pm 24/07/24', 165, 0, NULL, NULL, NULL),
(60, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:50:06pm 24/07/24', 166, 0, NULL, NULL, NULL),
(61, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:50:20pm 24/07/24', 166, 0, NULL, NULL, NULL),
(62, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '02:54:54pm 24/07/24', 452, 0, NULL, NULL, NULL),
(63, 0, 'Bùi Quang Văn', '34/07 Nguyên Xá', '0632235145', 'vanbqph52124@gmail.com', 1, '06:53:37am 25/07/24', 55, 0, NULL, NULL, NULL),
(64, 0, 'Phạm Hưng Thịnh', '51/6 Ngọa Long ', '0978824939', 'thinhphph52516@gmail.com', 1, '06:54:30am 25/07/24', 33, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int NOT NULL,
  `noidung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `iduser` int NOT NULL,
  `idpro` int NOT NULL,
  `ngaybinhluan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(1, 'Nước rất ngon', 1, 22, '12:18:59pm 23/07/2024'),
(2, 'Trà ngon tuyệt sẽ còn quay lại', 1, 22, '12:23:38pm 23/07/2024'),
(3, 'Tuyệt vời', 1, 22, '12:40:07pm 23/07/2024'),
(4, 'Phạm Hưng Thịnh mãi đỉnh', 1, 22, '12:40:19pm 23/07/2024'),
(5, 'Cà phê hơi đắng', 1, 22, '12:40:28pm 23/07/2024'),
(6, 'Trà ngon tuyệt cú mèo', 1, 22, '12:40:43pm 23/07/2024'),
(7, 'Trà sữa có vẻ hơi nhiều đường', 1, 22, '12:40:58pm 23/07/2024'),
(8, 'Ổn', 1, 22, '12:41:02pm 23/07/2024'),
(9, 'Tôi nghĩ cần thêm pizza', 1, 22, '12:41:17pm 23/07/2024'),
(10, 'Nước ngon bá cháy', 1, 22, '12:41:35pm 23/07/2024'),
(11, 'Trà sữa của tôi cần thêm chân châu', 1, 22, '12:45:29pm 23/07/2024'),
(12, 'Aaaaaaaaaaaaaaaaaaaaaaaaaaaa tuyệtttttttttttttttttttttttttttttttttttttt', 1, 22, '12:45:47pm 23/07/2024'),
(13, 'Mé cắn vào lưỡi vì cà phê pheeeeeeeeeeeeeeee', 1, 22, '12:46:07pm 23/07/2024'),
(14, 'Ngon đấy chứ', 1, 22, '12:46:22pm 23/07/2024'),
(15, 'Cà phê gì đen thùi lùi', 1, 22, '12:56:46pm 23/07/2024'),
(16, 'Nước rất ngon', 1, 3, '01:13:04pm 23/07/2024'),
(17, 'Trà ngon tuyệt sẽ còn quay lại', 1, 3, '01:13:14pm 23/07/2024'),
(18, 'Phạm Hưng Thịnh mãi đỉnh', 1, 3, '01:13:19pm 23/07/2024'),
(19, 'Tuyệt vời', 1, 3, '01:13:23pm 23/07/2024'),
(20, 'Cà phê hơi đắng', 1, 3, '01:13:27pm 23/07/2024'),
(21, 'Trà ngon tuyệt sẽ còn quay lại', 1, 3, '01:13:31pm 23/07/2024'),
(22, 'Ngậy tuyệt đối', 1, 3, '01:13:38pm 23/07/2024'),
(23, 'Cà phê hơi đắng', 1, 3, '01:13:51pm 23/07/2024'),
(24, 'Trà ngon tuyệt sẽ còn quay lại', 1, 3, '01:13:56pm 23/07/2024'),
(25, 'Tuyệt vời', 1, 3, '01:14:00pm 23/07/2024'),
(26, 'Phạm Hưng Thịnh mãi đỉnh', 1, 3, '01:14:04pm 23/07/2024'),
(27, 'Trà ngon tuyệt sẽ còn quay lại', 1, 3, '01:14:11pm 23/07/2024'),
(28, 'Tuyệt vời', 1, 6, '01:14:45pm 23/07/2024'),
(29, 'Trà ngon tuyệt sẽ còn quay lại', 1, 6, '01:14:48pm 23/07/2024'),
(30, 'Cà phê hơi đắng', 1, 6, '01:14:54pm 23/07/2024'),
(31, 'Phạm Hưng Thịnh mãi đỉnh', 1, 6, '01:14:57pm 23/07/2024'),
(32, 'Nước rất ngon', 1, 6, '01:15:00pm 23/07/2024'),
(33, 'Tuyệt vời', 1, 6, '01:15:04pm 23/07/2024'),
(34, 'Trà ngon tuyệt sẽ còn quay lại', 1, 6, '01:15:10pm 23/07/2024'),
(35, 'Tuyệt vời', 1, 6, '01:15:14pm 23/07/2024'),
(36, 'Cà phê hơi đắng', 1, 6, '01:15:17pm 23/07/2024'),
(37, 'Trà ngon tuyệt sẽ còn quay lại', 1, 6, '01:15:20pm 23/07/2024'),
(38, 'Nước rất ngon', 1, 6, '01:15:23pm 23/07/2024'),
(39, 'Trà ngon tuyệt sẽ còn quay lại', 1, 6, '01:15:27pm 23/07/2024'),
(40, 'Trà ngon tuyệt sẽ còn quay lại', 3, 23, '01:22:04pm 23/07/2024'),
(41, 'Cà phê hơi đắng', 3, 23, '01:22:59pm 23/07/2024'),
(42, 'Nước rất ngon', 3, 23, '01:23:02pm 23/07/2024'),
(43, '', 3, 23, '01:23:03pm 23/07/2024'),
(44, 'Tuyệt vời', 3, 23, '01:23:05pm 23/07/2024'),
(45, 'Phạm Hưng Thịnh mãi đỉnh', 3, 23, '01:23:08pm 23/07/2024'),
(46, 'Cà phê hơi đắng', 3, 23, '01:23:11pm 23/07/2024'),
(47, 'Trà ngon tuyệt sẽ còn quay lại', 3, 23, '01:23:14pm 23/07/2024'),
(48, 'Tuyệt vời', 3, 23, '01:23:16pm 23/07/2024'),
(49, 'Phạm Hưng Thịnh mãi đỉnh', 3, 23, '01:23:19pm 23/07/2024'),
(50, 'Trà ngon tuyệt sẽ còn quay lại', 3, 23, '01:23:22pm 23/07/2024'),
(51, 'Nước rất ngon', 3, 23, '01:23:25pm 23/07/2024'),
(52, 'Trà ngon tuyệt sẽ còn quay lại', 3, 21, '01:23:38pm 23/07/2024'),
(53, 'Cà phê hơi đắng', 3, 21, '01:23:40pm 23/07/2024'),
(54, 'Tuyệt vời', 3, 21, '01:23:47pm 23/07/2024'),
(55, 'Nước rất ngon', 3, 21, '01:23:50pm 23/07/2024'),
(56, 'Nước rất ngon', 3, 21, '01:23:57pm 23/07/2024'),
(57, 'Phạm Hưng Thịnh mãi đỉnh', 3, 21, '01:24:00pm 23/07/2024'),
(58, 'Trà ngon tuyệt sẽ còn quay lại', 3, 21, '01:24:05pm 23/07/2024'),
(59, 'Tuyệt vời', 3, 21, '01:24:08pm 23/07/2024'),
(60, 'Nước rất ngon', 3, 21, '01:24:14pm 23/07/2024'),
(61, 'Cà phê hơi đắng', 3, 21, '01:24:18pm 23/07/2024'),
(62, 'Trà ngon tuyệt sẽ còn quay lại', 3, 21, '01:24:22pm 23/07/2024'),
(63, 'Phạm Hưng Thịnh mãi đỉnh', 3, 21, '01:24:25pm 23/07/2024'),
(64, 'Trà ngon tuyệt sẽ còn quay lại', 3, 20, '01:24:54pm 23/07/2024'),
(65, 'Tuyệt vời', 3, 20, '01:25:02pm 23/07/2024'),
(66, 'Nước rất ngon', 3, 20, '01:25:05pm 23/07/2024'),
(67, 'Cà phê hơi đắng', 3, 20, '01:25:08pm 23/07/2024'),
(68, 'Cà phê hơi đắng', 3, 20, '01:25:11pm 23/07/2024'),
(69, 'Phạm Hưng Thịnh mãi đỉnh', 3, 20, '01:25:15pm 23/07/2024'),
(70, 'Nước rất ngon', 3, 20, '01:25:18pm 23/07/2024'),
(71, 'Nước rất ngon', 3, 20, '01:25:22pm 23/07/2024'),
(72, 'Phạm Hưng Thịnh mãi đỉnh', 3, 20, '01:25:26pm 23/07/2024'),
(73, 'Trà ngon tuyệt sẽ còn quay lại', 3, 20, '01:25:32pm 23/07/2024'),
(74, 'Cà phê hơi đắng', 3, 20, '01:25:35pm 23/07/2024'),
(75, 'Tuyệt vời', 3, 20, '01:25:39pm 23/07/2024'),
(76, 'Trà ngon tuyệt sẽ còn quay lại', 1, 19, '06:43:44pm 23/07/2024'),
(77, 'Phạm Hưng Thịnh mãi đỉnh', 1, 3, '06:43:52pm 23/07/2024'),
(78, 'Phạm Hưng Thịnh mãi đỉnh', 1, 3, '06:44:03pm 23/07/2024'),
(79, 'Trà ngon tuyệt sẽ còn quay lại', 1, 10, '06:44:15pm 23/07/2024'),
(80, 'Nước rất ngon', 1, 10, '06:44:22pm 23/07/2024'),
(81, 'Phạm Hưng Thịnh mãi đỉnh', 1, 12, '06:44:29pm 23/07/2024'),
(82, 'Cà phê hơi đắng', 1, 12, '06:44:32pm 23/07/2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idpro` int NOT NULL,
  `img` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` int NOT NULL DEFAULT '0',
  `soluong` int NOT NULL,
  `thanhtien` int NOT NULL,
  `idbill` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 7, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 1),
(2, 7, 25, 'phuclong17.png', 'Bạc xỉu', 45, 1, 45, 1),
(3, 7, 24, 'phuclong4.png', 'Trà', 55, 1, 55, 1),
(4, 7, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 2),
(5, 7, 25, 'phuclong17.png', 'Bạc xỉu', 45, 1, 45, 2),
(6, 7, 24, 'phuclong4.png', 'Trà', 55, 1, 55, 2),
(7, 7, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 2),
(8, 7, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 3),
(9, 7, 25, 'phuclong17.png', 'Bạc xỉu', 45, 1, 45, 3),
(10, 7, 24, 'phuclong4.png', 'Trà', 55, 1, 55, 3),
(11, 7, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 3),
(12, 7, 20, 'phuclong11.png', 'df', 11, 1, 11, 3),
(13, 7, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 4),
(14, 7, 25, 'phuclong17.png', 'Bạc xỉu', 45, 1, 45, 4),
(15, 7, 24, 'phuclong4.png', 'Trà', 55, 1, 55, 4),
(16, 7, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 4),
(17, 7, 20, 'phuclong11.png', 'df', 11, 1, 11, 4),
(18, 7, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 4),
(19, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 5),
(20, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 6),
(21, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 6),
(22, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 7),
(23, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 7),
(24, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 8),
(25, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 8),
(26, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 9),
(27, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 9),
(28, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 10),
(29, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 10),
(30, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 10),
(31, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 11),
(32, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 11),
(33, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 11),
(34, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 12),
(35, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 12),
(36, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 12),
(37, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 13),
(38, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 13),
(39, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 13),
(40, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 14),
(41, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 14),
(42, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 14),
(43, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 15),
(44, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 15),
(45, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 15),
(46, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 16),
(47, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 16),
(48, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 16),
(49, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 17),
(50, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 17),
(51, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 17),
(52, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 18),
(53, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 18),
(54, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 18),
(55, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 19),
(56, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 19),
(57, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 19),
(58, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 20),
(59, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 20),
(60, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 20),
(61, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 21),
(62, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 21),
(63, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 21),
(64, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 22),
(65, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 22),
(66, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 22),
(67, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 23),
(68, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 23),
(69, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 23),
(70, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 24),
(71, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 24),
(72, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 24),
(73, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 25),
(74, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 25),
(75, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 25),
(76, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 26),
(77, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 26),
(78, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 26),
(79, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 27),
(80, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 27),
(81, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 27),
(82, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 28),
(83, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 28),
(84, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 28),
(85, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 29),
(86, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 29),
(87, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 29),
(88, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 30),
(89, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 30),
(90, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 30),
(91, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 31),
(92, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 31),
(93, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 31),
(94, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 32),
(95, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 32),
(96, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 32),
(97, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 33),
(98, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 33),
(99, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 33),
(100, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 34),
(101, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 34),
(102, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 34),
(103, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 35),
(104, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 35),
(105, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 35),
(106, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 36),
(107, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 36),
(108, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 36),
(109, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 37),
(110, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 37),
(111, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 37),
(112, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 38),
(113, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 38),
(114, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 38),
(115, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 39),
(116, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 39),
(117, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 39),
(118, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 40),
(119, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 40),
(120, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 40),
(121, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 41),
(122, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 41),
(123, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 41),
(124, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 42),
(125, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 42),
(126, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 42),
(127, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 43),
(128, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 43),
(129, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 43),
(130, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 44),
(131, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 44),
(132, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 44),
(133, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 45),
(134, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 45),
(135, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 45),
(136, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 46),
(137, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 46),
(138, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 46),
(139, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 47),
(140, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 47),
(141, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 47),
(142, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 48),
(143, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 48),
(144, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 48),
(145, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 49),
(146, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 49),
(147, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 49),
(148, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 50),
(149, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 50),
(150, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 50),
(151, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 51),
(152, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 51),
(153, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 51),
(154, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 52),
(155, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 52),
(156, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 52),
(157, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 53),
(158, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 53),
(159, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 53),
(160, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 54),
(161, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 54),
(162, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 54),
(163, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 55),
(164, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 55),
(165, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 55),
(166, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 56),
(167, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 56),
(168, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 56),
(169, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 57),
(170, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 57),
(171, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 57),
(172, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 58),
(173, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 58),
(174, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 58),
(175, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 59),
(176, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 59),
(177, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 59),
(178, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 60),
(179, 1, 25, 'phuclong17.png', 'Bạc xỉu', 45, 1, 45, 60),
(180, 1, 24, 'phuclong4.png', 'Trà', 55, 1, 55, 60),
(181, 1, 21, 'phuclong8.png', 'ứ', 11, 1, 11, 60),
(182, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 61),
(183, 1, 25, 'phuclong17.png', 'Bạc xỉu', 45, 1, 45, 61),
(184, 1, 24, 'phuclong4.png', 'Trà', 55, 1, 55, 61),
(185, 1, 21, 'phuclong8.png', 'ứ', 11, 1, 11, 61),
(186, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 62),
(187, 1, 25, 'phuclong17.png', 'Bạc xỉu', 45, 1, 45, 62),
(188, 1, 24, 'phuclong4.png', 'Trà', 55, 1, 55, 62),
(189, 1, 21, 'phuclong8.png', 'ứ', 11, 1, 11, 62),
(190, 1, 21, 'phuclong8.png', 'ứ', 11, 1, 11, 62),
(191, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 62),
(192, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 62),
(193, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 62),
(194, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 62),
(195, 1, 26, 'phuclong13.png', 'Trà sữa socola', 55, 1, 55, 62),
(196, 1, 22, 'phuclong13.png', 'adđ', 33, 1, 33, 64);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(6, 'Nước ép'),
(25, 'Sữa chua'),
(26, 'Trà xanh'),
(28, 'Coffee'),
(29, 'Trà sữa'),
(30, 'Sinh tố');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` decimal(10,3) DEFAULT '0.000',
  `img` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8mb3_unicode_ci,
  `luotxem` int DEFAULT '0',
  `iddm` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(3, 'Trà sữa hihi', 35.000, 'phuclong12.png', 'hihihiihihi', 21, 29),
(6, 'Sinh tố cà rốt', 20.000, 'phuclong31.png', 'Nhiều cà rốt nhiều vitamin', 11, 30),
(7, 'Sinh tố xoài', 35.000, 'phuclong27.png', 'Xoài đấy', 0, 30),
(8, 'Trà tắc thái cam', 30.000, 'phuclong3.png', 'Cam nè', 0, 26),
(9, 'Cà phê sữa', 35.000, 'phuclong10.png', 'Má nó ngon', 0, 28),
(10, 'Cà phê matcha', 35.000, 'phuclong5.png', 'hú', 0, 28),
(11, 'Trà cam', 20.000, 'phuclong1.png', 'Cam xịn', 0, 26),
(12, 'Sữa chua gạo', 35.000, 'phuclong2.png', 'Ủ 10 năm đấy', 0, 25),
(14, 'Trà sữa shit chồn', 35.000, 'phuclong25.png', 'Làm từ shit chồn', 0, 29),
(15, 'Trà thạch đá', 30.000, 'phuclong22.png', 'như đá', 0, 26),
(16, 'Sinh tố dâu', 35.000, 'phuclong26.png', 'Dâu xịn', 0, 30),
(17, 'Nước ép dưa lưới', 30.000, 'phuclong32.png', 'Mát lạnh lên đỉnh', 0, 6),
(18, 'Nước ép vải', 20.000, 'phuclong16.png', 'Ngon', 0, 6),
(19, 'Cà phê nâu', 30.000, 'phuclong21.png', 'Nhiều sữa ông thọ ít sữa cô gái Hà Lan', 0, 28),
(20, 'Trà chanh nguyên hạt', 15.000, 'phuclong11.png', 'Làm từ hạt chanh nhai ngon rột rột', 0, 26),
(21, 'Trà sữa matcha', 35.000, 'phuclong8.png', 'Được làm từ bột matcha Nhật Bản làm bạn sướng run người', 0, 29),
(22, 'Trà sữa cacao', 35.000, 'phuclong7.png', 'Tuyệt cà là vời', 0, 29),
(23, 'Trà đào', 20.000, 'phuclong20.png', 'rất ngon', 0, 25),
(24, 'Trà chanh ', 20.000, 'phuclong4.png', 'ngon', 0, 26),
(25, 'Bạc xỉu', 30.000, 'phuclong17.png', 'tuyệt', 0, 28),
(26, 'Trà sữa socola', 35.000, 'phuclong13.png', 'Được làm từ socola nguyên chất ngon đến từng giác quan trong cơ thể', 0, 29),
(27, 'Nước ép cam', 30.000, 'phuclong9.png', 'Cam nguyên chất', 0, 6),
(28, 'Cà phê đen', 30.000, 'phuclong37.png', 'Hạt cà phê ', 0, 28),
(29, 'Trà dứa', 30.000, 'phuclong15.png', 'Dứa đây', 0, 26),
(30, 'Sữa chua bưởi', 35.000, 'phuclong23.png', 'ngon', 0, 25),
(32, 'Sinh tố bơ', 30.000, 'phuclong28.png', 'Bơ em', 0, 30),
(33, 'Cà phê chồn', 35.000, 'phuclong29.png', 'hehe', 0, 28),
(34, 'Nước ép dâu tằm', 35.000, 'phuclong30.png', 'Ngon', 0, 6),
(35, 'Sinh tố mận', 30.000, 'phuclong14.png', 'Mận đây', 0, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int NOT NULL,
  `user` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `role` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'Phạm Hưng Thịnh', '123456', 'thinhphph52516@gmail.com', '51/6 Ngọa Long ', '0978824939', 1),
(3, 'Hoàng Tiến Triển', '222222', 'trienhtph52517@gmail.com', '22/7/41 Cầu Diễn', '0988614225', 0),
(4, 'Đào Việt Quang', '333333', 'quangdvph52518@gmail.com', '12/96 Cầu Giấy', '0978824957', 0),
(5, 'Nguyễn Hoàng Hải', '444444', 'hainhph42158@gmail.com', '41/12 Phương Canh', '0954478525', 0),
(6, 'Nguyễn Văn Sơn', '555555', 'sonnvph85478@gmail.com', NULL, NULL, 0),
(7, 'Lê Quang Thắng', '666666', 'thangml@gmail.com', '51/6 Ngọa Long ', '025185552', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `idbill` (`idbill`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sanpham_danhmuc` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
