-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 01, 2024 at 05:19 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22020617_prakruti`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `category_name`, `category_img`) VALUES
(1, 'Birthday', 'https://topstech8.000webhostapp.com/Morning_Batch/Images/birthday.jpg'),
(2, 'Anniversary', 'https://topstech8.000webhostapp.com/Morning_Batch/Images/anni.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Category_Images`
--

CREATE TABLE `Category_Images` (
  `id` int(11) NOT NULL,
  `c_id` varchar(20) NOT NULL,
  `c_images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category_Images`
--

INSERT INTO `Category_Images` (`id`, `c_id`, `c_images`) VALUES
(3, '1', 'https://topstech8.000webhostapp.com/Ewishes/Images/b3.png'),
(4, '2', 'https://topstech8.000webhostapp.com/Ewishes/Images/a1.jpg'),
(7, '1', 'https://topstech8.000webhostapp.com/Ewishes/Upload_category/Images/image_4743.'),
(8, '3', 'https://topstech8.000webhostapp.com/Morning_Batch/Images/2.jfif'),
(11, '', 'https://topstech8.000webhostapp.com/API/Images1/image_8234.'),
(12, '', 'https://topstech8.000webhostapp.com/API/Images1/image_5895.'),
(13, '0', 'https://topstech8.000webhostapp.com/Morning_Batch/API/Images/Images/image_7786.jpg'),
(14, '0', 'https://topstech8.000webhostapp.com/Morning_Batch/API/Images/image_7962.jpg'),
(15, '0', 'https://topstech8.000webhostapp.com/Morning_Batch/API/Images/image_2806.jpg'),
(16, '0', 'https://topstech8.000webhostapp.com/Morning_Batch/API/Images/image_3920.jpg'),
(17, '2', 'https://topstech8.000webhostapp.com/Morning_Batch/API/Images/image_7568.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `morning_register`
--

CREATE TABLE `morning_register` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hobbies` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `morning_register`
--

INSERT INTO `morning_register` (`id`, `fname`, `lname`, `email`, `mobile`, `password`, `hobbies`, `gender`, `city`) VALUES
(1, 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', 'abcd', 'abcd'),
(2, 'test', 't1', 't@gmail.com', '9292929292', '1', 'test', 'Male', 'test'),
(3, 'a', 'b', 'a@gmail.com', '1111111111', '1', '{Cricket: true, Hockey: false, Tennis: false, Reading: false}', 'Male', 'Rajkot'),
(4, 'null', 'null', 'null', 'null', 'null', '', '', ''),
(5, 'a', 'a', 'a', '1234567890', '1', '{Cricket: true, Hockey: false, Tennis: false, Reading: false}', 'Male', 'Rajkot'),
(6, 'f', 'f', 'f', '9999999999', '1', '{Cricket: true, Hockey: false, Tennis: false, Reading: false}', 'Male', 'Rajkot');

-- --------------------------------------------------------

--
-- Table structure for table `Registration`
--

CREATE TABLE `Registration` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Registration`
--

INSERT INTO `Registration` (`id`, `username`, `password`, `mobile_no`, `identifier`) VALUES
(1, 'Admin', '1', '123', 'Admin'),
(2, 'a', '1', '1', 'User'),
(4, 'a', 'a', '3551', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Category_Images`
--
ALTER TABLE `Category_Images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `morning_register`
--
ALTER TABLE `morning_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Registration`
--
ALTER TABLE `Registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Category_Images`
--
ALTER TABLE `Category_Images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `morning_register`
--
ALTER TABLE `morning_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Registration`
--
ALTER TABLE `Registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
