-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 12:37 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woodies`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `blockName` varchar(255) NOT NULL,
  `titleName` varchar(255) NOT NULL,
  `imgClass` varchar(255) NOT NULL,
  `imgPath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `blockName`, `titleName`, `imgClass`, `imgPath`) VALUES
(1, 'categories-item-block', 'Table', 'table global', 'img/table.png'),
(2, 'categories-item-block yell', 'Chair', 'chair global', 'img/chair.png'),
(3, 'categories-item-block blue', 'Plate', 'tarelka global', 'img/tarelka.png'),
(4, 'categories-item-block', 'Closet', 'shkaf global', 'img/shkaf.png'),
(5, 'categories-item-block yell', 'Record Player', 'sovet global', 'img/sovet.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `picPath1` varchar(255) NOT NULL,
  `picPath2` varchar(255) NOT NULL,
  `starsPic` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `userPic` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `picPath1`, `picPath2`, `starsPic`, `comment`, `userPic`, `userName`) VALUES
(1, 'img/apartment-bed-bedroom-271624 1.png', 'img/breakfast-contemporary-daylight-154161 1.png', 'icon/Group 55.png', 'User1.\nMy experience with WOODIES is a complete success, from customed furniture, range of product, modern design, purchasing experience, the delivery and newsletter. Litterally everything is great. Thank you!', 'icon/woman-taking-selfie-while-smiling-1310522 1.png', 'Sandra Dewi Jakarta Selatan'),
(2, 'img/apartment-bed-bedroom-271624 1.png', 'img/breakfast-contemporary-daylight-154161 1.png', 'icon/Group 55.png', 'User2.\nMy experience with WOODIES is a complete success, from customed furniture, range of product, modern design, purchasing experience, the delivery and newsletter. Litterally everything is great. Thank you!', 'icon/woman-taking-selfie-while-smiling-1310522 1.png', 'Sandra Dewi Jakarta Selatan'),
(3, 'img/apartment-bed-bedroom-271624 1.png', 'img/breakfast-contemporary-daylight-154161 1.png', 'icon/Group 55.png', 'User3.\nMy experience with WOODIES is a complete success, from customed furniture, range of product, modern design, purchasing experience, the delivery and newsletter. Litterally everything is great. Thank you!', 'icon/woman-taking-selfie-while-smiling-1310522 1.png', 'Sandra Dewi Jakarta Selatan'),
(4, 'img/apartment-bed-bedroom-271624 1.png', 'img/breakfast-contemporary-daylight-154161 1.png', 'icon/Group 55.png', 'User4.\nMy experience with WOODIES is a complete success, from customed furniture, range of product, modern design, purchasing experience, the delivery and newsletter. Litterally everything is great. Thank you!', 'icon/woman-taking-selfie-while-smiling-1310522 1.png', 'Sandra Dewi Jakarta Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `imgurl`
--

CREATE TABLE `imgurl` (
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imgurl`
--

INSERT INTO `imgurl` (`name`, `url`) VALUES
('aboutUs', 'img/Group 31.png'),
('aboutUs2', 'img/Script-Online-Ado-Beech-…Set-Of-3-52151704SD00001-PDP-Gallery-D-01%201.png'),
('categories1', 'img/Group 19.png'),
('categories2', 'img/Group 20.png'),
('categories3', 'img/Group 2.png'),
('categories4', 'img/Group 1.png'),
('categories5', 'img/Group 18.png'),
('comment1_1', 'img/apartment-bed-bedroom-271624 1.png'),
('comment1_2', 'img/breakfast-contemporary-daylight-154161 1.png'),
('comment1_photo', 'icon/woman-taking-selfie-while-smiling-1310522 1.png'),
('comment2_1', 'img/apartment-bed-bedroom-271624 1.png'),
('comment2_2', 'img/breakfast-contemporary-daylight-154161 1.png'),
('comment2_photo', 'icon/woman-taking-selfie-while-smiling-1310522 1.png'),
('comment3_1', 'img/apartment-bed-bedroom-271624 1.png'),
('comment3_2', 'img/breakfast-contemporary-daylight-154161 1.png'),
('comment3_photo', 'icon/woman-taking-selfie-while-smiling-1310522 1.png'),
('comment4_1', 'img/apartment-bed-bedroom-271624 1.png'),
('comment4_2', 'img/breakfast-contemporary-daylight-154161 1.png'),
('comment4_photo', 'icon/woman-taking-selfie-while-smiling-1310522 1.png'),
('main', 'img/Group 23.png'),
('miniPic1', 'icon/Group 45.png'),
('miniPic2', 'icon/Group 46.png'),
('miniPic3', 'icon/Group 47.png'),
('miniPic4', 'icon/Group 48.png');

-- --------------------------------------------------------

--
-- Table structure for table `mailingusers`
--

CREATE TABLE `mailingusers` (
  `user_id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mailingusers`
--

INSERT INTO `mailingusers` (`user_id`, `mail`) VALUES
(2, '1@mail.ru'),
(3, '2@mail.ru'),
(6, 'arman.sedrakyan777@gmail.com'),
(7, '5511155111@mail.ru'),
(8, 'karoyan92@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `singlepics`
--

CREATE TABLE `singlepics` (
  `id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `text` varchar(1200) NOT NULL,
  `imgPath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `singlepics`
--

INSERT INTO `singlepics` (`id`, `position`, `text`, `imgPath`) VALUES
(1, 'top', '								<a class=\"topnav-link yell\" href=\"#home\">Home</a>\r\n								<a class=\"topnav-link\" href=\"#about\">About Us</a>\r\n								<a class=\"topnav-link\" href=\"#how\">How it works</a>\r\n								<a class=\"topnav-link\" href=\"#categoris\">Categories</a>\r\n								<a class=\"topnav-link\" href=\"#testimony\">Testimony</a>\r\n								<a href=\"#sign\" class=\"topnav-btn\"><span class=\"topnav-btn-sign\">SIGN UP</span></a>', ''),
(2, 'top2', '				<p class=\"main-item-title\">Are you looking for <span>woodden furniture</span> for your place?</p>\r\n				<p class=\"main-item-description\">This is the Right Place</p>\r\n				<a href=\"#furniture\" class=\"main-item-btn\"><span class=\"main-item-btn-text\">Explore Furniture</span></a>', 'img/Group 23.png'),
(3, 'aboutUs', '				<p class=\"conteiner-description-item-title\">WOODIES<span>is the</span>home of modern wooden furniture\r\n				</p>\r\n\r\n				<p class=\"conteiner-description-text\">the answer to your need for furniture with shapes, sizes and\r\n					colors. </p>', 'img/Group 31.png'),
(4, 'aboutUs2', '				<p class=\"conteiner-wroth-item-title\"><span>Customized furniture made</span> just for you</p>\r\n				<p class=\"conteiner-wroth-item-text\">Get it easy to adjust furniture to the shape and size of your\r\n					dwelling or business. </p>', 'img/Script-Online-Ado-Beech-Steel-Spoon-Set-Of-3-52151704SD00001-PDP-Gallery-D-01 1.png');

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `id` int(11) NOT NULL,
  `imgPath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` (`id`, `imgPath`) VALUES
(1, 'icon/Group 45.png'),
(2, 'icon/Group 46.png'),
(3, 'icon/Group 47.png'),
(4, 'icon/Group 48.png');

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `partName` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`partName`, `text`) VALUES
('a1', 'Are you looking for '),
('a2', 'woodden furniture'),
('a3', ' for your place?'),
('a4', 'This is the Right Place'),
('b1', 'WOODIES'),
('b2', 'is the'),
('b3', 'home of modern wooden furniture\r\n				'),
('b4', 'the answer to your need for furniture with shapes, sizes and\r\n					colors. '),
('b5', 'Customized furniture made'),
('b6', ' just for you'),
('b7', 'Get it easy to adjust furniture to the shape and size of your\r\n					dwelling or business. '),
('c1', 'My experience with WOODIES is a complete success, from customed furniture, range of product, modern design, purchasing experience, the delivery and newsletter. Litterally everything is great. Thank you!'),
('c2', 'Sandra Dewi Jakarta Selatan'),
('c3', 'My experience with WOODIES is a complete success, from customed furniture, range of product, modern design, purchasing experience, the delivery and newsletter. Litterally everything is great. Thank you!'),
('c4', 'Sandra Dewi Jakarta Selatan'),
('c5', 'My experience with WOODIES is a complete success, from customed furniture, range of product, modern design, purchasing experience, the delivery and newsletter. Litterally everything is great. Thank you!'),
('c6', 'Sandra Dewi Jakarta Selatan'),
('c7', 'My experience with WOODIES is a complete success, from customed furniture, range of product, modern design, purchasing experience, the delivery and newsletter. Litterally everything is great. Thank you!'),
('c8', 'Sandra Dewi Jakarta Selatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imgurl`
--
ALTER TABLE `imgurl`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `mailingusers`
--
ALTER TABLE `mailingusers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `singlepics`
--
ALTER TABLE `singlepics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`partName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mailingusers`
--
ALTER TABLE `mailingusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `singlepics`
--
ALTER TABLE `singlepics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
