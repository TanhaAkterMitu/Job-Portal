-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 08:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) NOT NULL,
  `post_id_c` int(10) NOT NULL,
  `user_id_c` int(10) NOT NULL,
  `comment` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id_c`, `user_id_c`, `comment`, `comment_time`) VALUES
(34, 12, 7, 'i am interested.', '2022-04-22 06:15:22'),
(35, 13, 8, 'bua dorkar', '2022-04-22 06:19:45'),
(36, 14, 8, '@prapti', '2022-04-22 06:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `noti_id` int(10) NOT NULL,
  `pos_id` int(10) NOT NULL,
  `post_usr` int(10) NOT NULL,
  `comm_user` int(10) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `project` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`noti_id`, `pos_id`, `post_usr`, `comm_user`, `comment`, `status`, `time`, `project`, `experience`, `skill`) VALUES
(3, 10, 2, 1, 'kjdsahfkj kjhdfs dgafa jdahsfj ', 0, '2017-06-12 02:18:29', '', '', ''),
(4, 10, 2, 1, 'ksdhgkjf fdhgui kjfdh', 0, '2017-06-12 02:18:29', '', '', ''),
(5, 9, 2, 1, 'kdfhgkj jfdhg fgds', 0, '2017-06-12 02:18:29', '', '', ''),
(7, 10, 2, 1, 'dskjhfdkj', 0, '2017-06-12 02:29:12', '', '', ''),
(8, 0, 0, 2, 'dskjhvfkjds', 0, '2017-06-12 03:37:25', '', '', ''),
(9, 10, 2, 6, 'hhhhhhhhhhhhhhhhhhhhhhhhh', 0, '2017-06-12 09:58:04', '', '', ''),
(10, 10, 2, 6, 'aaaaaaaaaaaaaaaaaaaaaaaaaa', 0, '2017-06-12 09:58:17', '', '', ''),
(11, 7, 1, 6, 'luliuououoiuo', 0, '2017-06-12 09:59:35', '', '', ''),
(12, 12, 6, 7, 'i am interested.', 0, '2022-04-22 06:15:22', '', '', ''),
(13, 13, 7, 8, 'bua dorkar', 0, '2022-04-22 06:19:45', '', '', ''),
(14, 14, 7, 8, '@prapti', 0, '2022-04-22 06:19:57', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) NOT NULL,
  `usr_id_p` int(10) NOT NULL,
  `status_title` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `status_image` varchar(200) NOT NULL,
  `status_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `usr_id_p`, `status_title`, `status`, `status_image`, `status_time`) VALUES
(12, 6, 'Need Frontend Developer', 'Full fledge Developer need for a multinational company', '', '2022-04-22 06:09:45'),
(13, 7, 'Need a Cleaner', 'Jilapi bananor jonno cleaner dorkar', '', '2022-04-22 06:17:03'),
(14, 7, 'Need a Jamai', 'Jilapni bananor jonno jamai dorkar. jar jilapir dokan ache. je amar banano jilapi khabe', '', '2022-04-22 06:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `p_id` int(11) NOT NULL,
  `Project_name` varchar(100) NOT NULL,
  `Proejct_lang` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`p_id`, `Project_name`, `Proejct_lang`, `user`) VALUES
(1, 'Social network', 'PHP', 'gurtej');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `usr_id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `project` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`usr_id`, `name`, `email`, `image`, `password`, `project`, `experience`, `skill`) VALUES
(6, 'tasneem', 'tasneem@gmail.com', 'Hydrangeas - Copy.jpg', '12345', 'LAW  MANAGEMNET SYSTEM, Online Shopping, dfldjfldjfld\r\n', '5', 'PHP, MySQL, HTML, CSS, JAVASCRIPT................'),
(7, 'mitu', 'mitu.jilapi@gmail.com', '1608135280990.jpg', '123456', '', '3', 'Hi i am tanha akter mitu. i am CG-4 holder. i am also a future TAF of DIU which is multination unive'),
(8, 'Panto', 'pranto@prapti.jilapi.com', '1608135280990.jpg', '123456', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `noti_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `usr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
