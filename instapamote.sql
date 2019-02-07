-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2019 at 09:10 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instapamote`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name_adm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_adm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_adm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name_adm`, `email_adm`, `password_adm`, `created_at`, `is_admin`) VALUES
(1, 'Citra Avitka Mawar Stri', 'citraav@gmail.com', 'c2aef62c97faf8631db4f1a769e2e1fb', '2018-12-01 05:37:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `price` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ads_status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `price_id`, `customer_id`, `title`, `slug`, `photo`, `description`, `price`, `day`, `point`, `count`, `create_at`, `ads_status`) VALUES
(1, 1, 1, 'Cireng Banyur', 'cireng-banyur', '20181113 - CirengBanyur.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 15000, 1, 10, 15, '2018-12-04 02:25:58', 1),
(4, 2, 3, 'Khimar Althaira', 'Khimar-Althaira', 'alygallery.id-20180208-0001.jpg', '<p>khimar althaira adalah ......</p>\r\n', 20000, 1, 10, 15, '2018-12-21 02:52:48', 0),
(5, 3, 3, 'Khimar Almira', 'Khimar-Almira', 'alygalleryid-20180203-0004.jpg', '<p>Khimar Almira adalah .....</p>\r\n', 25000, 0, 0, NULL, '2018-12-21 03:04:39', 0),
(6, 1, 7, 'Topi Kece', 'Topi-Kece', '99db1365fb4446283af38d415a8ab12e.jpg', '<p>asdsdva sda<strong>adsad adsdas</strong>dasad</p>\r\n', 0, 0, 0, NULL, '2019-01-10 06:02:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id_cus` int(11) NOT NULL,
  `name_cus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_cus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id_cus`, `name_cus`, `email_cus`, `password_cus`, `created_at`, `is_status`) VALUES
(1, 'Faizal Fahmi ', 'faizal.9366@students.amikom.ac.id', '2006d10ea50ca429d85086cde117aa1f', '2018-11-22 13:06:52', 1),
(3, 'Sophia Riska Wiraningrum', 'rizkaw@gmail.com', 'a703b974f49ef0807416940d1c1d762e', '2018-12-01 06:06:26', 1),
(6, 'sandra septiana', 'sandrassb23@gmail.com', 'e00b29d5b34c3f78df09d45921c9ec47', '2018-12-20 15:48:10', 1),
(7, 'Citra Avitka Mawar Stri', 'citraav@gmail.com', 'c2aef62c97faf8631db4f1a769e2e1fb', '2018-12-28 20:17:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `instagrammers`
--

CREATE TABLE `instagrammers` (
  `id_ins` int(11) NOT NULL,
  `name_ins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_ins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_ins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_profile_ins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `point` int(11) DEFAULT '0',
  `is_status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instagrammers`
--

INSERT INTO `instagrammers` (`id_ins`, `name_ins`, `email_ins`, `password_ins`, `url_profile_ins`, `created_at`, `point`, `is_status`) VALUES
(7, 'Natasya Khoiru Nissa', 'nataruni@gmail.com', '9e1b20880fc2de7f3c7d70791b61575b', 'https://www.instagram.com/nataruni/', '2018-11-22 14:33:22', 0, 1),
(9, 'Faizal Fahmi Aziz', 'faizarukun24@gmail.com', '2006d10ea50ca429d85086cde117aa1f', 'https://www.instagram.com/faiz_aziz24/', '2018-12-08 07:51:30', 0, 1),
(10, 'Megawati Sukarno Putri', 'megawp@gmail.com', '1b72cfdd279a8b6f2b72aa45c0b6f6f5', 'https://www.instagram.com/megaw_p/', '2018-12-20 15:52:12', 0, 1),
(11, 'Jaysika Hafidz Dina', 'jaysikahd@gmail.com', 'a2bb9456b154d0fb55236717782931d4', 'https://www.instagram.com/jaysika_dina15/', '2018-12-28 20:19:14', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `price` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `name`, `post_slug`, `body`, `price`, `day`, `discount`, `count`, `point`, `created_at`) VALUES
(1, 'Real Basic', 'Real-Basic', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', 15000, 1, 0, 15, 10, '2018-12-03 14:45:57'),
(2, 'Real Standarded', 'Real-Standarded', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n', 20000, 1, 0, 20, 10, '2018-12-03 14:46:46'),
(3, 'Real Ultimate', 'real-ultimate', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 25000, 1, 0, 25, 10, '2018-12-03 14:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `promotes`
--

CREATE TABLE `promotes` (
  `id` int(11) NOT NULL,
  `advertisement_id` int(11) NOT NULL,
  `instagrammer_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prm_status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotes`
--

INSERT INTO `promotes` (`id`, `advertisement_id`, `instagrammer_id`, `url`, `point`, `created_at`, `prm_status`) VALUES
(1, 1, 7, 'https://instagram.com/jKBasdbD898', 10, '2018-12-21 13:48:31', 1),
(2, 1, 9, 'https://instagram.com/jKBasdbD5sAa', 10, '2018-12-28 20:44:02', 1),
(3, 1, 10, 'https://instagram.com/jKBscD8sx9', 10, '2018-12-28 20:45:03', 1),
(4, 6, 9, 'asas', 10, '2019-01-10 13:37:45', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisements_ibfk_1` (`customer_id`),
  ADD KEY `advertisements_ibfk_2` (`price_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_cus`);

--
-- Indexes for table `instagrammers`
--
ALTER TABLE `instagrammers`
  ADD PRIMARY KEY (`id_ins`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotes`
--
ALTER TABLE `promotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotes_ibfk_1` (`advertisement_id`),
  ADD KEY `promotes_ibfk_2` (`instagrammer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id_cus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instagrammers`
--
ALTER TABLE `instagrammers`
  MODIFY `id_ins` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promotes`
--
ALTER TABLE `promotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `advertisements_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id_cus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `advertisements_ibfk_2` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promotes`
--
ALTER TABLE `promotes`
  ADD CONSTRAINT `promotes_ibfk_1` FOREIGN KEY (`advertisement_id`) REFERENCES `advertisements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `promotes_ibfk_2` FOREIGN KEY (`instagrammer_id`) REFERENCES `instagrammers` (`id_ins`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
