-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2022 lúc 04:20 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `final`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'MSI', 'msi', 0, '2022-11-12 21:45:33', '2022-12-03 04:46:00', 9),
(3, 'Lenovo', 'lenovo', 0, '2022-11-12 22:00:47', '2022-12-03 04:45:55', 9),
(4, 'Dell', 'dell', 0, '2022-11-12 22:00:54', '2022-12-03 04:45:47', 9),
(6, 'Iphone', 'iphone', 0, '2022-11-13 01:29:00', '2022-12-03 04:45:42', 10),
(11, 'Vivo', 'vivo-moblie', 0, '2022-12-13 02:42:06', '2022-12-13 02:42:06', 9),
(12, 'Oppo', 'oppo-mobile', 0, '2022-12-13 02:45:15', '2022-12-13 02:45:15', 10),
(13, 'Asus', 'asus-laptop', 0, '2022-12-13 19:35:08', '2022-12-13 19:35:08', 9),
(14, 'HP', 'hp-laptop', 0, '2022-12-13 19:37:50', '2022-12-13 19:37:50', 9),
(15, 'Macbook', 'macbook-laptop', 0, '2022-12-13 19:42:30', '2022-12-13 19:42:30', 9),
(16, 'SamSung', 'samsung-mobile', 0, '2022-12-13 20:26:50', '2022-12-13 20:26:50', 10),
(17, 'Xiaomi', 'xiaomi-mobiles', 0, '2022-12-13 20:32:19', '2022-12-14 05:24:50', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 5, 22, 7, 1, '2022-11-16 05:38:02', '2022-11-16 05:38:02'),
(29, 9, 23, 8, 2, '2022-12-10 04:42:15', '2022-12-14 05:30:56'),
(30, 9, 20, 4, 1, '2022-12-10 04:55:52', '2022-12-10 04:55:52'),
(31, 9, 35, 34, 3, '2022-12-14 05:31:12', '2022-12-14 05:31:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Laptop', 'laptop', 'laptop', 'uploads/category/1668481111.jpg', 'laptop', 'laptop', 'laptop', 0, '2022-11-14 19:58:31', '2022-11-15 01:54:24'),
(10, 'Mobile', 'mobile', 'mobile', 'uploads/category/1670923589.jpg', 'mobile', 'mobile', 'mobile', 0, '2022-11-15 01:27:15', '2022-12-13 02:26:29'),
(12, 'Tablet', 'tablet', 'tablet', 'uploads/category/1670927229.jpg', 'tablet', 'tablet', 'tablet', 0, '2022-12-13 03:27:09', '2022-12-13 03:27:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', '#17202A', 0, '2022-11-14 20:30:06', '2022-11-14 20:30:06'),
(2, 'White', '#FDFEFE', 0, '2022-11-14 20:30:18', '2022-11-14 20:30:18'),
(4, 'Blue', '#0000FF', 0, '2022-12-13 02:50:12', '2022-12-14 04:50:55'),
(5, 'Gray', '#DCDCDC', 0, '2022-12-13 19:46:53', '2022-12-13 19:46:53'),
(6, 'Sliver', '#C0C0C0', 0, '2022-12-13 19:47:55', '2022-12-13 19:47:55'),
(7, 'Purple', '#800080', 0, '2022-12-14 04:40:10', '2022-12-14 04:40:10'),
(8, 'Gold', '#FFD700', 0, '2022-12-14 04:40:53', '2022-12-14 04:40:53'),
(9, 'Grenn', '#228B22', 0, '2022-12-14 04:51:47', '2022-12-14 04:51:47'),
(10, 'Red', '#ee4d2d', 0, '2022-12-14 04:53:07', '2022-12-14 04:53:35'),
(11, 'Pink', '#FFC0CB', 0, '2022-12-14 04:57:10', '2022-12-14 04:57:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_12_031433_add_details_to_users_table', 2),
(6, '2022_11_12_074728_create_catogories_table', 3),
(7, '2022_11_13_035257_create_brands_table', 4),
(8, '2022_11_13_085243_create_products_table', 5),
(9, '2022_11_13_090419_create_product_images_table', 5),
(10, '2022_11_13_091617_create_products_table', 6),
(11, '2022_11_13_091637_create_product_images_table', 6),
(12, '2022_11_13_154836_create_colors_table', 7),
(13, '2022_11_14_081128_create_product_colors_table', 7),
(14, '2022_11_14_120934_create_sliders_table', 7),
(15, '2022_11_15_083757_add_category_id_to_brands_table', 8),
(16, '2022_11_16_040554_create_wishlists_table', 9),
(17, '2022_11_16_121611_create_carts_table', 10),
(18, '2022_11_16_113854_add_category_id_to_brands_table', 11),
(19, '2022_11_18_075558_create_orders_table', 11),
(20, '2022_11_18_080150_create_order_items_table', 11),
(21, '2022_11_26_040456_create_user_details_table', 12),
(22, '2022_12_16_152552_create_user_details_table', 13),
(23, '2022_12_16_155119_create_user_details_table', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phonenumber`, `pincode`, `address`, `status_message`, `payment_mode`, `payment_id`, `created_at`, `updated_at`) VALUES
(9, 6, '5m-xXCfJcBIoj', 'Le Nguyen Quoc Huy', 'huyle130803@gmail.com', '0765233951', '123456', 'hoa phuoc\r\n', 'out-for-delivery', 'Cash on delivery', NULL, '2022-11-18 05:08:04', '2022-12-09 09:03:17'),
(10, 6, '5m-ptXITnLv5l', 'hoang', 'phanduchoang003@gmail.com', '0348722965', '123456', 'asd', 'in progress', 'Cash on delivery', NULL, '2022-11-18 05:09:52', '2022-11-18 05:09:52'),
(11, 6, '5m-QPO8EIPGYi', 'hoang', 'phanduchoang003@gmail.com', '0348722965', '123456', 'asd', 'in progress', 'Cash on delivery', NULL, '2022-11-18 05:58:36', '2022-11-18 05:58:36'),
(12, 6, '5m-khodLDhLvQ', 'hoang', 'phanduchoang003@gmail.com', '0348722965', '123456', 'asd', 'in progress', 'Cash on delivery', NULL, '2022-11-18 06:05:34', '2022-11-18 06:05:34'),
(13, 6, '5m-E09JGqK3wQ', 'hoang', 'phanduchoang003@gmail.com', '0348722965', '123456', 'asd', 'in progress', 'Cash on delivery', NULL, '2022-10-26 01:21:46', '2022-11-18 08:27:14'),
(14, 12, '5m-Vpv51DaIXL', 'Trần Duc', 'ductv.21it@vku.udn.vn', '0585133268', '283578', '57 k20', 'in progress', 'Cash on delivery', NULL, '2022-12-09 09:00:10', '2022-12-09 09:00:10'),
(15, 9, '5m-yoLPqkjI3a', 'Admin', 'admin@gmail.com', '0585133268', '534545', '57 k20', 'in progress', 'Cash on delivery', NULL, '2022-12-10 04:41:44', '2022-12-10 04:41:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 6, 22, 11, 2, 100, '2022-11-18 04:59:12', '2022-11-18 04:59:12'),
(2, 7, 21, 6, 3, 100, '2022-11-18 05:00:48', '2022-11-18 05:00:48'),
(3, 8, 19, NULL, 1, 100, '2022-11-18 05:02:43', '2022-11-18 05:02:43'),
(4, 9, 22, 7, 2, 100, '2022-11-18 05:08:04', '2022-11-18 05:08:04'),
(5, 10, 22, 7, 2, 100, '2022-11-18 05:09:52', '2022-11-18 05:09:52'),
(6, 11, 24, 9, 1, 100, '2022-11-18 05:58:36', '2022-11-18 05:58:36'),
(7, 12, 21, 6, 1, 100, '2022-11-18 06:05:34', '2022-11-18 06:05:34'),
(8, 13, 22, 7, 1, 100, '2022-11-18 08:27:14', '2022-11-18 08:27:14'),
(9, 13, 22, 11, 2, 100, '2022-11-18 08:27:14', '2022-11-18 08:27:14'),
(10, 14, 25, 10, 1, 100, '2022-12-09 09:00:10', '2022-12-09 09:00:10'),
(11, 15, 20, 5, 2, 150, '2022-12-10 04:41:44', '2022-12-10 04:41:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `old_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=not-trending, 1=treding',
  `featured` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=featured,0=not featured',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `brand`, `small_description`, `description`, `price`, `old_price`, `quantity`, `trending`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(22, 9, 'MSI Gaming Katana GF66', 'msi-gaming-katana-gf66-12uck-815vn-i5', 'MSI', 'MSI Gaming Katana GF66 12UCK-815VN i5', '12450H/8GB/512GB/15.6', 100, 200, 4, 1, 1, 0, 'msi1', 'msi1', 'msi1', '2022-11-15 02:10:04', '2022-12-14 04:33:37'),
(23, 9, 'Lenovo ThinkBook 15 G2 ITL', 'laptop-lenovo-thinkbook-15-g2-itl-i5', 'Lenovo', 'Laptop Lenovo ThinkBook 15 G2 ITL i5', 'i5 1135G7/8GB/512GB/15.6”FHD/MX450 2GB/Win 11', 950, 1120, 10, 1, 1, 0, 'Laptop Lenovo ThinkBook 15 G2 ITL i5', 'Lenovo ThinkBook 15 G2 ITL', 'Laptop Lenovo ThinkBook 15 G2 ITL i5', '2022-11-15 02:12:42', '2022-12-14 04:29:21'),
(28, 10, 'Vivo Y22s 8GB-128GB', 'vivo', 'MSI', 'Mobile', 'Chính: 6.55 inch, Chính: LCD, HD+, 720 x 1612 Pixels\r\n8.0 MP \r\n128 GB\r\n50.0 MP + 2.0 MP', 350, 550, 25, 1, 1, 0, 'Vivo Moblie', 'Vivo Moblie', 'Vivo Moblie', '2022-12-13 02:32:18', '2022-12-13 03:44:45'),
(29, 10, 'Oppo Reno8 4G', 'oppo-reno', 'Oppo', 'Oppo Mobile', '6.4 inch / 32.0 MP / 256 GB', 550, 700, 20, 0, 0, 0, 'Oppo mobile', 'Oppo mobile', 'Oppo mobile', '2022-12-13 02:49:24', '2022-12-14 05:55:13'),
(30, 9, 'Asus TUF Gaming FX506LHB', 'hn188w-i5-10300h', 'Asus', 'Asus Laptop', '15.6 inch\r\nCore i5\r\n8 GB (1 thanh 8 GB)', 940, 1200, 20, 0, 0, 0, 'Asus Laptop', 'Asus Laptop', 'Asus Laptop', '2022-12-13 19:34:34', '2022-12-13 19:35:31'),
(31, 9, 'HP Pavilion 14-dv2036TU', 'i5-1235u-6k772pa', 'HP', 'i5 1235U (6K772PA)', '14.0 inch\r\nCore i5\r\n8 GB (2 thanh 4 GB)', 830, 999, 20, 0, 0, 0, 'hp laptop', 'hp laptop', 'hp laptop', '2022-12-13 19:40:36', '2022-12-13 19:40:36'),
(32, 9, 'MacBook Pro 13 2020 Touch Bar', 'm1-256gb', 'Macbook', 'M1 256GB', '13.3 inch/\r\n8 GB/\r\nSSD 256 GB', 2500, 3200, 25, 1, 1, 0, 'Macbook Latop', 'macbook latop', 'macbook latop', '2022-12-13 19:45:03', '2022-12-13 20:02:34'),
(33, 10, 'Samsung Galaxy S22 Bora Purple', 'samsung-galaxy-s22-bora-purple', 'SamSung', 'Samsung Galaxy S22 Bora Purple', '6.1 inch/10.0 MP /128 GB', 840, 1050, 20, 0, 1, 0, 'Samsung Galaxy S22 Bora Purple', 'Samsung Galaxy S22 Bora Purple', 'Samsung Galaxy S22 Bora Purple', '2022-12-14 04:39:11', '2022-12-14 04:39:11'),
(34, 10, 'Xiaomi 11T', 'xiaomi-11t', 'Xiomi', 'Xiaomi 11T  8GB - 128GB', '6.67 inch / 16.0 MP / 128 GB', 410, 550, 20, 1, 1, 0, 'Xiaomi 11T  8GB - 128GB', 'Xiaomi 11T', 'Xiaomi 11T  8GB - 128GB', '2022-12-14 04:45:47', '2022-12-14 04:45:47'),
(35, 10, 'iPhone 13 128GB', 'iphone-13-128gb', 'Iphone', 'iPhone 13 128GB', '6.1 inch / 16.0 MP / 128 GB', 875, 1100, 20, 1, 1, 0, 'iPhone 13 128GB', 'iPhone 13 128GB', 'iPhone 13 128GB', '2022-12-14 04:56:07', '2022-12-14 04:56:07'),
(36, 12, 'iPad Pro 11 2021 M1', 'ipad-pro-11-2021-m1', 'Iphone', 'iPad Pro 11 2021 M1 Wi-Fi 128GB', '11 inch / 12.0 MP / 128 GB', 929, 1090, 20, 1, 1, 0, 'iPad Pro 11 2021 M1 Wi-Fi 128GB', 'iPad Pro 11 2021 M1 Wi-Fi 128GB', 'iPad Pro 11 2021 M1 Wi-Fi 128GB', '2022-12-14 05:06:14', '2022-12-14 05:06:14'),
(37, 12, 'Samsung Galaxy Tab S6', 'samsung-galaxy-tab-s6', 'SamSung', 'Samsung Galaxy Tab S6', '10.4 inch / 8.0 MP / 64 GB', 650, 899, 20, 0, 1, 0, 'Samsung Galaxy Tab S6 Lite 2022', 'Samsung Galaxy Tab S6 Lite 2022', 'Samsung Galaxy Tab S6 Lite 2022', '2022-12-14 05:10:09', '2022-12-14 05:10:09'),
(38, 12, 'Lenovo Tab M8-Gen 2', 'lenovo-tab-m8-gen-2', 'Lenovo', 'Lenovo Tab M8-Gen 2', '8.0 inch / 5.0 MP / 32 GB', 180, 200, 20, 0, 1, 0, 'Lenovo Tab M8-Gen 2', 'Lenovo Tab M8-Gen 2', 'Lenovo Tab M8-Gen 2', '2022-12-14 05:17:45', '2022-12-14 05:17:45'),
(39, 12, 'OPPO Pad Air', 'oppo-pad-air', 'Oppo', 'OPPO Pad Air', '10.36 inch / 8.0 MP / 64 GB', 550, 700, 20, 1, 1, 0, 'OPPO Pad Air', 'OPPO Pad Air', 'OPPO Pad Air', '2022-12-14 05:23:49', '2022-12-14 05:23:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `quantity`, `created_at`, `updated_at`) VALUES
(7, 22, 1, 0, '2022-11-15 02:10:04', '2022-11-18 08:27:14'),
(8, 23, 1, 1, '2022-11-15 02:12:42', '2022-11-15 02:12:42'),
(11, 22, 2, 0, '2022-11-16 05:04:13', '2022-11-18 08:27:14'),
(12, 28, 1, 15, '2022-12-13 02:32:18', '2022-12-13 02:32:18'),
(13, 28, 2, 10, '2022-12-13 02:32:18', '2022-12-13 02:32:18'),
(14, 29, 1, 10, '2022-12-13 02:50:52', '2022-12-13 02:50:52'),
(16, 30, 1, 20, '2022-12-13 19:34:34', '2022-12-13 19:34:34'),
(17, 31, 2, 20, '2022-12-13 19:40:36', '2022-12-13 19:40:36'),
(20, 32, 5, 15, '2022-12-13 19:48:19', '2022-12-13 19:48:19'),
(21, 32, 6, 10, '2022-12-13 19:48:19', '2022-12-13 19:48:19'),
(24, 33, 7, 20, '2022-12-14 04:41:17', '2022-12-14 04:41:17'),
(25, 34, 1, 10, '2022-12-14 04:46:24', '2022-12-14 04:46:24'),
(26, 34, 4, 10, '2022-12-14 04:46:24', '2022-12-14 04:46:24'),
(32, 35, 1, 3, '2022-12-14 04:57:57', '2022-12-14 04:57:57'),
(34, 35, 8, 3, '2022-12-14 04:57:57', '2022-12-14 04:57:57'),
(35, 35, 9, 4, '2022-12-14 04:57:57', '2022-12-14 04:57:57'),
(36, 35, 10, 3, '2022-12-14 04:57:57', '2022-12-14 04:57:57'),
(37, 35, 11, 4, '2022-12-14 04:57:57', '2022-12-14 04:57:57'),
(38, 35, 2, 3, '2022-12-14 05:00:24', '2022-12-14 05:00:24'),
(39, 36, 5, 10, '2022-12-14 05:06:14', '2022-12-14 05:06:14'),
(40, 36, 6, 10, '2022-12-14 05:06:14', '2022-12-14 05:06:14'),
(41, 37, 4, 10, '2022-12-14 05:10:09', '2022-12-14 05:10:09'),
(42, 37, 5, 10, '2022-12-14 05:10:09', '2022-12-14 05:10:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(16, 28, 'uploads/products/16709239381.jpg', '2022-12-13 02:32:18', '2022-12-13 02:32:18'),
(17, 29, 'uploads/products/16709249641.jpg', '2022-12-13 02:49:24', '2022-12-13 02:49:24'),
(21, 32, 'uploads/products/16709869541.jpg', '2022-12-13 20:02:34', '2022-12-13 20:02:34'),
(22, 31, 'uploads/products/16710164931.jpg', '2022-12-14 04:14:53', '2022-12-14 04:14:53'),
(23, 30, 'uploads/products/16710167811.jpg', '2022-12-14 04:19:41', '2022-12-14 04:19:41'),
(24, 22, 'uploads/products/16710169631.jpg', '2022-12-14 04:22:43', '2022-12-14 04:22:43'),
(25, 23, 'uploads/products/16710172891.jpg', '2022-12-14 04:28:09', '2022-12-14 04:28:09'),
(26, 33, 'uploads/products/16710179511.jpg', '2022-12-14 04:39:11', '2022-12-14 04:39:11'),
(27, 34, 'uploads/products/16710183841.jpg', '2022-12-14 04:46:24', '2022-12-14 04:46:24'),
(28, 35, 'uploads/products/16710189671.jpg', '2022-12-14 04:56:07', '2022-12-14 04:56:07'),
(29, 36, 'uploads/products/16710195741.jpg', '2022-12-14 05:06:14', '2022-12-14 05:06:14'),
(30, 37, 'uploads/products/16710198091.jpg', '2022-12-14 05:10:09', '2022-12-14 05:10:09'),
(31, 38, 'uploads/products/16710202651.jpg', '2022-12-14 05:17:45', '2022-12-14 05:17:45'),
(32, 39, 'uploads/products/16710206291.jpg', '2022-12-14 05:23:49', '2022-12-14 05:23:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Le hoi gaming', 'sieu uu dai', 'uploads/slider/1670065256.jpg', 0, '2022-12-03 04:00:56', '2022-12-03 04:00:56'),
(10, 'laptop do hoa', 'giam den 20%', 'uploads/slider/1670065307.jpg', 0, '2022-12-03 04:01:47', '2022-12-03 04:01:47'),
(11, 'Laptop MSI', 'Giam den 10trieu', 'uploads/slider/1670065337.jpg', 0, '2022-12-03 04:02:17', '2022-12-03 04:02:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(9, 'Admin', 'admin@gmail.com', NULL, '$2y$10$fGu4M3JSdICa/UA1jBGO3ONdf0to079Ai2oJG9WoNnEgcTmZZdzam', NULL, '2022-11-26 01:39:55', '2022-12-16 09:00:10', 1),
(11, 'duc', 'ducabc@gmail.com', NULL, '$2y$10$QH6oI4qqbCaLObZXFApZbu2iL6L7AR1WW049.xdPkPOmEjPdEVvnm', NULL, '2022-12-01 03:12:00', '2022-12-01 03:12:00', 0),
(12, 'duc123', 'ductv.21it@vku.udn.vn', NULL, '$2y$10$rqjOsejLs7kn.jHBNtj2XuNXrArtzR4MfIu5d01Bbvokf.DfyOJlu', NULL, '2022-12-09 08:39:19', '2022-12-09 08:39:19', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 9, '0585133200', 'hcudsin', '2022-12-16 08:54:21', '2022-12-19 08:03:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(7, 5, 23, '2022-11-16 01:50:26', '2022-11-16 01:50:26'),
(12, 2, 22, '2022-11-18 20:50:55', '2022-11-18 20:50:55'),
(13, 2, 19, '2022-11-19 22:09:18', '2022-11-19 22:09:18'),
(15, 2, 25, '2022-11-22 06:01:45', '2022-11-22 06:01:45'),
(16, 2, 23, '2022-11-22 06:01:54', '2022-11-22 06:01:54'),
(17, 7, 25, '2022-11-22 20:01:48', '2022-11-22 20:01:48'),
(18, 7, 23, '2022-11-22 20:02:18', '2022-11-22 20:02:18'),
(19, 2, 21, '2022-11-24 21:32:45', '2022-11-24 21:32:45'),
(20, 9, 23, '2022-11-26 01:47:54', '2022-11-26 01:47:54'),
(21, 9, 24, '2022-11-26 01:48:09', '2022-11-26 01:48:09'),
(22, 9, 22, '2022-12-08 04:44:56', '2022-12-08 04:44:56'),
(23, 9, 21, '2022-12-08 04:46:04', '2022-12-08 04:46:04'),
(24, 12, 25, '2022-12-09 08:53:26', '2022-12-09 08:53:26'),
(25, 9, 20, '2022-12-10 04:54:33', '2022-12-10 04:54:33'),
(26, 9, 35, '2022-12-14 05:31:10', '2022-12-14 05:31:10'),
(27, 9, 38, '2022-12-19 08:27:31', '2022-12-19 08:27:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_details_user_id_unique` (`user_id`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
