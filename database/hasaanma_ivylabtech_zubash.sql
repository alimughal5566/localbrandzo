-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2020 at 04:02 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasaanma_ivylabtech_zubash`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@ivylabtech.com', '+923216267061', 0, '1598334434hashim.jpg', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, 'FNCRiJhSq45m4KevBLytjof93mYGj1Miiq5YEC0chKOs9DZdyEvUVxHkHohJ', '2018-02-28 23:27:08', '2020-08-25 00:47:14', 'Zubash'),
(5, 'Mr Mamun', 'mamun@gmail.com', '34534534', 17, '1568803644User.png', '$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC', 1, NULL, '2019-09-18 04:47:24', '2019-09-18 21:21:49', NULL),
(6, 'Mr. Manik', 'manik@gmail.com', '5079956958', 18, '1568863361user-admin.png', '$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.', 1, NULL, '2019-09-18 21:22:41', '2019-09-18 21:22:41', NULL),
(7, 'Mr. Pratik', 'pratik@gmail.com', '34534534', 16, '1568863396user-admin.png', '$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C', 1, 'iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq', '2019-09-18 21:23:16', '2019-09-18 21:23:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 1, 1, '2019-10-12 03:22:03', '2019-10-12 23:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(157, 22, 'Black', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(158, 22, 'White', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(159, 22, 'Sliver', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(160, 22, 'Red', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(161, 22, 'Dark Grey', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(162, 22, 'Dark Blue', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(163, 22, 'Brown', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(177, 25, 'demo 1', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(178, 25, 'demo 2', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(187, 30, 'Yellow', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(188, 30, 'White', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(195, 20, 'Local seller warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(196, 20, 'No warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(198, 20, 'Non-local warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(199, 21, 'Symphony', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(200, 21, 'Oppo', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(201, 21, 'EStore', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(202, 21, 'Infinix', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(203, 21, 'Apple', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(243, 33, '1 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(244, 33, '2 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(245, 33, '3 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1568889151top2.jpg', 'https://www.google.com/', 'TopSmall'),
(2, '1568889146top1.jpg', NULL, 'TopSmall'),
(7, '1598272053ad-image.jpg', '#', 'Large'),
(8, '1598272105about-us1.jpg', NULL, 'Large'),
(10, '1598272308Sale-3.jpg', NULL, 'BottomSmall'),
(12, '1598272404Sale-2.jpg', NULL, 'BottomSmall'),
(14, '1598272555Sale-1.jpg', NULL, 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700986-min.jpg', 'www.geniusocean.com', 36, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41'),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21'),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700821-min.jpg', 'www.geniusocean.com', 19, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20'),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'www.geniusocean.com', 57, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36'),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700595-min.jpg', 'www.geniusocean.com', 3, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30'),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700464-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53'),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700383-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700322-min.jpg', 'www.geniusocean.com', 50, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700251-min.jpg', 'www.geniusocean.com', 151, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699136-min.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699045-min.jpg', 'www.geniusocean.com', 36, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37'),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698954-min.jpg', 'www.geniusocean.com', 68, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59'),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698893-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14'),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698832-min.jpg', 'www.geniusocean.com', 34, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37');
INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`) VALUES
(25, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15557542831-min.jpg', 'www.geniusocean.com', 40, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`) VALUES
(2, 'Oil & gas', 'oil-and-gas'),
(3, 'Manufacturing', 'manufacturing'),
(4, 'Chemical Research', 'chemical_research'),
(5, 'Agriculture', 'agriculture'),
(6, 'Mechanical', 'mechanical'),
(7, 'Entrepreneurs', 'entrepreneurs'),
(8, 'Technology', 'technology');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(4, 'Electronic', 'electric', 0, '1557807287light.png', 1, '1568709131f6.jpg'),
(5, 'FASHION & BEAUTY', 'fashion-and-Beauty', 1, '1557807279fashion.png', 1, '1568709123f1.jpg'),
(6, 'Camera & Photo', 'camera-and-photo', 0, '1557807264camera.png', 1, '1568709110f2.jpg'),
(7, 'Smart Phone & Table', 'smart-phone-and-table', 0, '1557377810mobile.png', 1, '1568709597f4.jpg'),
(8, 'Sport & Outdoor', 'sport-and-Outdoor', 0, '1557807258sports.png', 1, '1568709577f8.jpg'),
(9, 'Jewelry & Watches', 'jewelry-and-watches', 0, '1557807252furniture.png', 1, '1568709077f7.jpg'),
(10, 'Health & Beauty', 'health-and-beauty', 0, '1557807228trends.png', 1, '1568709067f3.jpg'),
(11, 'Books & Office', 'books-and-office', 0, '1557377917bags.png', 1, '1568709050f8.jpg'),
(12, 'Toys & Hobbies', 'toys-and-hobbies', 0, '1557807214sports.png', 1, '1568709042f9.jpg'),
(13, 'Books', 'books', 0, '1557807208bags.png', 1, '1568709037f10.jpg'),
(15, 'Automobiles & Motorcycles', 'automobiles-and-motorcycles', 0, '1568708648motor.car.png', 1, '1568709031f11.jpg'),
(16, 'Home decoration & Appliance', 'Home-decoration-and-Appliance', 0, '1568708757home.png', 1, '1568709027f12.jpg'),
(17, 'Portable & Personal Electronics', 'portable-and-personal-electronics', 0, '1568878538electronic.jpg', 0, NULL),
(18, 'Outdoor, Recreation & Fitness', 'Outdoor-Recreation-and-Fitness', 0, '1568878596home.jpg', 0, NULL),
(19, 'Surveillance Safety & Security', 'Surveillance-Safety-and-Security', 0, NULL, 0, NULL),
(20, 'FESTIVE COLLECTION 20', 'FESTIVE-COLLECTION-20', 1, NULL, 0, NULL),
(21, 'SALE', 'SALE', 1, NULL, 0, NULL),
(22, 'NEW ARRIVALS', 'NEW-ARRIVALS', 1, NULL, 0, NULL),
(23, 'UNSTICHED FABRIC', 'UNSTICHED-FABRIC', 1, NULL, 0, NULL),
(24, 'READY TO WEAR', 'READY-TO-WEAR', 1, NULL, 0, NULL),
(25, 'PANTS', 'PANTS', 1, NULL, 0, NULL),
(26, 'HA', 'sol', 1, '1598534406Cat-1.jpg', 1, '1598534406Cat-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `subcategory_id`, `name`, `slug`, `status`) VALUES
(1, 2, 'LCD TV', 'lcd-tv', 1),
(2, 2, 'LED TV', 'led-tv', 1),
(3, 2, 'Curved TV', 'curved-tv', 1),
(4, 2, 'Plasma TV', 'plasma-tv', 1),
(5, 3, 'Top Freezer', 'top-freezer', 1),
(6, 3, 'Side-by-Side', 'side-by-side', 1),
(7, 3, 'Counter-Depth', 'counter-depth', 1),
(8, 3, 'Mini Fridge', 'mini-fridge', 1),
(9, 4, 'Front Loading', 'front-loading', 1),
(10, 4, 'Top Loading', 'top-loading', 1),
(11, 4, 'Washer Dryer Combo', 'washer-dryer-combo', 1),
(12, 4, 'Laundry Center', 'laundry-center', 1),
(13, 5, 'Central Air', 'central-air', 1),
(14, 5, 'Window Air', 'window-air', 1),
(15, 5, 'Portable Air', 'portable-air', 1),
(16, 5, 'Hybrid Air', 'hybrid-air', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 1178, 0, NULL),
(4, 'browser', 'Linux', 234, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 465, 0, NULL),
(6, 'browser', 'Windows 7', 425, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 539, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 377, 0, NULL),
(11, 'browser', 'Mac OS X', 527, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 3, 0, NULL),
(15, 'browser', 'Windows 8', 2, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 12, 0, NULL),
(18, 'browser', 'iPhone', 13, 0, NULL),
(19, 'referral', 'com.google.android.googlequicksearchbox', 4, 0, NULL),
(20, 'browser', 'Windows Server 2003/XP x64', 1, 0, NULL),
(21, 'referral', 'm.facebook.com', 2, 0, NULL),
(22, 'referral', 'l.instagram.com', 2, 0, NULL),
(23, 'referral', 'baidu.com', 1, 0, NULL),
(24, 'browser', 'Windows 2000', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(4, 'BDT', '৳', 85, 0),
(6, 'EUR', '€', 0.89, 0),
(8, 'INR', '₹', 68.95, 0),
(9, 'NGN', '₦', 363.919, 0),
(10, 'BRL', 'R$', 4.02, 0),
(11, 'PKR', 'Rs', 0.013, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency` blob,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `currency_value` double DEFAULT '0',
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'SECURITY', '<div class=\"panel panel-default\" style=\"color: rgb(55, 55, 55); font-family: Poppins; font-size: 12px;\"><div id=\"faqs-1507879528740\" class=\"panel-collapse collapse show\" style=\"font-size: 14px;\"><div class=\"panel-body\" style=\"position: relative; min-height: 40px; padding: 14px 15px 11px 25px; margin-bottom: 20px; color: rgb(90, 90, 90);\"><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">1. Why is it mandatory to give personal information?</h5><p style=\"margin-bottom: 8px;\">Customer information pertaining to name, card billing details and shipping addresses are necessary to process any electronic transactions via credit/debit cards. These are essential inputs into the fraud detection mechanisms.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">2. Is my personal information kept secured?</h5><p style=\"margin-bottom: 8px;\">All payment and shipping data presented by our clients is kept secure and classified. Only approved personnel have access to this data.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">3. Will I receive online security email every time I place an order with you?</h5><p style=\"margin-bottom: 8px;\">Although, online security is implied for each order and the confirmation procedure is one- time for account information, if you are utilizing a different debit/credit card, your request will be subjected to online security confirmation once more.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">4. What are cookies and why should I know about them?</h5><p style=\"margin-bottom: 8px;\">A cookie is a small text file that is saved to, and, during subsequent visits, retrieved from your computer or mobile device. We use cookies to enhance and simplify your visit. We do not use cookies to store personal information or to disclose information to third parties but rather to store your choice of start page and to store your details. Session cookies are used when you apply product filtration and to check if you are logged in. You can easily erase cookies from your computer or mobile device using your browser.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">5. If my credit/debit card is fraudulently used to make an order, what is the procedure of getting a refund?</h5><p>In case of such a mishap, please call Customer Care at - and they will aid you in rectifying your transaction records and issue a refund. Please note that you may have to divulge personal card information.</p></div></div></div><div class=\"panel panel-default\" style=\"color: rgb(55, 55, 55); font-family: Poppins; font-size: 12px;\"><div class=\"panel-heading\"><h4 class=\"panel-title\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: inherit; line-height: 1.25em; color: inherit; font-size: 17px; padding: 0px;\"><br></h4></div></div>', 1),
(3, 'DELIVERY', '<h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">1. What is the delivery time?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">Local order delivery can take between 2-4 working days, and International delivery can take between 10-15 working days; depending on the size and availability of the product. Orders are processed within 24 hours and are generally scheduled for delivery the following working day. Timely delivery is subject to availability of stocks and payment authorizations. In certain cases, we might request for some form of payment verification or source to process the order.<br><span class=\"fa fa-star\" aria-hidden=\"true\" style=\"font-weight: normal; font-stretch: normal; font-family: FontAwesome; font-size: inherit; color: red;\"></span>During SALE delivery time is upto 15 working days.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">2. Does the price of the order include shipping charges?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">For all local &amp; international orders, shipping charges are mentioned separately as part of the order on the check-out page. Final amount charged will include shipping charges.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">3. How do I check the delivery status?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">On dispatch, you will be provided a Tracking ID for your order through SMS. The SMS sent will be from the courier company delivering your order. You can log on to our Courier Partner’s websites for local and international orders respectively, enter your tracking ID and track your order.&nbsp;<span style=\"color: rgb(51, 102, 255);\"><a href=\"https://callcourier.com.pk/Tracking.html\" style=\"color: rgb(170, 204, 204); touch-action: manipulation; transition: all 0.3s ease 0s; display: inline-block; word-break: break-all; line-height: 15px; border-bottom: 1px solid rgba(170, 204, 204, 0.8);\"><span style=\"color: rgb(51, 102, 255);\">https://callcourier.com.pk/Tracking.html</span></a>&nbsp;</span><span style=\"color: rgb(51, 102, 255);\"><a href=\"http://www.dhl.com.pk/en/express/tracking.html\" style=\"color: rgb(170, 204, 204); touch-action: manipulation; transition: all 0.3s ease 0s; display: inline-block; word-break: break-all; line-height: 15px; border-bottom: 1px solid rgba(170, 204, 204, 0.8);\"><span style=\"color: rgb(51, 102, 255);\">http://www.dhl.com.pk/en/express/tracking.html</span></a>&nbsp;</span></p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">4. What manner of shipping do you use?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">We use TCS and Call Courier for local orders and DHL for international ones.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">5. How many times will the courier agent attempt to deliver my order in case I am unavailable to receive it?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">Our delivery agents make two attempts to deliver a parcel. Kindly ensure that the address, country and area code while placing an order given is accurate. On the second failed attempt, the item(s) will be returned to us.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">6. Can I get the shipping/billing address of an order changed after it has been processed?</h5><p style=\"color: rgb(90, 90, 90); font-family: Poppins;\">It is only possible to change the address of a processed order before it has been dispatched. Please call Customer Care at&nbsp;-&nbsp;and check if your order has been dispatched or not.</p>', 1),
(4, 'PAYMENTS', '<h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">1. What payment options do I have?</h5><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Cash on Delivery (available nationwide)</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Online payment (Visa Debit/Credit, Master Debit/Credit)</li><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">2. Is it safe to use my credit/debit card to make payments?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">All payment information on our website is processed on a fully encrypted and secure platform and kept confidential with only authorized personnel having access to your information.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">3. What are the conditions for Cash on Delivery (COD)?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">To avail COD, please follow these instruction.</p><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">At checkout, select ‘Cash on Delivery’</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Upon the courier’s arrival, check for the original receipt and pay only the amount mentioned on that receipt in cash)</li><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">4. Is Cash on Delivery (COD) available internationally?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">Unfortunately, COD is only available in Pakistan.</p>', 0),
(5, 'ORDER', '<h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">1. How can I place an order?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">Once you have added all your desired items to your shopping cart, follow these instructions:</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">To order as a guest :</h5><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Click on the ‘Shopping Bag’ button and proceed to Checkout</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Enter all your required shipping and billing information</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Click on ‘Confirm Order’ and check your email for a Sales Order Summary</li><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">To order with a Sapphire account :</h5><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Click on the ‘Shopping Bag’ button and proceed to Checkout</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Click on ‘’Continue to Payment Method’ and choose your method</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Click on ‘Complete Order’ and check your email for a Sales Order Summary</li><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">2. What if I don’t get a Sales Order Summary?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">A Sales Order Summary is essentially a soft receipt that should be emailed to you within an hour of placing your order. If you don’t get one in your inbox, check your junk/spam folder and if it still isn’t there, call Customer Service at&nbsp;<a href=\"tel:+9242111738245\" style=\"color: rgb(170, 204, 204); touch-action: manipulation; transition: all 0.3s ease 0s; display: inline-block; word-break: break-all; line-height: 15px; border-bottom: 1px solid rgba(170, 204, 204, 0.8);\">+92(0)42 111-738-245</a>&nbsp;to confirm your order.</p><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\"></p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">3. What if I found any discrepancy in my order/product?</h5><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">First, we’ll try to arrange the same article for you depending upon the availability on the website, otherwise.</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">In case of article unavailability, voucher of paid amount will be issued valid for online store only, which can be used instantly or in the future.</li><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\"></p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">4. Does adding an item to the shopping cart reserve it?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">No, an item will only be reserved for you after you have confirmed your order at checkout.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">5. How will I know that you have received my order?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">The Sales Order Summary emailed to you will act as confirmation that your order has been logged in our record. If you do not get this email, please contact Customer Services at&nbsp;<a href=\"tel:+9242111738245\" style=\"color: rgb(170, 204, 204); touch-action: manipulation; transition: all 0.3s ease 0s; display: inline-block; word-break: break-all; line-height: 15px; border-bottom: 1px solid rgba(170, 204, 204, 0.8);\">+92(0)42 111-738-245</a>.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">6. How can I track my order?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">The ‘Order History’ section on your Dashboard will give you details pertaining to your previous orders as well the status of your current order with regards to the stage of processing.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">7. What different order statuses can I face?</h5><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Payment Pending Authorization: Your order has been logged and we are waiting for authorization from the payment gateway.</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Payment Authorized, Order Processing: Authorization has been received from the payment gateway and your order is being processed.</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Order Shipped: Your order has been shipped by the seller and is on its way.</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Order complete : Shipment received, and transaction completed.</li><li style=\"margin-bottom: 0.25em; color: rgb(90, 90, 90); font-family: Poppins; font-size: 14px;\">Order Cancelled: The order was cancelled.</li><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">8. What are the benefits of ordering through an account?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">Having an account will allow you to save your billing and shipping information for quick checkouts, allow you to view all your previous order history and enable you to subscribe to our weekly newsletter which will keep you up to date with all of our exciting new products and promotions.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">9. What is the difference between Order ID and Tracking ID?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">Your Order ID will be used to identify your order and will be a part of the Order Sales Summary email. Another email will be sent to you once your order has been dispatched with your Tracking ID which will allow you to check the status of your delivery on the courier’s website.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">10. Can I add items or make changes to an existing order?</h5><p style=\"margin-bottom: 8px; color: rgb(90, 90, 90); font-family: Poppins;\">Unfortunately, it is not possible to combine orders or add items to an existing order once the order has been processed.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Poppins; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">11. Can an order be available for store pickup?</h5><p style=\"color: rgb(90, 90, 90); font-family: Poppins;\">Unfortunately, we do not offer store pickups yet.</p>', 0),
(6, 'MY ACCOUNT', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><br></div></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\"><div class=\"panel panel-default\" style=\"color: rgb(55, 55, 55); font-family: Poppins; font-size: 12px; text-align: left;\"><div id=\"faqs-1507878888245\" class=\"panel-collapse collapse show\" style=\"font-size: 14px;\"><div class=\"panel-body\" style=\"position: relative; min-height: 40px; padding: 14px 15px 11px 25px; margin-bottom: 20px; color: rgb(90, 90, 90);\"><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">1. Is an account necessary for placing an order?</h5><p style=\"margin-bottom: 8px;\">Although you can order as a guest, having a Zubash account will enhance your shopping experience by keeping you up to date with newsletters, storing your billing/shipping information and ensuring faster checkouts.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">2. How do I make an account?</h5><p style=\"margin-bottom: 8px;\">To create your very own ZUBASH Online Account, follow these simple instructions:</p><p style=\"margin-bottom: 8px;\"></p><li style=\"margin-bottom: 0.25em;\">Click on the ‘Sign In’ button on the top right-hand corner of the home page</li><li style=\"margin-bottom: 0.25em;\">Click on the ‘Create an Account’ button at the bottom of the screen</li><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">3. What if I forget my password?</h5><p style=\"margin-bottom: 8px;\">In the event of a forgotten password, simply:</p><p style=\"margin-bottom: 8px;\"></p><li style=\"margin-bottom: 0.25em;\">Click on ‘Forgot Password’ on the sign in page</li><li style=\"margin-bottom: 0.25em;\">Enter your email address</li><li style=\"margin-bottom: 0.25em;\">Click on the link sent to you in your email address</li><li style=\"margin-bottom: 0.25em;\">Enter your new password</li><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">4. How can I update/edit my shipping or billing address details?</h5><p style=\"margin-bottom: 8px;\">Go to ‘My Account’ and click on ‘Edit’ at the address tab to enter your new address.</p><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: inherit; line-height: 24px; color: rgb(55, 55, 55); font-size: 14px; padding: 0px 0px 10px; font-weight: bold !important;\">5. Where can I view my order history?</h5><p>Your order history will be available on your Dashboard on your Account page</p></div></div></div><div class=\"panel panel-default\" style=\"color: rgb(55, 55, 55); font-family: Poppins; font-size: 12px; text-align: left;\"><div class=\"panel-heading\"><h4 class=\"panel-title\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: inherit; line-height: 1.25em; color: inherit; font-size: 17px; padding: 0px;\"><br></h4></div></div></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13),
(2, 29, 13);

-- --------------------------------------------------------

--
-- Table structure for table `featured_banners`
--

CREATE TABLE `featured_banners` (
  `id` int(191) NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_banners`
--

INSERT INTO `featured_banners` (`id`, `link`, `photo`) VALUES
(6, 'https://www.google.com/', '1571287040feature1.jpg'),
(7, 'https://www.google.com/', '1571287047feature2.jpg'),
(8, 'https://www.google.com/', '1571287054feature3.jpg'),
(10, 'https://www.google.com/', '1571287106feature4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `featured_links`
--

CREATE TABLE `featured_links` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_links`
--

INSERT INTO `featured_links` (`id`, `name`, `link`, `photo`) VALUES
(12, 'GADGET 1', 'https://www.google.com/', '1571287354flink.png'),
(13, 'GADGET 2', 'https://www.google.com/', '1571287366flink.png'),
(14, 'GADGET 3', 'https://www.google.com/', '1571287383flink.png'),
(15, 'GADGET 4', 'https://www.google.com/', '1571287404flink.png'),
(16, 'GADGET 5', 'https://www.google.com/', '1571287415flink.png'),
(17, 'GADGET 6', 'https://www.google.com/', '1571287427flink.png'),
(18, 'GADGET 7', 'https://www.google.com/', '1571287439flink.png'),
(19, 'GADGET 8', 'https://www.google.com/', '1571287453flink.png'),
(20, 'GADGET 9', 'https://www.google.com/', '1571287481flink.png'),
(21, 'GADGET 10', 'https://www.google.com/', '1571287511flink.png');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(6, 93, '156801646314-min.jpg'),
(7, 93, '156801646315-min.jpg'),
(8, 93, '156801646316-min.jpg'),
(22, 129, '15680254328Ei8T0MB.jpg'),
(23, 129, '1568025432wRmpve8d.jpg'),
(24, 129, '1568025432kkRYzLsF.jpg'),
(25, 129, '1568025432zxQBe6Gk.jpg'),
(26, 128, '1568025537sJbDPnFk.jpg'),
(27, 128, '1568025537NBmHxJOz.jpg'),
(28, 128, '1568025537hxqeFbS8.jpg'),
(29, 128, '1568025538zK3tJpmL.jpg'),
(34, 126, '1568025693kKLReNYO.jpg'),
(35, 126, '1568025694Iv3pkz1q.jpg'),
(36, 126, '1568025694T8HhdLVS.jpg'),
(37, 126, '1568025695vTdg7ndt.jpg'),
(38, 125, '15680257894Waz2tuN.jpg'),
(39, 125, '1568025789vd0P4TBv.jpg'),
(40, 125, '15680257899bih5sGh.jpg'),
(41, 125, '156802578924sLIgzl.jpg'),
(42, 124, '1568025825cC2Pmuit.jpg'),
(43, 124, '1568025825EACzLFld.jpg'),
(44, 124, '1568025825MfCyCqtD.jpg'),
(45, 124, '15680258252yabMeAz.jpg'),
(46, 123, '15680258512fKQla5g.jpg'),
(47, 123, '1568025851pIjl0mWp.jpg'),
(48, 123, '1568025851tQw7JXXG.jpg'),
(49, 123, '1568025851ewjtSDkZ.jpg'),
(50, 96, '1568025891wWAAbOjc.jpg'),
(51, 96, '1568025891fyMNeXRy.jpg'),
(52, 96, '1568025891OdV64Tw1.jpg'),
(53, 96, '1568025891xQF7Zufe.jpg'),
(58, 102, '1568026307THs0VQQU.jpg'),
(59, 102, '1568026307jvCscHth.jpg'),
(60, 102, '1568026307g5xMFdx3.jpg'),
(61, 102, '1568026307Z3at0HEM.jpg'),
(62, 101, '1568026331Y6UMgMcI.jpg'),
(63, 101, '1568026331xZbT4OWG.jpg'),
(64, 101, '1568026331y7eIFJXZ.jpg'),
(65, 101, '1568026331i2wH8RI0.jpg'),
(66, 100, '1568026374xCTjQYZ8.jpg'),
(67, 100, '1568026374DzmvqA9d.jpg'),
(68, 100, '1568026374OEH73u5X.jpg'),
(69, 100, '1568026374vZhqRv8c.jpg'),
(70, 99, '15680264120LdBSU1v.jpg'),
(71, 99, '1568026412eMjsI940.jpg'),
(72, 99, '1568026412GFjvHiZv.jpg'),
(73, 99, '15680264122fwGi20d.jpg'),
(78, 97, '1568026469hSlmBpzE.jpg'),
(79, 97, '15680264697AI8LicQ.jpg'),
(80, 97, '15680264691xyFt5Y6.jpg'),
(81, 97, '1568026469dC3hrMz0.jpg'),
(86, 109, '1568026737EBGSE78G.jpg'),
(87, 109, '1568026737B8hO1RRr.jpg'),
(88, 109, '1568026737tf0rwVoz.jpg'),
(89, 109, '1568026737GGIPSqYo.jpg'),
(95, 107, '1568026797FFNrNPxK.jpg'),
(96, 107, '1568026797UwY9ZLfQ.jpg'),
(97, 107, '1568026797Kl6eZLx5.jpg'),
(98, 107, '1568026797h3R48VaO.jpg'),
(99, 107, '15680267989kXwH40I.jpg'),
(100, 106, '1568026836ErM5FJxg.jpg'),
(101, 106, '1568026836VLrxIk0u.jpg'),
(102, 106, '1568026836lgLuMV6p.jpg'),
(103, 106, '1568026836JBUTQX8v.jpg'),
(104, 105, '1568026861YorsLvUa.jpg'),
(105, 105, '1568026861PikoX1Qb.jpg'),
(106, 105, '1568026861SBJqjw66.jpg'),
(107, 105, '1568026861WYh54Arp.jpg'),
(108, 104, '1568026885rmo0LDoo.jpg'),
(109, 104, '15680268851m939o7O.jpg'),
(110, 104, '1568026885fVXYCGKu.jpg'),
(111, 104, '1568026885GDRL3thY.jpg'),
(112, 103, '1568026903LbVQUxIr.jpg'),
(113, 103, '1568026914IpRVYDV4.jpg'),
(114, 103, '15680269141gKO8x5X.jpg'),
(115, 103, '1568026914Q938xXM2.jpg'),
(116, 93, '1568026950y7ihS4wE.jpg'),
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(172, 130, '1568029084hQT5ZO0j.jpg'),
(173, 130, '1568029084ncGXxQzN.jpg'),
(174, 130, '1568029084b0OonKFy.jpg'),
(175, 130, '15680290857TD4iOWP.jpg'),
(180, 114, '1568029158brS7xQCe.jpg'),
(181, 114, '1568029158QlC0tg5a.jpg'),
(182, 114, '1568029158RrN4AEtQ.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(191, 111, '1568029272lB0JETcn.jpg'),
(192, 111, '1568029272wF3ldKgv.jpg'),
(193, 111, '1568029272NI33ExCu.jpg'),
(194, 111, '15680292724TXrpokz.jpg'),
(197, 134, '15693932021.jpg'),
(198, 134, '15693932022.jpg'),
(199, 135, '15698200931.jpg'),
(200, 183, '1598429336Cat-1.jpg'),
(201, 183, '1598429336Cat-2.jpg'),
(202, 183, '1598429336Cat-3.jpg'),
(203, 183, '1598429336Cat-4.jpg'),
(204, 184, '1598429367Cat-1.jpg'),
(205, 184, '1598429367Cat-2.jpg'),
(206, 184, '1598429367Cat-3.jpg'),
(207, 184, '1598429367Cat-4.jpg'),
(214, 188, '1605176071124172379_367228041058857_4087892678440459570_n.jpg'),
(215, 188, '1605176071124247140_369530650947392_2786792850018747650_n.jpg'),
(216, 188, '1605176071124778383_400298621144878_3682252778073045744_n.jpg'),
(217, 190, '1605268808124274523_718115985578947_138652893499067016_n.jpg'),
(220, 189, '1605269107m7D1XbGV.jpg'),
(221, 191, '1605269411124395873_2705421669724377_4142447312150095431_n.jpg'),
(222, 191, '1605269411124477529_686096295374319_47256230585026033_n.jpg'),
(223, 191, '1605269411124613469_678742849445209_6525017051208667962_n.jpg'),
(224, 191, '1605269411124643330_819244902202223_3227288062991154342_n.jpg'),
(225, 192, '1605269654124172241_807393166760908_8586759874648160051_n.jpg'),
(226, 192, '1605269654124227666_739448940259437_125251982610097411_n.jpg'),
(227, 192, '1605269654124996464_372557894195736_917457381489327992_n.jpg'),
(228, 193, '1605269819124383358_366435244462887_7546679404007568153_n.jpg'),
(229, 193, '1605269819125083554_407584303747204_6201412292146944740_n.jpg'),
(230, 194, '1605270136124276994_2935612123325799_699560017401134392_n(1).jpg'),
(231, 194, '1605270136124368253_897044907714758_2988553724701384538_n(1).jpg'),
(232, 194, '1605270136124392846_427687431966048_1200903782541039782_n.jpg'),
(234, 195, '1605270451124197118_433379904318322_4930937588266980351_n.jpg'),
(235, 195, '1605270451124215587_3482329118523491_1400877612402096054_n.jpg'),
(236, 195, '1605270451124245278_2858971844336227_644255595263105946_n.jpg'),
(237, 195, '1605270451124265047_388498605896387_7809084150560674526_n.jpg'),
(238, 195, '1605270451124267970_353493009273314_5671038667597352473_n.jpg'),
(239, 195, '1605270451124445495_841052573349731_4659663006676436243_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci,
  `header_phone` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `map_key` text COLLATE utf8mb4_unicode_ci,
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `is_contact` tinyint(1) NOT NULL DEFAULT '0',
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_check` tinyint(1) NOT NULL DEFAULT '0',
  `cod_check` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `mail_engine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `add_cart` text COLLATE utf8mb4_unicode_ci,
  `out_stock` text COLLATE utf8mb4_unicode_ci,
  `add_wish` text COLLATE utf8mb4_unicode_ci,
  `already_wish` text COLLATE utf8mb4_unicode_ci,
  `wish_remove` text COLLATE utf8mb4_unicode_ci,
  `add_compare` text COLLATE utf8mb4_unicode_ci,
  `already_compare` text COLLATE utf8mb4_unicode_ci,
  `compare_remove` text COLLATE utf8mb4_unicode_ci,
  `color_change` text COLLATE utf8mb4_unicode_ci,
  `coupon_found` text COLLATE utf8mb4_unicode_ci,
  `no_coupon` text COLLATE utf8mb4_unicode_ci,
  `already_coupon` text COLLATE utf8mb4_unicode_ci,
  `order_title` text COLLATE utf8mb4_unicode_ci,
  `order_text` text COLLATE utf8mb4_unicode_ci,
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int(100) NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `already_cart` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `cod_text` text COLLATE utf8mb4_unicode_ci,
  `paypal_text` text COLLATE utf8mb4_unicode_ci,
  `stripe_text` text COLLATE utf8mb4_unicode_ci,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT '0',
  `is_paystack` tinyint(1) NOT NULL DEFAULT '0',
  `paystack_key` text COLLATE utf8mb4_unicode_ci,
  `paystack_email` text COLLATE utf8mb4_unicode_ci,
  `paystack_text` text COLLATE utf8mb4_unicode_ci,
  `wholesell` int(191) NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_title` text COLLATE utf8mb4_unicode_ci,
  `popup_text` text COLLATE utf8mb4_unicode_ci,
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT '0',
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci,
  `paypal_client_secret` text COLLATE utf8mb4_unicode_ci,
  `paypal_sandbox_check` tinyint(2) DEFAULT '2',
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci,
  `paytm_website` text COLLATE utf8mb4_unicode_ci,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci,
  `is_paytm` int(11) NOT NULL DEFAULT '1',
  `paytm_text` text COLLATE utf8mb4_unicode_ci,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT '0',
  `molly_key` text COLLATE utf8mb4_unicode_ci,
  `molly_text` text COLLATE utf8mb4_unicode_ci,
  `is_razorpay` int(11) NOT NULL DEFAULT '1',
  `razorpay_key` text COLLATE utf8mb4_unicode_ci,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `maintain_text` text COLLATE utf8mb4_unicode_ci,
  `is_authorize` tinyint(4) NOT NULL,
  `authorize_login_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_txn_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_mode` enum('PRODUCTION','SANDBOX') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mercado` tinyint(4) NOT NULL,
  `mercado_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercado_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercadopago_sandbox_check` tinyint(1) NOT NULL DEFAULT '1',
  `is_buy_now` tinyint(4) NOT NULL,
  `is_flutter` tinyint(4) NOT NULL DEFAULT '1',
  `flutter_public_key` text COLLATE utf8mb4_unicode_ci,
  `flutter_text` text COLLATE utf8mb4_unicode_ci,
  `flutter_secret` text COLLATE utf8mb4_unicode_ci,
  `is_twocheckout` tinyint(1) NOT NULL DEFAULT '1',
  `twocheckout_private_key` text COLLATE utf8mb4_unicode_ci,
  `twocheckout_seller_id` text COLLATE utf8mb4_unicode_ci,
  `twocheckout_public_key` text COLLATE utf8mb4_unicode_ci,
  `twocheckout_sandbox_check` tinyint(1) NOT NULL DEFAULT '1',
  `twocheckout_text` text COLLATE utf8mb4_unicode_ci,
  `is_ssl` tinyint(1) NOT NULL DEFAULT '1',
  `ssl_sandbox_check` tinyint(1) NOT NULL DEFAULT '1',
  `ssl_store_id` text COLLATE utf8mb4_unicode_ci,
  `ssl_store_password` text COLLATE utf8mb4_unicode_ci,
  `ssl_text` text COLLATE utf8mb4_unicode_ci,
  `is_voguepay` tinyint(1) NOT NULL DEFAULT '1',
  `vougepay_merchant_id` text COLLATE utf8mb4_unicode_ci,
  `vougepay_developer_code` text COLLATE utf8mb4_unicode_ci,
  `voguepay_text` text COLLATE utf8mb4_unicode_ci,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `mail_engine`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_client_id`, `paypal_client_secret`, `paypal_sandbox_check`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`, `is_authorize`, `authorize_login_id`, `authorize_txn_key`, `authorize_text`, `authorize_mode`, `is_mercado`, `mercado_token`, `mercado_text`, `mercadopago_sandbox_check`, `is_buy_now`, `is_flutter`, `flutter_public_key`, `flutter_text`, `flutter_secret`, `is_twocheckout`, `twocheckout_private_key`, `twocheckout_seller_id`, `twocheckout_public_key`, `twocheckout_sandbox_check`, `twocheckout_text`, `is_ssl`, `ssl_sandbox_check`, `ssl_store_id`, `ssl_store_password`, `ssl_text`, `is_voguepay`, `vougepay_merchant_id`, `vougepay_developer_code`, `voguepay_text`, `version`, `affilate_product`) VALUES
(1, '1598270925logo.png', '1571567283favicon.png', 'Zubash - Be Unique', 'Info@example.com', '0123 456789', 'Zubash is a contemporary clothing brand known for its trend-driven styles at affordable prices.', 'COPYRIGHT © 2020. All Rights Reserved | Powered by <a href=\"https://ivylabtech.com\" title=\"\" target=\"_blank\">IvyLab Technologies</a>', '#eaba2f', '1564224328loading3.gif', '1564224329loading3.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 1, 1, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 0, 5, 5, 0, 5, 'smtp', NULL, NULL, NULL, NULL, 'geniustest11@gmail.com', 'GeniusTest', 1, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 0, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 5, 5, 1, 1, 1, 0, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#000000', '#02020c', 1, '#ff5500', '#02020c', 0, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 1, 1, 1, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 1, '1566878455404.png', 1, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1578998786adv-banner.jpg', '1598270938logo.png', '1567655174profile.jpg', '#666666', 0, 1, 1, 'AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi', 'EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE', 1, '1598270935logo.png', NULL, 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 1, 'Pay via your Paytm account.', 'sandbox', 1, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 1, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 1, '76zu9VgUSxrJ', '2Vj62a6skSrP5U3X', 'Pay Via Authorize.Net', 'SANDBOX', 1, 'TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156', 'Pay Via MarcadoPago', 1, 1, 1, 'FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X', 'Pay via your Flutter Wave account.', 'FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X', 1, '9668BB2D-C246-4175-8F5B-CB72F655097B', '901417869', '2C2879C4-9F81-47D5-89F3-863F4CF0E7A3', 1, 'Pay Via 2Checkout', 1, 1, 'geniu5e1b00621f81e', 'geniu5e1b00621f81e@ssl', 'Pay Via SSLCommerz', 1, 'demo', '5a61be72ab323', 'Pay Via Voguepay', '2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(11, 1, 'English', '1598342613qC8n9kUk.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(7, NULL, 29, NULL, NULL, NULL, 1, '2020-08-12 23:47:00', '2020-08-12 23:54:23'),
(8, 8, NULL, NULL, NULL, NULL, 1, '2020-08-12 23:50:08', '2020-08-12 23:54:21'),
(9, NULL, 30, NULL, NULL, NULL, 1, '2020-08-26 04:45:22', '2020-11-03 15:46:34'),
(10, 9, NULL, NULL, NULL, NULL, 1, '2020-08-26 04:51:28', '2020-11-03 15:46:32'),
(11, NULL, 31, NULL, NULL, NULL, 1, '2020-08-27 07:33:04', '2020-11-03 15:46:34'),
(12, 10, NULL, NULL, NULL, NULL, 1, '2020-08-27 07:37:34', '2020-11-03 15:46:32'),
(13, 11, NULL, NULL, NULL, NULL, 1, '2020-11-18 20:35:02', '2020-11-19 15:34:57'),
(14, 12, NULL, NULL, NULL, NULL, 1, '2020-11-18 20:42:17', '2020-11-19 15:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT '0',
  `vendor_packing_id` int(191) NOT NULL DEFAULT '0',
  `wallet_price` double NOT NULL DEFAULT '0',
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`) VALUES
(8, 29, 'BZh91AY&SYp\'D\0ßP\0Xø;Kü¿ÿÿú`=÷ ªI¬@(¡iÀÀ\0&\0`LQLõ#M¨\0\Z4\0d\09¦&\0\0\0\0\0	$©¨2h£@È\04ÓA \Zb`00\0	\0$DCBÑ¡M=0Ñê4ñL&=K@¦p)lì2¹Ay\0((Ìz|p±rFK^cåäEÝdÌd£*)#ëX\rñ»©LëRo©³¡ë;¦\"-ÂU±)Ç_¾8æû§©RX82¿\"ì\n|¶ð\'.7gF\\ç8±A\"S¤úqìÅ°ÐfòrCÐ©S®p3¼¨v¡¯r& ¹	fPU§\\p½a¸\rÆóÖ[¸ï ¦\"¤a°Ð\ZÁ¦4ÐÑ¥0×B¬Ø\\ae*	+±#.Ø.Sª¡¤P°\nªWd»%è×½2°ah´ß¨ÔI\\®BA4èü9ÆI¤A©£Á)ª\"Ö¦4U´âm	i²¢fB¹$.XÚI\n\n¢%\nèQGJtZ³jAKÅØ¹twJkÞÕ7	GK#Þ]³YæñMÁAÙÄ°2ºµ¨bª«Ü¾zúæP\0m!°èÔ¸\Z¨ª F9!7 DbÁ!(¢\"cÚm{45k@ ÐlÁ¦Ì)R´/fG/²í³Ó9ÖFScBÔÛFL²X8ê Ø¡¦ÔÎkÄI¥ôg/tw«g2ÄÅÑÕÐzNsø(÷£ýÓPwà^<ÍEW)ÉpÔWAøQÔ­ðfãâìÒ³Lb¾´@@Pñ4Ïû ÉÚsÄøé¢9z÷Ô¢pn3Ml7¬ñ*r,Æ¼GxÅSô×DN²\0Öw³C-@Ñö©ÐÇt±2`ÐØ²Ü|Ob3Ì90=¦Ãqlt	U+#Ú2F.ÿ`ÉæãîüÝ4Å`¬PeímH°Á\\ò$g°ÞdXi\nI$p^u#;	.¾¸¬g¹^nÙ÷O7)Ó÷6ÀçAÀñ²?tßÌieMË¦I(~!7.\ZÑpµñ^\0ÏUîUÎbiç¹&uÞ»À57ÐÞ~$zITk<¯[¢=IYýÃ\0Ñú9W³+m7Ö8q:u¡P-j¸z¢$ÖòºU`¨PIÀÂ©Ë6³,@T*X¤p,V¹Zs=èÉ\r2õ?Á=+\r3ö1F>;c°æ,\ZÂûìp;\\[l,I\'ækÎÊ-ÐqLÞEõÏe05ÞÒÈeaJ²\n¡¥s\r±Î|û:-ÔÎ~äz¼ Já°\"Æ0B+D	j,Ú¡´ÈçÏ]ÉpWak\Z\"á(Ä¡½NI38ðp*¦ñ:\rMÌ0M#5±@Æ@XÈÊyb§HP\n¬C¨|R3kµz°/ ÏAZ¤¸%EE\\9J|ÇÍ¼2e ±¸Iz!EÒÙDtlzÈYÎ8o£Á\n2P%?âîH§\nó', 'Cash On Delivery', 'shipto', 'Azampur', '2', 260, NULL, NULL, 'brlv1597294208', 'Pending', 'Hashimlokasher@gmail.com', 'Hashim Naseer Lokasher', 'Pakistan', '03216267061', 'Lokasher Street', 'Hafizabad', '52110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-12 23:50:08', '2020-08-12 23:50:08', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Punjab', NULL),
(9, 30, 'BZh91AY&SY&´\'\0®_P\0Xwø?Ïÿ.¿ÿÿú`ß>\n¨BªA@\0 (ÆL12`\04a2dÉÄÀ	È£ÀÀq&LF&\0L&@\rF\02b10dÁ2\0hÂ00ÔÒPh44@\0\0=@\0\nRÐÑ ÐÐa4G¤ÓÓ)½&L¦¢:ö}¬u­WÅ«EþVQ+ù|I¼Á?Á¸âa÷V  ÀüÆÜl?¥Í\Zy°h.Þ´ä3i$0Ø(;Â°taú¶lØ§«°upÓ¡Ocû0v6ràz¼8iº=­Û¡·\ZvÿâF»o3Ê¹Î£®ä¹¬]mMcµt\\üÿnçCöMNë±Úî|çs;NÛ3õ:¯Àð0Ãaç>¬ôSr^ó$Ã&$a20É+õ&,2«°Ôñ~ç¸Sc°é0Âaç:.§[Êõ4zZ»Øx6pnnx·¾pú.÷rÿo§ëgînQß}MCWï>ÔÆNZã\Z´Ôµ¢ènÒ`Zí8c°ñ|GÀkgöd@7¹\";¹\rõ;ZFì¸uoÆ`^E¬\0»okuÃÔ\". ;w¯¬¦°Õy1s0ÐrZJèÆÜ0A²#T<)ÔC@\Z)¦ f·L;8:Ò<£´<ñå2EÈDh#(zÀ9J)R ÅÀ`6ug«wfßZèÈxÁ\"æeÍ\r)JÛ=×d5rÇ#wg!s(ÃBFN[6lððö\rwpN\ng\"±À=L°ÃÒ0öô¹lº9¶HÃuÆÖémsº	À+ÔÝÒ¹àq1Í¿K-mnwCüºMN&Ccq±¡SCqÄÞj9G3|º±²àÛ£Fl³t#ÃNÝ¹:x8vÜ67BíÅÎS@ðÐ¤.éáº\nlÙ°7xtáÈð!@ÀpÙ:v`,ááÙa/ êò5*Ë*eË(É,ÓAß\nX1Zh)Æ Ø)ºåy5Z­GÌ2Ñµ¤fZK  ¢0 Â0Â1 Ü5°¶,IBË¶*ì;nÞËµu]zQpJ·bþæì°ÚÖÑ¦xp<8\r9lpÛ¦=Í¹ÐÝ»§][\\´,/A·\rnZ6ÅF.G.Ð0Í0Æí\Zp¼;vððèô°tð\\Ý¸Ê·xiÛ7pìHóÐÓñh}ãàÐö?òþ§Ðn;^sÚ|\\×kÁø¹/±Ò}ä8?ãµÉÿF§óàãiÿoCÈ~Osïw¸¾q8ýæ^$ë\'Ú¿eØ·QîW±÷>>¦<1q°&m6Öò\Z®cô0kk~&%«Gñ_y¦ËG\Zkço§à·/9þÇþ¢¿ÇQ¡ÒycSKÐ}ë·F§ryVå×Seç«Ð2û.-§I¡ò?©´½ÎÑ²ØÇYÁÍÛ`ÝUé°^C	¼ë<u­ép=trAÑlh4«,3V<²ãqkyé:Ï!¾ê¡iq0ëmiaÐp{ëst¾SÒw-M[\r%¥ÀÅ­àrÓ±Ëàz7s¸0rd0(h2i¹øX®K,²¶G+q<WÖvc¹daÍ-MV¦hqµº$äað:Çü_ÏY8¡¸Í;º,·Øn:në[©5©¾ð»Ï¾ÿFWÈö-ºûZG¦ñ:¯IÑeÂò\Z,Ý§¶Ün7ûF·#üå`ØËÂÜyÙzãöæ2Ë2$ú^7#Õ,2«Aa2ôÃ*ÃÚ{ïE¼ÿGuê.Óúåêq<Ç¼ê49ÛÝ±µn²ºîår·ÜªÜb~§µu¯ÕÍåìtÚ²Åñh±=ë:n7sü-\Z§ï-÷ï1|.×°ÐÁÊÒjùÌn6¸k#®Ôä0q·I­©Ö.¨Ñr56¼/­mËcYr«û°ÛWtí.Ø04áæ×ÈºO52Ð¶WLoSæ\ZèuËËzQÂôIÓ,¬8[È÷ß¡­ã­ì8¯âdr¿Ýi{¬uy¾-NÃÐ[Ål5¿3¼øok2Ã,L\'Eó7Öé¸Cuõ®ÒÃF§ó|­]fçc¼Òávç¢ÚóZK)õeGQëJÖj9«[9¬4Õ\'¼Éq<\r\r¼ÚOeÂý·¶áy,=±ä>¿ÂÞQ\'ÆÀ¥`X±°ÉeSEËFUM2K$Á3+å:m×hNvµn¼²zÑö­îë8ÜNÃ©c*5MnI±6«¸ÒÒ<\'C¥=·ºeÇÂ¶Tè:6íF(Ùz´H4QÀè:6½6óÜØÜseÆuz¥¸ØqM¿?\\åvlX±ÿ°åsºO$»Á¥FÒ´¸Ç|´º^sjÜË¾î>ÃÁonO#W¡¼p¯¥Øu«k/!¡VÌ:\r[\ZG¡jº,Ø`Ý~óä¾·ô}/t§ÒûÐ`Ø\'¶øÕ#\0ÐÁdÿÅÜN$	­%À', 'Cash On Delivery', 'shipto', 'Azampur', '3', 517948000, NULL, NULL, 'nlRC1598435488', 'Pending', 'mariam.kiran@ivylabtech.com', 'abcd', 'Pakistan', '0308-4134467', 'abcd', 'Lahore', '61308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-26 04:51:28', '2020-08-26 04:51:28', NULL, NULL, 'Rs', 0.013, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(10, 31, 'BZh91AY&SYÀõ·\0/ßp\0Xø/þ¿ïÿú`_(D \0\00	¦2\0	`\0\0%#&éP=F\0\0\0\0\0À&È`\0&	\0ÌiL\0`\0\0À&È`\0&	\0\0@A4Ñ¤ÊOSÔõ?J3ÔÔ~¨õOÔÊP3.	 ô=OÌ7Ø¼úÂ\0bô°ÏTAoØú},\\¡QÖ£×°ºÉû(/ù0ÿjÀTÖ±Dôú³oS[V(o\r¢ÆµzApvù+4¼l6 P6ó¿¨fÍõ9x=13ó\'¸äÇxDÈÚq7ÍÆÍc<Ô>\rÔ¡ìA°q§!Ê2LNBBp¯ô6&%Ä¹¦$/<áeÜ÷JCy\0°5©DÄP41cYP«<ÍÄ%PIDcw\\11$#\0¡ g\njb¬+­¦	´\rÅq)P°èª06ÐtH/YX\\ö/xÒ¸Uag3}ÌdVZaAÔJ6ÊÒf¼\r%©g3lfA%\n2äT¹bC2HT*µ ¡L*ÈºÂ©Ò+{Â¸IfEVÖ^ÀèÉ4k;$jªö¥f8°H&Up*QÔµ¨bª«íH]kì)HO  i\rHõjFÚ!¡´J¢$lkMÂ\Z	 MRÁ166=¦ç³i¦°²I\0zfÉ\ZVÔqèZªI+±cW¬9u0½f/2ñ<e!áRE©JÈ W´ÂÔ/æ4&Ti%Ú³Ã¡\nTT¬ß°Ü9É¡¼¡î11>`/Ã¨~§ég¡S1è?ÒÄ¼Uý¸ù;5ah/0Ô@0¡ü\'pÏò&DfÖvù§Qj)<qPdS b\\~EbXKV£[ÜJ5©cÏm:Ø\Z7=skðX0\Z\rÈ½Ãª§C3a!m4	Yjjdd1qGÝø®îïÃ®1°Ê%J6jâ­ÎÃõ>ÆÓ¡S¡5	\n&s°´àI°2æ#Ø3xò|ê_ªÛ·ôýÆ·t¨Bìæ0ÏWfm\\ä@Ú\"gµä¼Áä6!.ûcHFC;ÎáÒäv¨ÖXÞ·EzÁpªë»¸®á³«zîÃ7N]ÇC§hÆB.µ¥ÅBÕDI9­äñ2lPû]d ©#(©£7±.@T*àâ\"Õ¬ÿ¦ÕÖÃ¸Zö£¡¢\n.ö\'Áca¦`~CXùõG§3t.\rÇ ¡õ#ÿÈ^\r¶ øéTQ£`w#bÞI¶Fóª»¡\r|\ZY¬)È\'<BÜ4°8A¾ Àå§;tg>¥úøz¾0á\r&ÒÐ `6I(h4&ÕÎ§~Ì¡àpª»XØBÜI80\"Ä©9ïÁÓ±h}¡ÞmÒq2ÉdÖÕ\0XÌÎyEKLÖcÑ(A_\0?¯°gqZ°>åN%Rû(®©äí\'Ì|¸ÌFuu7ÚÑ75àe>\'¿¢° òòüÅ/þ.äp¡!ëo', 'Cash On Delivery', 'shipto', 'Azampur', '6', 3761540, NULL, NULL, 'RoyV1598531854', 'Pending', 'bitf13m534@gmail.com', 'abcd', 'Pakistan', '03084134467', 'abcd', 'Lahore', '61308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-08-27 07:37:34', '2020-08-27 07:37:34', NULL, NULL, 'Rs', 0.013, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'punjab', NULL),
(11, NULL, 'BZh91AY&SYVNñ\0jßP\0Xø;ÿ¿ïÿú`\r_>!@\n\0\n\"EH\"s\0	Â``s\0	Â``s\0	Â``s\0	Â``&©\"#À\n3Hy Ú 4dÐÈ¥h¤ÉOÕ<¦ÉShÒ=FÔz§z¥¥E÷÷/ê_a}åùû¥ÿeÿEïn¯Ô·¤üKÕ?ÖÔüiøNÍ£sÙWq]§fffffo3cÓ\rå;&jp¦¦SS¶p+~ÉÞk)©ÒwL§\"Õt[zán´[£.Wl¶GUºÝhº¯ÍlÐ».-VÑk[¼Öµ.õà[­ëð/è¹t~ÏÑû5yqzÁó±ñ|_Ò_ä^K±Ò)½5=GªD\\)î¡ìZ9wþ|¥x¾òx°¼>bù¹î/¹/Q|¥ÏÕÛ»Ã¯ë¶m®ûúÞ^%ê]ÂÔ¼p¶_Q}~g{³²¸/¥§ÊYÞFD{YàZÔ¯«Z»líÑp±t\\.ºê´_[ó/[£ìlÑÏÐ^ê¸pÆ4@ê³$jÕ§\ZµiÙZ´¾f/s/àÄGbìZ+ÖYEç`;ÕÂõ±VzW¥zW¡m[¬­OÐ´-âÚy×\Z,uew«Jà´ZL,zÕjÉ2W:iMÒdÔç7§*|­NâÍøZbåóïb­»Ü-Uw¦-+dw­[x>Ö®wo.ö]Øº0Z.²ÐF,RÅÁh´Z­V9]¡jôå£ógEÜÂÆØ°fÛªÙkÛybÕ»R÷­øï×È±;++(Ålº-V«QÙz_RôíµÕÎµÔ°-*Ñnº­«R÷6õw-æN\"2º.V«UÐc-_j·2Vü&M¦ÓÚ·ºCF£G3¹£Æ´v\Z¡¡o.å±l]Ü#gDånZ-«¢àX¹[®VµÉrÉetZ®W:.È¸FÈÑ.Wdb4Z­V¢Ùp¹[­Èár,ËTlºBÞ¶XÄÍëTtGµuFèÝ{HøT±úÑå[R­+BÐVÈ1b¤Ùj}øS&ú656ÒBÒZØ±H°[âM$b,,F)­j-K-am4E ²a¼ïÇ·B\\äÛ1R>óÁ7­K¢×ªÝn[-«ÂÖ½×eädÚx¦ôÚm8Î<çdçMÒî,.åÜ¸·f«¸º­Ö¥ÕtZ¹u]U±p±\ZbÉÊèZ®Dt[Wrêº®«q]bÙar¹jåËî«Óª;Ë¢Ó»:úîªtÎsFÔäÃÝÏ¤û\rrï}î÷Øü\\×Üáö»ëý¥Éý¾«ùW¤¿¯Eü\Z|_Ì½¯]lè^züw÷hãúV/Q}KEÕ(ê¾EîµbábN,JêsSÙOóÜ®\'ñÓáOuägâe=GÛM^	ÞVÔC¸óxÏÌæxåljy|gåN\'¦ep>tzKÍX¸/üKØWg{°¹^ÂÅîzÉyÎµÎX^5Á|W¡Ê§<ó*3×NGò\'mN«Püçº§®¤ºs$ÈdÀÊ|iýiåSç9ÔyÎãÆq	¹x,-Eªæ¶Z,®n_!u/Ãje;éþi¨Ò>)´ã=KE¢ÅÑ|à¶]UÅlX\\%És\\,XG%-Hår÷SÖv©á0á22Vé[Sc4~W)¼í5%ÌÃè6:å}0åMÚaÞdå2z\'²xfó°­§óÏ!øO¼Äë§}=¦i©òµ+Ë=tÕå+²dêO¬§÷ÞÀÜâ{jx­çC{ËNÃ)ò´xO}=ôÔ{îµ¢è¼ò^ô}N_a~òÿ*>ìf4ÆÌf@Ú½1ad«@¿³q}rXyÏ¦{gQ÷[ÏeOL=æ=ç3é¦ÆJí©±²o1;\'9Õ8N¨s©ÀÑø¦ñ´ê©ß\nóJöÓ&¡{«íp¼KÏGä´-KJN½|kàø¯öÖê´Zøµj¹UñZ2º-Õh¼í«eàFÓçe©ÔlqÎVææ©±¶§-S-Í¥jhÉ´Ã²´Êq2§mÆ8É}!¹ItÈý-ïÚ§ÈîñÏM+ºrE10ý)×GØ]kç_µl¾v]¯¾¹Sî©ÒdñJÔöMSÓxAÅ+GóÔü)þS×LL²dÊp>4õÅ÷Wþ2ä[âËyyÅë|ñv/5n-Ktaz«EÊð¯UzÖËÒ»5B?µep´ªÅ5:z.ÃFÒµOqusFMg¦vÏ|ñN©íOLã|	|cK%V\\ÃRYLLL11STÉ2dTÌµ2K#¬ÄþWÂq=S²y¦¡Âx¤½®½Ç\nf´ÔSF§Q[C¹©©^i^\rÏTòÌ×q§é|-MæNöó²m9Ý\'DÂWjw¦,-Åv®Ú¯bÑo_úqqZd}MË¸]áX½ñs[+´^eÿ4?Eè,/jýÞgÏ]zñ¯Ox´ø0[£th»#áþ_Ù~õæ^ºÒ½,#Ø^ÂÂÂÙ[meLW¦aVó¡£%uÓ®§_Yã<ú§Ízá_¼¾¨¬1-LÕ_ü]ÉáBAZy;Ä', 'Cash On Delivery', 'shipto', 'Azampur', '400', 6231.54, NULL, NULL, 'bbge1605710102', 'Pending', 'abrarmalik1215@gmail.com', 'abrar', 'Pakistan', '03153853335', 'G-08 ALI TRADE CENTER MM ALAM ROAD GULBERG LAHORE', 'LAHORE', '54000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-11-18 20:35:02', '2020-11-18 20:35:02', NULL, NULL, 'Rs', 0.013, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'PAKISTAN', NULL),
(12, NULL, 'BZh91AY&SY¯<,%\0OßP\0Xø+ö¿ïÿú`ÿ|\0P¥(\n(\0æ\0	\0\0\0\0\0s\0À\0L\0\0\0\09`\0&\0\0\0\0À0\0\0\0\0\0I\"dSÚPidI§© Ñ£M2RA	Ñ&Å\Z#ô¦ix¡¦õ.\rÇâ~Ôü?ö?±sõ?ìr¢\rãâ«øh?6ðý\ZlàÜÞÆÐ7®Nj¸³NLlsIE^EdÊòsa¢ÎNª7.ÕFVa\Z¶taÝVnÿÅ4SEËÌ§y¡ys©fÓ©ØjÑÿîÓc±ìø>G£Í«csÍIØTMÎG\"ÜùåOc¡Ô£µæy¼ÎóCÀò>>µ]G÷Qsæd0ûÍÿ¨±^Dz7-$99-&p­rZË¿S\'©ÐËæú)K!5wª}êjjY;4JIS]º±2©gGîX³3HÙ¹fJOcð,ÒR¥JG¡i9-e8a»s&¯bÓZ6¤µ&åT\npË	Â®åÁ¡Â(PÑe×jýÎ¥ÏÕ¢lÔÁ­bAý)vÂªn£Ìì56)IJ\Z´]uÛ(èQy2PeH²ì°¹m1Øzk\rU	SV«®ÒJ)W±bâÁO­¦ÛcfÝ&éÝ/,KÔ`ÁÆ©³	K,Ñ«AMl¼ØÙ0Â*j»fÖjÑ°Ñ0L6hÂRYu×hÙI£aC¦\ZJÌºj4bnL¼Ié5íwÛJ) JB#\n¡ib·,üê.R²ÒÌZTbYbÑr©h^Ã4ñ((¤¤%%ÊP(°#Þ7ÃI,8D Gç*Gc.l³z)±6h¼îÌáÞ¥Ýì]£NÜ#E§\"J91¥ÜÙ\\ÝªÆXÉ»Rê0h¡fÍe]¢ë&¬NMÛ·hNQ²Í[·gdäÃe_\'6ZZæ±QïØõ</;giì@{áþ±Ðé¬µS¶ju/Ù¬§ÔûÖrN©³ÁG¸~jh¤)EVË>ãÂB^LÏtî>§s/ÞQù=FD1.\Zy_£Ú÷j|¡³GÖgfy\r3Ý\'ÒSC±ødáÚó)ælþE=çl¨ý%¡ÚQÖdù;ÐØiê ïyÖxNNUþZN£âR¤å6R)©~\'ø<¡Ãôk=gYá4v0uQqvÓ*h\'¹ØT¹GiúKBÊ}%hø,¦ªjñ|XjÝ¤ÁFÆÆÓE(¥.M&³ó>3¤Üî2¢1Ð\rN%-ÖÎ´âÎTìÝOVg\'kr]£Üð³ÿ¥FÇiêdø©=ÏIÑî(íJ>V%ægÄv°Þaäq(þ«NÉô>YM	Ú÷§à}£~p¨;^ DJ\0í!:3ò|\ZÏîÃà;EOFgùÎ\'È¼¤è//TspÕ¨àfZ}¦#	v£µÉ>%(îzMu;$û,YRL=_tûÏ)bU?1.Ô.¤æ¸Ô5etbaÍ7x)¤´Ên//fÖ1.ZRêKÃFÅ¢hïKCw(î?¬è¹æNQÄ**}A¼÷¾Ódáª§ö#òîK=ëgÌKN³ÌéOõ=%òR£3ð=æ¬êæÕR=¢´79ÌJ<%:O	âÃ½Âð±?%MP³£KM[Åâi¦zqxÌi¨ÀÖ@ä3*îÄ ¤dÜF11	 \n´A`Ä÷¶f{Ük#.ä¤Ê|æFË ´³Y.æ%O4ëiÄöy)iJScß:7]«fÑR\'Ò-(¢É¤âqwÌÏìdi.p8pÖa75\'Ð~ÔWiGÕë6pé>	<Å¢0K5O8Yå}¥<ÝòÓ±Dñ<J(Âf8£ÔE)ÉÐÓ\0À13K1îcQÆ#â(ìØóB\"Añw$S	\nóÂÂP', 'Cash On Delivery', 'shipto', 'Azampur', '121', 3363.85, NULL, NULL, 'LwVK1605710537', 'Pending', 'abrarmalik1215@gmail.com', 'abrar', 'Pakistan', '03212499337', 'G-08 ALI TRADE CENTER MM ALAM ROAD GULBERG LAHORE', 'LAHORE', '54000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2020-11-18 20:42:17', '2020-11-18 20:42:17', NULL, NULL, 'Rs', 0.013, 0.13, 0.2, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'PAKISTAN', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(7, 8, 'Pending', 'You have successfully placed your order.', '2020-08-12 23:50:08', '2020-08-12 23:50:08'),
(8, 9, 'Pending', 'You have successfully placed your order.', '2020-08-26 04:51:28', '2020-08-26 04:51:28'),
(9, 10, 'Pending', 'You have successfully placed your order.', '2020-08-27 07:37:34', '2020-08-27 07:37:34'),
(10, 11, 'Pending', 'You have successfully placed your order.', '2020-11-18 20:35:02', '2020-11-18 20:35:02'),
(11, 12, 'Pending', 'You have successfully placed your order.', '2020-11-18 20:42:17', '2020-11-18 20:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, 1, 1),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus animi cupiditate et velit minus esse temporibus. Voluptatum vel placeat corporis, alias ipsam adipisci pariatur saepe, deserunt inventore. Inventore, eum, totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est amet, optio ipsa, ducimus quasi vitae aut error dolorum commodi perferendis ipsam, dolore iste aliquam odit a natus veniam nisi iusto!</p><ul><li>To fill, process and ship your orders</li>\r\n        <li>Contacting you for customer service and support</li>\r\n        <li>Informing you of promotional offers</li>\r\n        <li>Your browsing experience of the BeechTree website</li>\r\n        <li>Your browsing experience of the BeechTree website</li>\r\n    </ul>\r\n    <p><br></p>\r\n    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex enim sequi commodi dolorum reprehenderit sed et earum omnis iure! Unde quisquam, expedita nulla voluptates dignissimos fugit neque nobis et ex.<br></p>\r\n</div>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 15px; line-height: 22px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; background-color: rgb(251, 251, 251);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia, vel, ea. Cumque tempora corporis odio, mollitia adipisci nesciunt cupiditate explicabo. Officia facere pariatur, ipsum eius, ullam quaerat minus aliquam laboriosam?</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 15px; line-height: 22px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; background-color: rgb(251, 251, 251);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus qui consectetur esse expedita voluptatibus praesentium impedit optio iure adipisci numquam nulla aspernatur et fuga atque labore nam deserunt, officia? Numquam!</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 15px; line-height: 22px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; background-color: rgb(251, 251, 251);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis ea consectetur, non doloremque facere voluptas aut voluptates odit eius cum beatae, modi quos possimus, et repellat nostrum quam cumque quia! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus beatae ullam quos minima, maiores maxime vel laborum accusamus. Possimus voluptatum velit optio cumque qui id at repellendus quae? Dolor, tempora.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 15px; line-height: 22px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; background-color: rgb(251, 251, 251);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis ea consectetur, non doloremque facere voluptas aut voluptates odit eius cum beatae, modi quos possimus, et repellat nostrum quam cumque quia! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus beatae ullam quos minima, maiores maxime vel laborum accusamus. Possimus voluptatum velit optio cumque qui id at repellendus quae? Dolor, tempora. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat vitae placeat sequi, nesciunt soluta. Reiciendis, porro quibusdam, voluptatem dolorum corporis magni cumque earum, perspiciatis esse nam, rerum commodi laudantium quia.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; font-size: 15px; line-height: 22px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; background-color: rgb(251, 251, 251);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis ea consectetur, non doloremque facere voluptas aut voluptates odit eius cum beatae, modi quos possimus, et repellat nostrum quam cumque quia! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus beatae ullam quos minima, maiores maxime vel laborum accusamus. Possimus voluptatum velit optio cumque qui id at repellendus quae? Dolor, tempora.</p></div>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci,
  `contact_text` text COLLATE utf8mb4_unicode_ci,
  `side_title` text COLLATE utf8mb4_unicode_ci,
  `side_text` text COLLATE utf8mb4_unicode_ci,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `slider` tinyint(1) NOT NULL DEFAULT '1',
  `service` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `small_banner` tinyint(1) NOT NULL DEFAULT '1',
  `best` tinyint(1) NOT NULL DEFAULT '1',
  `top_rated` tinyint(1) NOT NULL DEFAULT '1',
  `large_banner` tinyint(1) NOT NULL DEFAULT '1',
  `big` tinyint(1) NOT NULL DEFAULT '1',
  `hot_sale` tinyint(1) NOT NULL DEFAULT '1',
  `partners` tinyint(1) NOT NULL DEFAULT '0',
  `review_blog` tinyint(1) NOT NULL DEFAULT '1',
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `bottom_small` tinyint(1) NOT NULL DEFAULT '0',
  `flash_deal` tinyint(1) NOT NULL DEFAULT '0',
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `featured_category` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'irfan.rafiq1963@gmail.com', '<font size=\"5\"><b>WHATSAPP</b></font>', '<font color=\"#777777\" size=\"3\"><b>+92-321-4112210</b></font>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '-Shop no 22 ground floor, Ali trade centre mmalam road Gulberg Lahore\r\nPakistan', '+92-321-4112210', '00 000 000 000', 'hamzairfaa58@gmail.com', 'www.zubash.com', 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, '1568889138banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 0, 0, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(7, '1571289583p1.jpg', 'https://www.google.com/'),
(8, '1571289601p2.jpg', 'https://www.google.com/'),
(9, '1571289608p3.jpg', 'https://www.google.com/'),
(10, '1571289614p4.jpg', 'https://www.google.com/'),
(11, '1571289621p5.jpg', 'https://www.google.com/'),
(12, '1571289627p6.jpg', 'https://www.google.com/'),
(13, '1571289634p7.jpg', 'https://www.google.com/'),
(14, '1571289642p8.jpg', 'https://www.google.com/'),
(15, '1571289650p9.jpg', 'https://www.google.com/'),
(16, '1571289657p10.jpg', 'https://www.google.com/'),
(17, '1571289663p11.jpg', 'https://www.google.com/'),
(18, '1571289669p12.jpg', 'https://www.google.com/'),
(19, '1571289675p13.jpg', 'https://www.google.com/'),
(20, '1571289680p14.jpg', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via Manual Payment.', 'Manual Payment', '<font size=\"3\"><font size=\"3\"><b>Manual Payment</b></font><b>&nbsp;No: 6528068515</b><br><br></font>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `views` int(191) UNSIGNED NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(93, NULL, 'normal', NULL, 0, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-94l93dsn', '15680269303GYKjODW.png', '1568026930poclhyxJ.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 41, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 07:07:43', '2020-08-27 05:19:46', 0, NULL, NULL, NULL, 0, 0),
(95, 'pr495jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027732dTwHda8l.png', '1568027751AidGUyJv.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 48, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2019-09-09 07:36:06', '2020-01-23 02:28:35', 1, '09/08/2021', NULL, NULL, 0, 0),
(96, 'pr601jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 96', 'top-rated-product-title-will-be-here-according-to-your-wish-96-rdk96x5b', '1568025872cCRVsp2k.png', '1568025872thPsuRSJ.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 13, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 08:00:05', '2020-08-27 05:19:44', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(97, 'pr602jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 97', 'physical-product-title-title-will-be-here-97-pr602jsv', '1568026462TxRJ07FG.png', '1568026462WBWcd7KZ.jpg', NULL, 'S,M,L', '2147483596,2147483597,2147483596', '20,30,40', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 68, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-08-27 05:19:42', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(99, 'pr604jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-hjm99shr', '15680264040zpMCpmS.png', '1568026404Hm4kTmnP.jpg', NULL, 'S', '2147483641', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 16, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-08-27 08:01:37', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(100, 'pr605jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 100', 'physical-product-title-title-will-be-here-100-qqz100nzi', '1568026368qU5AILZo.png', '1568026368CzWwfWLG.jpg', NULL, 'S', '55555555555555555', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 7, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, '2019-09-09 11:59:33', '2020-08-27 05:19:40', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(101, 'pr606jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 101', 'physical-product-title-title-will-be-here-101-8e1101lbq', '1568026326RDSwScJe.png', '1568026326vMlslLz4.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 4, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-08-27 05:19:39', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(102, 'pr607jsv', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-pr607jsv', '1568026301A6SNpEFR.png', '1568026301VLkmQEpb.jpg', NULL, 'S', '2147483622', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 19, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-08-27 08:01:36', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(103, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-laj1033wf', '1568026899SLhVRzQv.png', '15680268999fypNo3k.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 6, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2020-08-27 05:19:35', 0, NULL, NULL, NULL, 0, 0),
(104, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 104', 'digital-product-title-will-be-here-by-name-104-ffv1047iv', '1568026881R8KnUyJv.png', '1568026881yy7vilmh.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 6, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2020-08-27 05:19:33', 0, NULL, NULL, NULL, 0, 0),
(105, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 105', 'digital-product-title-will-be-here-by-name-105-xpt105lfz', '1568026853LMtcb9he.png', '1568026853ZnMf5AkF.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 3, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2020-08-27 05:19:23', 0, NULL, NULL, NULL, 0, 0),
(106, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 106', 'digital-product-title-will-be-here-by-name-106-iq4106dr3', '1568026820NnXjzL5e.png', '1568026820j7QX4FZs.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 3, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2020-08-27 05:19:21', 0, NULL, NULL, NULL, 0, 0),
(107, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 107', 'digital-product-title-will-be-here-by-name-107-4ll107cru', '1568026791NGCCXoMs.png', '1568026791O2FR26Va.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 0, 4, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2020-08-27 05:19:20', 0, NULL, NULL, NULL, 0, 0),
(109, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 109', 'digital-product-title-will-be-here-by-name-109-ext109m9m', '15680267308Mckygzw.png', '1568026730uz1TS02K.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 5, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2020-08-27 08:02:39', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(111, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 111', 'license-key-title-will-be-here-according-to-your-wish-111-wb3111ubd', '1568029267UZnlkD97.png', '1568029267AY9MRYAQ.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, 1, '2019-09-09 12:25:20', '2020-08-27 08:02:38', 0, NULL, NULL, NULL, 0, 0),
(112, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-sct112k8z', '1568029203HHnZu8em.png', '1568029203eAzBjS8a.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'game', 'Keyword 2,Keyword1', '#e80707,#113fe0', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 1, 1, '2019-09-09 12:25:20', '2020-08-27 08:02:37', 0, NULL, NULL, NULL, 0, 0),
(114, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-bbb114jm9', '1568029152hgFzyOZv.png', '1568029152PVeSE2Ct.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 1, '2019-09-09 12:25:20', '2020-08-27 08:02:35', 0, NULL, NULL, NULL, 0, 0),
(116, 'pr496jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027684whVhJDrR.png', '1568027717gm0tFzeb.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:15:17', 1, '09/08/2021', NULL, NULL, 0, 0),
(117, 'pr497jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027658Up0FIXsW.png', '1568027670dTA7gQml.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:30', 1, '09/08/2021', NULL, NULL, 0, 0),
(118, 'pr498jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 118', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027631cnmEylRa.png', '1568027643PgYviwVK.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:03', 1, '09/08/2021', NULL, NULL, 0, 0),
(119, 'pr499jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 1', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027603i5UAZiKB.png', '1568027616O1coe3aV.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:13:36', 1, '09/08/2021', NULL, NULL, 0, 0),
(120, 'pr500jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 120', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027558gLSECTIh.png', '1568027591b1oUIo7Q.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2019-09-09 12:36:06', '2019-09-09 10:53:33', 1, '09/08/2021', NULL, NULL, 0, 0),
(121, 'pr501jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 121', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027534O1QEBPpR.png', '1568027543P8eoamtf.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:12:23', 1, '09/08/2021', NULL, NULL, 0, 0),
(122, 'pr502jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 122', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027493eLqHNoZP.png', '1568027517LGq90luX.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:11:57', 1, '09/08/2021', NULL, NULL, 0, 0),
(123, 'pr608jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-0af12392v', '1568025845ksCVo0hg.png', '1568025845bvB0Q0RE.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 9, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 13:00:05', '2020-11-18 20:51:17', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(124, 'pr609jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 124', 'top-rated-product-title-will-be-here-according-to-your-wish-124-hua12449x', '1568025818Iu033mHq.png', '1568025818tm9YHIHp.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 5, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2020-11-18 20:54:21', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(125, 'pr610jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 125', 'top-rated-product-title-will-be-here-according-to-your-wish-125-lbp125hto', '1568025774B3MU5tJK.png', '1568025774ZsBKNuio.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 1, '2019-09-09 13:00:05', '2020-11-18 20:22:35', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(126, 'pr611jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 1', 'top-rated-product-title-will-be-here-according-to-your-wish-1-7uo96fft', '1568025683HenL6lSt.png', '1568025683ZYvDAf0q.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 11, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2019-09-09 13:00:05', '2020-11-18 20:25:17', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(128, 'pr613jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 102', 'top-rated-product-title-will-be-here-according-to-your-wish-102-rgr128igz', '1568025531RbQwgMZ5.png', '1568025531ckSl3TVR.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 6, 'fashion', 'Keyword1,Keyword 2', '#42c406,#f00505', 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 0, 1, '2019-09-09 13:00:05', '2020-11-18 20:37:44', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0),
(129, 'pr614jsv', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 101', 'top-rated-product-title-will-be-here-according-to-your-wish-101-nls129ico', '1568025423UQNFrvNh.png', '15680254230iXcasMb.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 5, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2020-11-18 20:37:08', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0),
(130, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 130', 'license-key-title-will-be-here-according-to-your-wish-130-nwn1300xx', '1568029076fUcMe2QP.png', '1568029076jgoAP4SR.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 8, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 1, 1, '2019-09-09 12:25:20', '2020-08-27 08:02:08', 0, NULL, NULL, NULL, 0, 0),
(134, 'OO42939gas', 'normal', NULL, 13, 4, 2, 1, NULL, 'Elite 24\'\' ELITE HD LED TV DN600D', 'elite-24-elite-hd-led-tv-dn600d-oo42939gas', '1570072567FiBwycha.png', '1570072567Cqr5iSzD.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, '<span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;\"=\"\"><font size=\"3\">TVs always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 992, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><font size=\"3\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</font></span><br>', 1, 36, 'tv,television', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-25 00:33:22', '2020-08-27 08:01:10', 0, NULL, NULL, NULL, 1, 0),
(135, '3uZ9903ofs', 'normal', NULL, 13, 4, 2, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs', '1570072554QTCZrnNj.png', '1570072555mZv9XiNP.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 80, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-29 23:08:12', '2020-08-27 08:01:08', 0, NULL, NULL, NULL, 1, 0),
(144, 'vrX2915O5c', 'normal', NULL, 13, 4, 2, 1, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c', '1570072918cZGfHP4L.jpg', '1570072918kGfglIIV.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 391, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 24, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 21:21:58', '2020-08-27 08:01:07', 0, NULL, NULL, NULL, 0, 135),
(169, 'TRg5938WNy', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny', '1570875978KD9cRleA.jpg', '15708759789N9Hm1QJ.jpg', NULL, NULL, NULL, NULL, 'Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:26:18', '2020-08-27 08:01:06', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123),
(170, '6Vb6172gWR', 'normal', NULL, 13, 5, 6, NULL, '{\"warranty_type\":{\"values\":[\"No Warranty\",\"Local seller Warranty\",\"Non local warranty\",\"International Manufacturer Warranty\",\"International Seller Warranty\"],\"prices\":[\"1\",\"2\",\"3\",\"4\",\"5\"],\"details_status\":1}}', 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr', '1570876195YsopRMZ0.jpg', '157087619598Nfs52R.jpg', NULL, 'S,M,L,XL,XXL', '100,100,100,100,100', '1,2,3,4,5', '#000000,#ff0000,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 9, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:29:55', '2020-08-27 08:01:04', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123),
(171, 'zia62030Vj', 'normal', NULL, 13, 5, 6, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-zia62030vj', '1570876207958wem8B.jpg', '1570876207Ri9VVzRq.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:30:07', '2020-08-27 08:01:03', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123),
(173, 'b2Q6258iDf', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-b2q6258idf', '1570876281siGCkmvP.jpg', '1570876281Wt1wdK8O.jpg', NULL, 'S', '2147483643', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:31:21', '2020-08-27 08:01:02', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131),
(174, 'bXf62830R9', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-bxf62830r9', '1570876303dcztUot8.jpg', '15708763046Vwtn82r.jpg', NULL, 'S', '2147483643', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:31:43', '2020-08-27 08:00:59', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131),
(175, '9gn6494iUN', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-9gn6494iun', '1570876503CUOkgSFD.jpg', '1570876503XgLFnuQi.jpg', NULL, 'S', '55555555555555555', '20', '#ffffff,#000000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:35:03', '2020-08-27 08:00:58', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 102),
(178, 'Tcv6794KXS', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-tcv6794kxs', '1570876820YXbcdnxW.jpg', '1570876820rpkj3Z6U.jpg', NULL, 'S', '2147483644', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:40:20', '2020-08-27 08:00:56', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99),
(179, 'mf56823djs', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-mf56823djs', '1579415279unIkBvYL.jpg', '1579415279kCjz7hO7.jpg', NULL, 'S', '2147483644', '20', '#ffffff,#ff0000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:45:27', '2020-08-27 08:00:55', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99),
(180, 'myy7236gFD', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-myy7236gfd', '1570877254IpMreGOE.jpg', '1570877254wBRHJA4w.jpg', NULL, 'S', '2147483644', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 5, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2019-10-12 04:47:34', '2020-08-27 07:59:39', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(181, 'TJV7256rgp', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-tjv7256rgp', '15794152717uaGUxnH.jpg', '1579415271xFKOowd2.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2019-10-12 04:47:55', '2020-08-27 07:59:37', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99),
(182, 'b017277kfm', 'normal', NULL, 13, 5, 7, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-b017277kfm', '1579415166fSKljyd2.jpg', '1579415166PgtQXtEv.jpg', NULL, 'S', '2147483645', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 5, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag,js,css,php', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2019-10-12 04:48:06', '2020-08-27 07:59:35', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99),
(183, 'pbG6454xVz', 'normal', NULL, 0, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\"],\"prices\":[512769.2307692308],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\"],\"prices\":[512769.2307692308],\"details_status\":1},\"ram\":{\"values\":[\"1 GB\"],\"prices\":[512769.2307692308],\"details_status\":1},\"color_family\":{\"values\":[\"Black\"],\"prices\":[512769.2307692308],\"details_status\":1},\"display_size\":{\"values\":[\"40\"],\"prices\":[512769.2307692308],\"details_status\":1}}', 'abcd', 'abcd-pbg6454xvz', '1598429335RFzY9iUA.png', '1598429336NXWkNmLA.jpg', NULL, 's', '0', '0', '#000000,#e81818', 256410230.76923078, 341880307.6923077, '<h5 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 22px; color: rgb(0, 0, 0); font-size: 17px; background-color: rgb(251, 251, 251);\">Embellishment Detail:Basic shirt with V-neckline with a flap, pleat and top stitch detail on front, embroidery and handwork detail on sleeves.</h5>', NULL, '<h5 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 22px; color: rgb(0, 0, 0); font-size: 17px; background-color: rgb(251, 251, 251);\">Embellishment Detail:Basic shirt with V-neckline with a flap, pleat and top stitch detail on front, embroidery and handwork detail on sleeves.</h5>', 1, 0, 'dress', 'abcdef', '#000000', 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-08-26 03:08:55', '2020-08-27 07:59:28', 0, NULL, NULL, NULL, 0, 0),
(184, 'pbG6454xVm', 'normal', NULL, 0, 4, 2, 1, '{\"warranty_type\":{\"values\":[\"Local seller warranty\"],\"prices\":[512769.2307692308],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\"],\"prices\":[512769.2307692308],\"details_status\":1},\"ram\":{\"values\":[\"1 GB\"],\"prices\":[512769.2307692308],\"details_status\":1},\"color_family\":{\"values\":[\"Black\"],\"prices\":[512769.2307692308],\"details_status\":1},\"display_size\":{\"values\":[\"40\"],\"prices\":[512769.2307692308],\"details_status\":1}}', 'abcdthjk', 'abcdthjk-pbg6454xvm', '1598429367fg4EKqc5.png', '1598429367cFtP3mdQ.jpg', NULL, 's', '0', '0', '#000000,#e81818', 256410230.76923078, 341880307.6923077, '<h5 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 22px; color: rgb(0, 0, 0); font-size: 17px; background-color: rgb(251, 251, 251);\">Embellishment Detail:Basic shirt with V-neckline with a flap, pleat and top stitch detail on front, embroidery and handwork detail on sleeves.</h5>', NULL, '<h5 style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-family: Roboto, sans-serif; line-height: 22px; color: rgb(0, 0, 0); font-size: 17px; background-color: rgb(251, 251, 251);\">Embellishment Detail:Basic shirt with V-neckline with a flap, pleat and top stitch detail on front, embroidery and handwork detail on sleeves.</h5>', 1, 6, 'dress', 'abcdef', '#000000', 2, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-08-26 03:09:27', '2020-08-27 07:59:25', 0, NULL, NULL, NULL, 0, 0),
(188, 'ByQ4427iCY', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Z-008', 'z-001-byq4427icy', '16051771578PtzOrpt.png', '1605177157QlgdFdrH.jpg', NULL, NULL, NULL, NULL, NULL, 915384.6153846154, 0, '<i>This chiffon royal blue shirt is filled with embroidery light blue,green and light brown colour. Pairing&nbsp;it with grip pants and royal blue dupatta.</i>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-12 16:14:31', '2020-11-18 23:29:22', 0, NULL, NULL, NULL, 0, 0),
(189, 'wOz82641zb', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Z-007', 'z-002-woz82641zb', '1605268316NCcfwN36.png', '1605268317S8SMZfHL.jpg', NULL, NULL, NULL, NULL, NULL, 1019230.7692307692, 0, '<i>This lemon green organza comes to life with an amalgamation of small and big motifs and patterns in gold,cream and brown.This elegant shirt comes in contrast&nbsp;with a mahroon dupatta combined with floral patterns of olive green,brown and cream color.</i>', NULL, '<br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-13 17:51:56', '2020-11-19 01:25:03', 0, NULL, NULL, NULL, 0, 0),
(190, 'Vsy8391WH3', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Z-006', 'z-003-vsy8391wh3', '16052688088WVcovfw.png', '16052688080DCZr8TW.jpg', NULL, NULL, NULL, NULL, NULL, 867692.3076923077, 0, '<i>This magestic coral coloured gown is pired with grip pants and fully embroided sleeves with small motifs and dupatta.</i>', NULL, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-13 18:00:08', '2020-11-18 23:25:25', 0, NULL, NULL, NULL, 0, 0),
(191, 'HhH9180Rjz', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Z-005', 'z-004-hhh9180rjz', '1605269411tnYUN9Uq.png', '1605269411Uq6PF8hV.jpg', NULL, NULL, NULL, NULL, NULL, 915384.6153846154, 0, '<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\"><i>This shirt is embroided with sequin beads giving it a full-defined look. This outfit is completed with raw silk pant and a banarsi golden dupatta.<span style=\"font-weight: bolder;\">&nbsp;</span></i></span><br><div><i style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></i></div>', NULL, '<br>', 1, 9, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-13 18:10:11', '2020-11-18 17:42:42', 0, NULL, NULL, NULL, 0, 0),
(192, 'a0d94578v4', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Z-004', 'z-005-a0d94578v4', '1605269654dvzyd0Cz.png', '160526965476pmdrvX.jpg', NULL, NULL, NULL, NULL, NULL, 998461.5384615385, 0, '<i>Pastel blue organza shirt is embroided with side panels and motifs of the same color.It is paired with chiffon dupatta with border on two sides of dupatta</i>.', NULL, '<br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-13 18:14:14', '2020-11-19 01:22:23', 0, NULL, NULL, NULL, 0, 0),
(193, '1ce9745WDr', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Z-003', 'z-006-1ce9745wdr', '1605269819mhuRL5xJ.png', '1605269819YUVNG1bo.jpg', NULL, NULL, NULL, NULL, NULL, 826923.076923077, 0, '<i>Mint green and cream beige&nbsp;come together on&nbsp;this organza shirt.the border and sleeves are embroided with beige thread completing it with a organza dupatta with four side border in the same color.</i>', NULL, '<br>', 1, 11, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-13 18:16:59', '2020-11-19 12:10:58', 0, NULL, NULL, NULL, 0, 0),
(194, 'Lag9856jql', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Z-002', 'z-007-lag9856jql', '1605779090FsOh1t2d.png', '1605779090WEc05OXc.jpg', NULL, NULL, NULL, NULL, '#000000', 967692.3076923077, 0, '<i>Featuring beautiful embroidery&nbsp; &nbsp;the chiffon outfit has a delicate arrangement of sitarra and thread of the same base color, pairing it with a chiffon dupatta and grip pants.It has a red contrast lace that come along with the dupatta making it a statement&nbsp;piece.</i>', NULL, '<br>', 1, 10, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-13 18:22:16', '2020-11-19 15:47:53', 0, NULL, NULL, NULL, 0, 0),
(195, 'CRv016553k', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Z-001', 'z-008-crv016553k', '16052704503mAhpFZ6.png', '1605270450KQpTL7oA.jpg', NULL, '3PC', '1', '0', '#000000', 766153.8461538462, 0, '<i>A cream and beige shirt is printed in delicate patterns inspired by&nbsp; beautiful motifs. The front is embroided with intricate sequin beads all over shirt and dupatta with heavy border.</i><div><i><br></i></div>', NULL, '<br>', 1, 14, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2020-11-13 18:27:30', '2020-11-18 23:22:03', 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(4, 102, '2020-01-12'),
(5, 171, '2020-01-23'),
(6, 95, '2020-01-23'),
(7, 130, '2020-01-27'),
(8, 130, '2020-01-27'),
(9, 130, '2020-01-27'),
(10, 102, '2020-03-30'),
(11, 102, '2020-03-30'),
(12, 93, '2020-03-30'),
(13, 102, '2020-03-30'),
(14, 182, '2020-04-05'),
(15, 102, '2020-04-23'),
(16, 102, '2020-04-23'),
(17, 102, '2020-04-23'),
(18, 144, '2020-05-31'),
(19, 182, '2020-05-31'),
(20, 182, '2020-05-31'),
(21, 144, '2020-06-02'),
(22, 102, '2020-06-02'),
(23, 144, '2020-06-02'),
(24, 170, '2020-06-02'),
(25, 170, '2020-06-02'),
(26, 170, '2020-06-02'),
(27, 170, '2020-06-02'),
(28, 170, '2020-06-02'),
(29, 170, '2020-06-02'),
(30, 170, '2020-06-02'),
(31, 170, '2020-06-02'),
(32, 170, '2020-06-02'),
(33, 102, '2020-08-13'),
(34, 180, '2020-08-25'),
(35, 180, '2020-08-25'),
(36, 180, '2020-08-25'),
(37, 180, '2020-08-25'),
(38, 109, '2020-08-26'),
(39, 109, '2020-08-26'),
(40, 103, '2020-08-26'),
(41, 103, '2020-08-26'),
(42, 109, '2020-08-26'),
(43, 109, '2020-08-26'),
(44, 184, '2020-08-26'),
(45, 184, '2020-08-27'),
(46, 184, '2020-08-27'),
(47, 184, '2020-08-27'),
(48, 184, '2020-08-27'),
(49, 184, '2020-08-27'),
(102, 128, '2020-08-29'),
(113, 128, '2020-11-11'),
(114, 188, '2020-11-12'),
(115, 188, '2020-11-12'),
(116, 188, '2020-11-12'),
(118, 190, '2020-11-13'),
(119, 189, '2020-11-13'),
(120, 190, '2020-11-13'),
(121, 190, '2020-11-13'),
(122, 190, '2020-11-13'),
(123, 190, '2020-11-13'),
(124, 189, '2020-11-13'),
(125, 189, '2020-11-13'),
(126, 191, '2020-11-13'),
(127, 191, '2020-11-13'),
(128, 192, '2020-11-13'),
(129, 195, '2020-11-13'),
(130, 195, '2020-11-13'),
(131, 195, '2020-11-13'),
(132, 195, '2020-11-13'),
(133, 195, '2020-11-13'),
(134, 195, '2020-11-13'),
(135, 194, '2020-11-13'),
(136, 195, '2020-11-13'),
(137, 195, '2020-11-16'),
(138, 195, '2020-11-17'),
(139, 193, '2020-11-18'),
(140, 193, '2020-11-18'),
(141, 193, '2020-11-18'),
(142, 193, '2020-11-18'),
(143, 193, '2020-11-18'),
(144, 191, '2020-11-18'),
(145, 191, '2020-11-18'),
(146, 191, '2020-11-18'),
(147, 191, '2020-11-18'),
(148, 191, '2020-11-18'),
(149, 191, '2020-11-18'),
(150, 195, '2020-11-18'),
(151, 193, '2020-11-18'),
(152, 191, '2020-11-18'),
(153, 129, '2020-11-18'),
(154, 125, '2020-11-18'),
(155, 125, '2020-11-18'),
(156, 126, '2020-11-18'),
(157, 129, '2020-11-18'),
(158, 128, '2020-11-18'),
(159, 123, '2020-11-18'),
(160, 124, '2020-11-18'),
(161, 129, '2020-11-18'),
(162, 128, '2020-11-18'),
(163, 195, '2020-11-18'),
(164, 194, '2020-11-18'),
(165, 188, '2020-11-18'),
(166, 123, '2020-11-18'),
(167, 124, '2020-11-18'),
(168, 195, '2020-11-18'),
(169, 195, '2020-11-18'),
(170, 195, '2020-11-18'),
(171, 194, '2020-11-18'),
(172, 189, '2020-11-18'),
(173, 190, '2020-11-18'),
(174, 194, '2020-11-18'),
(175, 194, '2020-11-18'),
(176, 188, '2020-11-18'),
(177, 192, '2020-11-18'),
(178, 192, '2020-11-18'),
(179, 193, '2020-11-18'),
(180, 189, '2020-11-18'),
(181, 194, '2020-11-18'),
(182, 193, '2020-11-19'),
(183, 193, '2020-11-19'),
(184, 193, '2020-11-19'),
(185, 193, '2020-11-19'),
(186, 194, '2020-11-19'),
(187, 194, '2020-11-19'),
(188, 194, '2020-11-19'),
(189, 194, '2020-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(16, 'Manager', 'orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(17, 'Moderator', 'orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1571288944s1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1571288950s2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1571288955s3.png'),
(5, 0, 'HELP CENTER', 'Available 24 hours a day, seven days a week.', '1571288959s4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1571457250s1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1571457257s2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1571457261s3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1571457265s4.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(2- 4 days)', 0),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(11, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1598271694Banner-1.jpg', 'slide-three', '#'),
(12, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1598271870Banner-2.jpg', 'slide-one', '#'),
(13, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1598271895Banner-3.jpg', 'slide-one', '#'),
(14, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1598271916banner-4.jpg', 'slide-one', '#');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `d_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/upgraded/kingcommerce-new/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/upgraded/kingcommerce-new/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(2, 4, 'TELEVISION', 'television', 1),
(3, 4, 'REFRIGERATOR', 'refrigerator', 1),
(4, 4, 'WASHING MACHINE', 'washing-machine', 1),
(5, 4, 'AIR CONDITIONERS', 'air-conditioners', 1),
(6, 5, 'ACCESSORIES', 'accessories', 1),
(7, 5, 'BAGS', 'bags', 1),
(8, 5, 'CLOTHINGS', 'clothings', 1),
(9, 5, 'SHOES', 'shoes', 1),
(10, 7, 'APPLE', 'apple', 1),
(11, 7, 'SAMSUNG', 'samsung', 1),
(12, 7, 'LG', 'lg', 1),
(13, 7, 'SONY', 'sony', 1),
(14, 6, 'DSLR', 'dslr', 1),
(15, 6, 'Camera Phone', 'camera-phone', 1),
(16, 6, 'Action Camera', 'animation-camera', 1),
(17, 6, 'Digital Camera', 'digital-camera', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', '$', 'INR', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` double DEFAULT '0',
  `currency_sign` blob,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT '0',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(1, 22, 'SKk0774sN9', 320, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-05-31 04:26:14', '2020-05-31 04:26:14'),
(2, 22, 'nNI0989op1', 130, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-05-31 04:29:49', '2020-05-31 04:29:49'),
(3, 22, '7re14878jD', 130, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-05-31 04:38:07', '2020-05-31 04:38:07'),
(4, 22, 'BYr2053KuN', 1600, 0x24, 'USD', 1, NULL, NULL, 'Payment Via Wallet', 'minus', '2020-06-01 22:27:33', '2020-06-01 22:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `status` tinyint(10) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `balance` decimal(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`) VALUES
(13, 'Vendor', '1557677677bouquet_PNG62.png', '1234', NULL, 'Algeria', 'UN', NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'JKf1fVEBd1lMqPf0plI4qCpCZFDFi0Nu519MbWpsd1joyHlGXUAMDymwr9Vo', '2018-03-07 18:05:44', '2020-04-04 23:46:54', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5000, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', 'TEST DETAILS', '1579424193adv-banner.jpg', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 5208.02, '2020-08-25', 0, 99.79),
(22, 'User', NULL, '1231', 'Test City', 'United States', 'UN', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'gdLrGH8Y6N4tLmQFhbykwMWtOucQY3LPeuNcbJbe1U6oxOLfrFs6PDoEChTO', '2019-06-20 12:26:24', '2020-06-01 22:27:32', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4953.290000000001, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 127294.18),
(27, 'Test User', NULL, '1234', 'Test City', 'United Kingdom', 'UN', 'Space Needle 400 Broad St, Seattles', '34534534', '34534534', 'junajunnun@gmail.com', '$2y$10$pxNqceuvTvYLuwA.gZ15aejOTtXGHrDT7t2m8wfIZhNO1e52z7aLS', 'RdBI4RFgbKUzSDCo8mhI3LSz4oXURe8RNUizf7DXUEIO4sdVF35qJlLleDHn', '2019-10-05 04:15:08', '2020-03-20 22:53:39', 0, 0, '0521bba4c819528b6a18a581a5842f17', 'Yes', 'bb9d23401cd70f11998fe36ea7677797', 0, 'Test Store', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'ds', '<br>', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-11-24', 0, 10000.00),
(28, 'User', NULL, '1234', 'Test City', 'Algeria', 'UN', NULL, '34534534', '034534534', 'junnun@gmail.com', '$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.', 'pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz', '2019-10-13 05:39:13', '2020-01-12 01:36:05', 0, 0, '8036978c6d71501e893ba7d3f3ecc15d', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 9000.00),
(29, 'Hashim Naseer Lokasher', NULL, NULL, NULL, NULL, NULL, 'Lokasher Street, Mohalla Misry Khan', '03216267061', NULL, 'Hashimlokasher@gmail.com', '$2y$10$1YRmg6VK1vxZq7EJk3DXfOppLHgAlMxm7hE1CDCm.qyoDx9trsrri', 'pKf4hnvFg2QP1RlKvk79vS9R9wQh03lxE6M8jpBP9wxXhm0gnR0S4a1l02hn', '2020-08-12 23:47:00', '2020-08-12 23:50:08', 0, 0, '8604a2054b85c4eb8230389cbc0744b2', 'Yes', '1a7ddf9c011466c3d8bfb92d5db6b0c3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(30, 'abcd', NULL, NULL, NULL, NULL, NULL, 'abcd', '0308-4134467', NULL, 'mariam.kiran@ivylabtech.com', '$2y$10$D3Y5650tFIXLvmjTcAlNe.RuWO/Nutmtvvd1tTtzsvGbGB7Pjh.wu', NULL, '2020-08-26 04:45:22', '2020-08-26 04:51:28', 0, 0, 'eef83821f6177ba7b619c99fcba7055d', 'Yes', 'cb695863e2a4c96d01af5741f047e0e4', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00),
(31, 'Khizra', NULL, NULL, NULL, NULL, NULL, 'badar block', '03044669366', NULL, 'link2khizru@gmail.com', '$2y$10$CwgGwmNiK4cgsRYyQjLu5.tkctTTSMWnW/YjnODfy9V3OtEX2YpVe', 'rslSB38zahQ3lrZlNVS857wIFisklevXvGxVYmzFZYg6vdgB86OkMjl9PHFk', '2020-08-27 07:33:04', '2020-08-27 07:37:34', 0, 0, '57e8b97725598f0b6a49022a5c21bf12', 'Yes', '80571b98ec0e0904043a47276dd2ece5', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(5, 13, 'brlv1597294208', 1, '2020-08-12 23:50:08', '2020-08-12 23:57:41'),
(6, 13, 'nlRC1598435488', 0, '2020-08-26 04:51:28', '2020-08-26 04:51:28'),
(7, 13, 'bbge1605710102', 0, '2020-11-18 20:35:02', '2020-11-18 20:35:02'),
(8, 13, 'LwVK1605710537', 0, '2020-11-18 20:42:17', '2020-11-18 20:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, NULL, '2019-10-09 21:32:57', '2019-10-09 21:32:57', 1, NULL),
(94, 13, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Voguepay', 'demo-5e1d577004e90', NULL, NULL, '2020-01-13 23:54:30', '2020-01-13 23:54:30', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(7, 13, 8, 2, 260, 'brlv1597294208', 'completed'),
(8, 13, 9, 1, 57.5, 'nlRC1598435488', 'pending'),
(9, 13, 11, 5, 550, 'bbge1605710102', 'pending'),
(10, 13, 11, 17, 1776.5, 'bbge1605710102', 'pending'),
(11, 13, 11, 20, 1980, 'bbge1605710102', 'pending'),
(12, 13, 11, 10, 1045, 'bbge1605710102', 'pending'),
(13, 13, 11, 3, 330, 'bbge1605710102', 'pending'),
(14, 13, 11, 5, 550, 'bbge1605710102', 'pending'),
(15, 13, 12, 20, 1980, 'LwVK1605710537', 'pending'),
(16, 13, 12, 13, 1358.5, 'LwVK1605710537', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_warning` tinyint(1) NOT NULL DEFAULT '0',
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Verified', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2019-11-14 03:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_banners`
--
ALTER TABLE `featured_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_links`
--
ALTER TABLE `featured_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `featured_banners`
--
ALTER TABLE `featured_banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `featured_links`
--
ALTER TABLE `featured_links`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
