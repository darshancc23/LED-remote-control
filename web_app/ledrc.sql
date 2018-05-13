-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2018 at 07:46 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ledrc`
--

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `userid` int(20) NOT NULL,
  `deviceid` int(20) NOT NULL,
  `fav` int(10) DEFAULT NULL,
  `label` varchar(20) DEFAULT NULL,
  `loc` varchar(20) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `devicecredentials`
--

CREATE TABLE `devicecredentials` (
  `Dev_Id` int(10) NOT NULL,
  `did` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `auth` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(20) NOT NULL,
  `phno` int(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD KEY `fk2_idx` (`deviceid`),
  ADD KEY `fk_idx` (`userid`);

--
-- Indexes for table `devicecredentials`
--
ALTER TABLE `devicecredentials`
  ADD PRIMARY KEY (`Dev_Id`),
  ADD KEY `pk` (`Dev_Id`),
  ADD KEY `Dev_Id` (`Dev_Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `device`
--
ALTER TABLE `device`
  ADD CONSTRAINT `fk` FOREIGN KEY (`userid`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `routine` ON SCHEDULE EVERY 1 DAY STARTS '2018-03-20 00:00:00' ENDS '2018-09-14 00:00:00' ON COMPLETION PRESERVE ENABLE COMMENT 'daily status' DO INSERT into timedate (Dev_id,Time) SELECT time.Dev_Id,time.Duration from time$$

CREATE DEFINER=`root`@`localhost` EVENT `time updation` ON SCHEDULE EVERY 1 DAY STARTS '2018-03-20 00:06:09' ENDS '2018-08-02 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO INSERT into timedate (Dev_id,Time) SELECT time.Dev_Id,time.Duration from time$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
