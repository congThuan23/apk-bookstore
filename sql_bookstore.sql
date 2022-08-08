-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 06, 2022 lúc 08:51 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore_android`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `author`
--

INSERT INTO `author` (`id`, `name`, `introduction`) VALUES
(1, 'Dale Carnegie', 'Dale Carnegie sinh năm 1888 tại Maryville, Missouri, trong một gia đình nông dân, con trai thứ hai của James William Carnagey (sinh tại Indiana, tháng 2 năm 1852 – 1910) và vợ là Amanda Elizabeth Harbison (sinh tại Missouri, tháng 2 năm 1858 – 1910).'),
(2, 'Trần Minh Thông', 'Nếu muốn kiếm được nhiều tiền, một là bạn thật là giỏi hoặc bạn phải thật là đẹp. Không có hai yếu tố trên thì cách tốt nhất để bạn kiếm tiền là: làm việc và làm việc cật lực hơn nữa. Bản thân tôi, tôi không giỏi và cũng không đẹp và tôi cũng không đi tìm kiếm sự giàu có từ tiền bạc. '),
(3, 'LAM HUYNH', ' '),
(4, 'Nguyễn Nga', 'Nguyễn Nga tốt nghiệp khoa Báo chí-Truyền thông, trường ĐH Khoa học xã hội và Nhân văn, tốt nghiệp khóa Đạo diễn ngắn hạn, trường ĐH Sân khấu-Điện ảnh TP.HCM.'),
(5, 'Arthur Conan Doyle', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.'),
(6, 'John Burdett', 'John Burdett is a nonpracticing lawyer who worked in Hong Kong for a British firm until he found his true vocation as a writer.'),
(7, 'Keigo Higashino', 'KEIGO HIGASHINO is the bestselling, best-known novelist in Japan and around Asia, with numerous television and film adaptations of his work appearing in several languages.'),
(8, 'Howard Marks', 'Howard Marks is a Welsh author and former drug smuggler who achieved notoriety as an international cannabis smuggler through high-profile court cases.'),
(9, 'H.P. Lovecraft', 'Howard Phillips Lovecraft là một nhà văn người Mỹ đạt nhiều thành công qua lĩnh vực truyện kinh dị giả tưởng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authordetail`
--

