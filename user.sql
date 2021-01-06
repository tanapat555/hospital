-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 04:36 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(10) NOT NULL,
  `u_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `u_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `u_gender` varchar(50) CHARACTER SET utf8 NOT NULL,
  `u_country` varchar(50) CHARACTER SET utf8 NOT NULL,
  `u_bod` date NOT NULL,
  `u_password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `u_department` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_email`, `u_gender`, `u_country`, `u_bod`, `u_password`, `u_department`) VALUES
(2, 'filmdevildead', 'à¸™à¸²à¸¢à¸˜à¸™à¸žà¸±à¸’à¸™à¹Œ  à¹‚à¸—à¸­à¸¸à¸”à¸˜à¸²', 'à¸Šà¸²à¸¢', 'à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰1', '2021-01-10', 'tanapat2537', 'à¹à¸žà¸—à¸¢à¹Œ'),
(3, 'filmdevildead@gmail.com', 'à¸™à¸²à¸‡à¸ªà¸²à¸§à¸žà¸±à¸Šà¸£à¸µ  à¸­à¸£à¸¸à¸“à¹‚à¸£à¸ˆà¸™à¹Œ', 'à¸Šà¸²à¸¢', 'à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰1', '2021-01-15', 'tanapat2537', 'à¸žà¸¢à¸²à¸šà¸²à¸¥');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
