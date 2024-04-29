-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 10:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
(2, 'Sudipta Das', '$2y$10$UQn9ooVtP/ASQ/F7nftj0ebya/unLFwvvqIHL7Lbc8FUsHL0UwUA2', 'sudiptadas.siu@gmail.com'),
(3, 'Moni Das', '$2y$10$Y9QghrsbjnhjNIxrnSVjvOPHa8CPKkzUng4xtg.fQqe34ViQoXRUa', 'monidas383@gmail.com'),
(4, 'Tapu Das', '$2y$10$1KWg6SWsdo2XSTJFPWU2OO6aHlmPeE13b2pqQ1d6nN0fGj3N2tkW6', 'tapu@gmail.com'),
(5, 'Tanmoy Das', '$2y$10$yF9F0R1e6rgl.3WPE.Mxrek0z4Q5HwREKIilhc4jjksHJOWPw9O1S', 'tanmoy@gmail.com'),
(6, 'Shuvo Das', '$2y$10$XdsefsqlCIerBYZG7nIope6O84NUErm1X5UAzlPXY/nA.4j7LttyK', 'shuvo@gmail.com'),
(7, 'Dhruvo Das', '$2y$10$dHCm1ZanNCXhgYUaltNS6uunkdW2OGGqQGAJ/hrWIF8RaP.BGk2xa', 'dhruvo@gmail.com'),
(8, 'Shawan Das', '$2y$10$TZshpVdIB/wwSjJfVOp25.oor8trXQo3cmOGfT4Jaycp79/E6m2Z6', 'shawan@gmail.com'),
(9, 'Jibon', '$2y$10$.Pb9DEmuwJEUHeDiQgIgBeXzGGw6Mz0Ffx2YAfZQOe0.s7ZS0FWsa', 'jibon@gmail.com'),
(10, 'Puja Das', '$2y$10$0iRAP07rt6dSfexQciy/1OazAbby77MUbdbCsJh0kfrGPr6GsAMXi', 'puja@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `admission_form`
--

CREATE TABLE `admission_form` (
  `id` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `pob` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `f_profession` varchar(50) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `g_phone_no` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission_form`
--

INSERT INTO `admission_form` (`id`, `student_name`, `dob`, `nationality`, `religion`, `pob`, `email`, `f_name`, `f_profession`, `m_name`, `g_phone_no`, `address`) VALUES
(1, 'Sudipta Das', '2024-04-02', 'bangladeshi', 'hinduism', 'Sunamganj', 'das@gmail.com', 'Niher Ranjan Das', 'Farmer', 'Anima Rani Das', '123456789', 'Sunamganj'),
(2, 'Moni Das', '2024-04-08', 'bangladeshi', 'hinduism', 'Sunamganj', 'das2@gmail.com', 'Niher Ranjan Das', 'Farmer', 'Anima Rani Das', '123456789', 'Sunamganj'),
(3, 'Tapu Das', '2024-04-01', 'bangladeshi', 'hinduism', 'Sylhet', 'tapu@gmail.com', 'Tapas Ranjan Das', 'Business', 'Jyotsna Rani Das', '123456789', 'Sylhet'),
(4, 'Tapu Das', '2024-04-01', 'bangladeshi', 'hinduism', 'Sylhet', 'tapu@gmail.com', 'Tapas Ranjan Das', 'Business', 'Jyotsna Rani Das', '123456789', 'Sylhet'),
(5, 'Tapu Das', '2024-04-01', 'bangladeshi', 'hinduism', 'Sylhet', 'tapu@gmail.com', 'Tapas Ranjan Das', 'Business', 'Jyotsna Rani Das', '123456789', 'Sylhet'),
(6, 'Shuvo Das', '2024-04-03', 'bangladeshi', 'hinduism', 'Sunamganj', 'shuvo@gmail.com', 'Niher Ranjan Das', 'Farmer', 'Anima Rani Das', '123456789', 'Sunamganj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_form`
--
ALTER TABLE `admission_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admission_form`
--
ALTER TABLE `admission_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