CREATE TABLE `authordetail` (
  `idProduct` int(11) NOT NULL,
  `idAuthor` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authordetail`
--

INSERT INTO `authordetail` (`idProduct`, `idAuthor`, `number`) VALUES
(1, 5, 1),
(2, 2, 1),
(3, 1, 1),
(4, 3, 1),
(5, 4, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Vietcombank', NULL, NULL, NULL),
(2, 'Agribank', NULL, NULL, NULL),
(3, 'Vietinbank', NULL, NULL, NULL),
(4, 'Techcombank', NULL, NULL, NULL),
(5, 'Sacombank', NULL, NULL, NULL),
(6, 'MBBank', NULL, NULL, NULL),
(7, 'VPBank', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_account`
--

CREATE TABLE `bank_account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `IdUser` int(11) NOT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankID` int(11) NOT NULL,
  `amountOfMoney` decimal(14,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bank_account`
--

INSERT INTO `bank_account` (`id`, `IdUser`, `accountNumber`, `bankID`, `amountOfMoney`, `created_at`, `updated_at`) VALUES
(3, 1, '109111222111', 2, '1000000.00', NULL, NULL),
(4, 1, '1', 5, NULL, NULL, NULL),
(5, 1, '9', 4, NULL, NULL, NULL),
(6, 1, '24423434456666654', 3, NULL, NULL, NULL),
(7, 1, '12432233222111', 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Fiction'),
(2, 'Classics'),
(3, 'Biography & Autobiography'),
(4, 'Personal Memoirs'),
(5, 'Kỹ năng xã hội và giao tiếp'),
(6, 'Kinh doanh & Kinh tế'),
(7, 'Đầu tư & Chứng khoán'),
(8, 'Sách hư cấu'),
(9, 'Lãng mạn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorydetail`
--

CREATE TABLE `categorydetail` (
  `idProduct` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categorydetail`
--

INSERT INTO `categorydetail` (`idProduct`, `idCategory`, `number`) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(2, 4, 2),
(3, 5, 1),
(4, 6, 1),
(4, 7, 2),
(5, 8, 1),
(5, 9, 2),
(6, 1, 1),
(6, 2, 2),
(7, 1, 1),
(7, 2, 2),
(8, 1, 1),
(8, 2, 1),
(9, 1, 2),
(9, 2, 1),
(10, 1, 1),
(10, 2, 2);

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
(5, '2021_12_09_140906_create_bank_account_table', 2),
(6, '2021_12_09_141225_create_bank_table', 3),
(7, '2021_12_09_141431_create_rating_table', 4),
(8, '2021_12_09_141856_create_product_table', 5),
(9, '2021_12_09_142329_create_author_table', 6),
(10, '2021_12_09_142515_create_detail_of_product_table', 7),
(11, '2021_12_09_142752_create_receipt_table', 8),
(12, '2021_12_09_143033_create_detail_of_type_table', 9),
(13, '2021_12_09_143224_create_type_of_book_table', 10),
(14, '2021_12_09_143324_create_category_table', 11),
(15, '2021_12_09_143741_create_users_table', 12),
(16, '2022_01_06_165613_create_thuan_table', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `imageName` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`id`, `imageName`) VALUES
(1, 'kdid1.jpg'),
(2, 'kdid2.jpg'),
(3, 'kdid3.jpg'),
(4, 'kdid4.jpg'),
(5, 'kdid5.jpg'),
(6, 'kdid6.jpg'),
(7, 'tcmv1.jpg'),
(8, 'tcmv2.jpg'),
(9, 'tcmv3.jpg'),
(10, 'tcmv4.jpg'),
(11, 'tcmv5.jpg');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publishDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageNumber` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `publisher`, `publishDate`, `pageNumber`, `language`, `productImg`, `introduction`, `price`, `view`, `created_at`, `updated_at`) VALUES
(1, 'The Memoirs of Sherlock Holmes', 'Simon and Schuster', '2014-11-18', 320, 'Tiếng Anh', 'the_memoirs.jpg', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.', '22463.00', 374400, NULL, NULL),
(2, 'Không đường ít đá', 'Trần Minh Thông', '2014-11-18', 77, 'Tiếng Việt', 'khong_duong.jpg', 'Nếu muốn kiếm được nhiều tiền, một là bạn thật là giỏi hoặc bạn phải thật là đẹp. Không có hai yếu tố trên thì cách tốt nhất để bạn kiếm tiền là: làm việc và làm việc cật lực hơn nữa. Bản thân tôi, tôi không giỏi và cũng không đẹp và tôi cũng không đi tìm kiếm sự giàu có từ tiền bạc. ', '20000.00', 232000, NULL, NULL),
(3, 'Đắc Nhân Tâm', 'First News', '2014-11-18', 320, 'Tiếng Anh', 'dac_nhan.jpg', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.', '57000.00', 673000, NULL, NULL),
(4, 'Đầu Tư Chứng Khoán Cơ Bản', 'LAM HUYNH', '2021-08-05', 313, 'Tiếng Việt', 'dau_tu.jpg', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.', '29000.00', 55000, NULL, NULL),
(5, 'Thầy Cãi Miệt Vườn Tập 1', 'Viết lách VN', '2020-05-15', 60, 'Tiếng Việt', 'thay_cai.jpg', 'The Memoirs of Sherlock Holmes inspired The Map of Chaos by New York Times bestselling author Félix J. Palma. As a gift to readers, this ebook edition includes an excerpt from The Map of Chaos.', '0.00', 189000, NULL, NULL),
(6, 'Bangkok 8: A Royal Thai Detective Novel (1)', 'Vintage Crime/Black Lizard', '2003-06-18', 336, 'Tiếng Anh', 'bangkok_8_1.png', 'A thriller with attitude to spare, Bangkok 8 is a sexy, razor-edged, often darkly hilarious novel set in one of the world’s most exotic cities.', '155000.00', 60000, NULL, NULL),
(7, 'Under the Midnight Sun: A Novel', 'Minotaur Books', '2016-11-08', 544, 'Tiếng Anh', 'a_novel.png', 'From the acclaimed international bestseller Keigo Higashino (The Devotion of Suspect X) comes a sweeping novel in the tradition of Les Miserables and Crime and Punishment. ', '157000.00', 5000, NULL, NULL),
(8, 'Mr Nice: The Incredible Story of an Unconventional Life', 'Random House', '2010-03-30', 560, 'Tiếng Anh', 'mr_nice.png', '21ST ANNIVERSARY EDITION WITH AN INTRODUCTION BY IRVINE WELSH', '231000.00', 125000, NULL, NULL),
(9, 'Horror classics collection', 'Strelbytskyy Multimedia Publishing', '2020-01-14', 742, 'Tiếng Anh', 'horor.png', 'Horror books have been part of the literary world for years, but it seems like horror in all its mediums has been on the upswing in recent times.', '3000.00', 142000, NULL, NULL),
(10, '100 classic detectives.', 'Strelbytskyy Multimedia Publishing', '2021-08-01', 9153, 'Tiếng Anh', 'golden_age.png', 'Some of the greatest detective stories every wrote are collected in this massive anthology.', '0.00', 17000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productpage`
--

CREATE TABLE `productpage` (
  `idProduct` int(11) NOT NULL,
  `idPage` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productpage`
--

INSERT INTO `productpage` (`idProduct`, `idPage`, `number`) VALUES
(2, 1, 1),
(2, 2, 2),
(2, 3, 3),
(2, 4, 4),
(2, 5, 5),
(2, 6, 6),
(5, 7, 1),
(5, 8, 2),
(5, 9, 3),
(5, 10, 4),
(5, 11, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amountOfStars` int(11) NOT NULL,
  `ratingTime` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `productID`, `userID`, `detail`, `amountOfStars`, `ratingTime`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Sách đọc rất cuốn', 4, '2022-01-15 19:24:22', NULL, NULL),
(2, 2, 1, NULL, 3, '2022-01-16 12:31:57', NULL, NULL),
(3, 5, 1, NULL, 5, '2022-01-16 12:47:24', NULL, NULL),
(4, 6, 1, 'sách hay', 5, '2022-01-16 14:32:43', NULL, NULL),
(5, 5, 1, 'hay', 2, '2022-02-06 14:41:02', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `receipt`
--

CREATE TABLE `receipt` (
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `purchasePrice` decimal(8,2) NOT NULL,
  `purchaseTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `receipt`
--

INSERT INTO `receipt` (`idProduct`, `idUser`, `purchasePrice`, `purchaseTime`) VALUES
(2, 1, '100000.00', '2022-01-10 00:00:00'),
(3, 1, '100000.00', '2022-01-11 00:00:00'),
(5, 1, '100000.00', '2022-01-12 00:00:00'),
(6, 1, '100000.00', '2022-01-10 00:00:00'),
(10, 1, '100000.00', '2022-01-10 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `avatarImg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numberOfCoins` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phoneNumber`, `dateOfBirth`, `gender`, `avatarImg`, `numberOfCoins`, `created_at`, `updated_at`) VALUES
(1, 'Cong Thuận', 'hue@gmail.com', NULL, '111123', '0895437667', '15/02/2001', 1, NULL, 221, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `authordetail`
--
ALTER TABLE `authordetail`
  ADD PRIMARY KEY (`idProduct`,`idAuthor`),
  ADD KEY `authordetail_ibfk_2` (`idAuthor`);

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categorydetail`
--
ALTER TABLE `categorydetail`
  ADD PRIMARY KEY (`idProduct`,`idCategory`);

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
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
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
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productpage`
--
ALTER TABLE `productpage`
  ADD PRIMARY KEY (`idProduct`,`idPage`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`idProduct`,`idUser`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `authordetail`
--
ALTER TABLE `authordetail`
  ADD CONSTRAINT `authordetail_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `authordetail_ibfk_2` FOREIGN KEY (`idAuthor`) REFERENCES `author` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
