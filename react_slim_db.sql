-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2019 at 06:16 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_slim_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery`
--

CREATE TABLE `image_gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `tags` varchar(55) DEFAULT NULL,
  `crate_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_gallery`
--

INSERT INTO `image_gallery` (`id`, `title`, `link`, `tags`, `crate_date`) VALUES
(1, 'Image 1', 'https://thumbs.dreamstime.com/b/focus-amazing-stamens-st-john-s-wort-flower-flower-golden-color-length-multiple-stamens-wondering-st-151207273.jpg', NULL, '2019-09-08 16:10:46'),
(2, 'Image 2', 'https://q7i2y6d5.stackpathcdn.com/wp-content/uploads/2019/03/balloon-flower-400x267.jpg', NULL, '2019-09-08 16:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `image_tags`
--

CREATE TABLE `image_tags` (
  `id` int(11) NOT NULL,
  `image_gallery_id` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_tags`
--

INSERT INTO `image_tags` (`id`, `image_gallery_id`, `tags`, `create_at`) VALUES
(1, 1, 'Top Image', '2019-09-08 16:10:46'),
(2, 1, 'Recent Image', '2019-09-08 16:10:46'),
(3, 2, 'Top Image', '2019-09-08 16:14:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_tags`
--
ALTER TABLE `image_tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `image_tags`
--
ALTER TABLE `image_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
