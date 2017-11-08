-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2016 at 01:28 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dailyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `dailyshop_category`
--

CREATE TABLE `dailyshop_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailyshop_category`
--

INSERT INTO `dailyshop_category` (`category_id`, `category_name`) VALUES
(5, 'Digital'),
(6, 'Furniture'),
(3, 'Kids'),
(1, 'Men'),
(4, 'Sports'),
(2, 'Women');

-- --------------------------------------------------------

--
-- Table structure for table `dailyshop_products`
--

CREATE TABLE `dailyshop_products` (
  `p_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_details` varchar(100) NOT NULL,
  `p_img` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailyshop_products`
--

INSERT INTO `dailyshop_products` (`p_id`, `sub_id`, `p_name`, `p_details`, `p_img`, `price`) VALUES
(1, 2, 'Sachin Bat', '', '', 500),
(2, 1, 'Peter England', 'Nice Product.', '', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `dailyshop_sub_category`
--

CREATE TABLE `dailyshop_sub_category` (
  `sub_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailyshop_sub_category`
--

INSERT INTO `dailyshop_sub_category` (`sub_id`, `cat_id`, `sub_name`) VALUES
(1, 1, 'Casual'),
(2, 1, 'Sports'),
(3, 1, 'Formal'),
(4, 1, 'Standard'),
(5, 1, 'T-Shirts'),
(7, 1, 'Shirts'),
(8, 1, 'Jeans'),
(9, 1, 'Trousers');

-- --------------------------------------------------------

--
-- Table structure for table `dailyshop_users`
--

CREATE TABLE `dailyshop_users` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(30) NOT NULL,
  `user_contact` text NOT NULL,
  `user_role` enum('user','admin') NOT NULL,
  `user_status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailyshop_users`
--

INSERT INTO `dailyshop_users` (`user_id`, `user_name`, `user_email`, `user_pass`, `user_contact`, `user_role`, `user_status`) VALUES
(1, '', 'manishtolani12@gmail.com', '0', '', 'admin', '0'),
(2, '', 'haddu@gmail.com', '54d46e96cdc48c41fd9794bd5a0e27', '', 'admin', '0'),
(3, '', 'deepu@gmail.com', 'ee49d65319f42e5e594c24832d8196', '', 'admin', '0'),
(4, '', 'mts@gmail.com', 'mts', '', 'admin', '0'),
(5, '', 'hiii@gmail.com', 'hii', '', 'admin', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dailyshop_category`
--
ALTER TABLE `dailyshop_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `c_name` (`category_name`);

--
-- Indexes for table `dailyshop_products`
--
ALTER TABLE `dailyshop_products`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `sub_id` (`sub_id`);

--
-- Indexes for table `dailyshop_sub_category`
--
ALTER TABLE `dailyshop_sub_category`
  ADD PRIMARY KEY (`sub_id`),
  ADD UNIQUE KEY `sub` (`sub_name`),
  ADD UNIQUE KEY `sub_name` (`sub_name`),
  ADD UNIQUE KEY `sub_name_2` (`sub_name`),
  ADD KEY `cat_for` (`cat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `dailyshop_users`
--
ALTER TABLE `dailyshop_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dailyshop_category`
--
ALTER TABLE `dailyshop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dailyshop_products`
--
ALTER TABLE `dailyshop_products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dailyshop_sub_category`
--
ALTER TABLE `dailyshop_sub_category`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `dailyshop_users`
--
ALTER TABLE `dailyshop_users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
