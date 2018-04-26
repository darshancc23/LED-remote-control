-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2018 at 09:56 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `light`
--

-- --------------------------------------------------------

--
-- Table structure for table `analysis`
--

CREATE TABLE `analysis` (
  `date` date DEFAULT NULL,
  `value` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis`
--

INSERT INTO `analysis` (`date`, `value`) VALUES
('2018-03-01', 19),
('2018-03-02', 6),
('2018-03-03', 21),
('2018-03-04', 1),
('2018-03-05', 15),
('2018-03-06', 18),
('2018-03-07', 6);

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

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`userid`, `deviceid`, `fav`, `label`, `loc`, `state`) VALUES
(8, 3, 3, 'light', 'bedroom', NULL),
(8, 4, 4, 'device', 'toilet', NULL),
(14, 5, 8, 'fan', 'bedroom', NULL),
(14, 6, 7, 'tubelight', 'bathroom', NULL),
(14, 8, 4, 'do', 'Many', NULL),
(14, 18, 7, 'server', 'school', NULL),
(8, 19, 4, 'Table_fan', 'Dining', NULL),
(8, 20, 1, 'lol', 'bedroom', NULL),
(15, 21, 3, 'gg', 'pop', NULL),
(8, 21, 4, 'pk', 'bedroom', NULL),
(8, 1, 4, 'xyz', 'toilet', NULL),
(8, 3, 4, 'xyz', 'bedroom', NULL),
(25, 31, 1, 'Light1', 'b1', NULL),
(25, 32, 2, 'Side lamp', 'b1', NULL),
(25, 33, 2, 'Side Light', 'b2', NULL),
(25, 35, 2, 'Lamp', 'Kitchen', NULL),
(28, 101, 4, 'led_1', 'SIH-2', NULL),
(28, 102, 4, 'led_2', 'SIH-2', NULL),
(28, 103, 4, 'led_3', 'SIH-2', NULL),
(25, 34, 3, 'l2', 'b1', NULL),
(18, 32, 6, 'Tv', 'Room', NULL),
(30, 32, 5, 'Light', 'Room', NULL);

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

--
-- Dumping data for table `devicecredentials`
--

INSERT INTO `devicecredentials` (`Dev_Id`, `did`, `resource`, `auth`) VALUES
(1, 'darshan', 'led1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkYXJzaGFuIiwiaWF0IjoxNTIxNjI1MjE3LCJqdGkiOiI1YWIyMjg4MTgzMzc3NzYzNzZhYzhkMjEiLCJ1c3IiOiJhZG1pbiJ9.kOjdV5puybcleCrKXq8zBQtaZ_6OZdSLAazwlYSVNVs'),
(3, 'darshan', 'led2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkYXJzaGFuIiwiaWF0IjoxNTIxNjI1MjE3LCJqdGkiOiI1YWIyMjg4MTgzMzc3NzYzNzZhYzhkMjEiLCJ1c3IiOiJhZG1pbiJ9.kOjdV5puybcleCrKXq8zBQtaZ_6OZdSLAazwlYSVNVs'),
(4, NULL, 'led2', NULL),
(5, NULL, 'led', NULL),
(6, NULL, 'led2', NULL),
(8, NULL, 'led2', NULL),
(18, NULL, 'led', NULL),
(19, NULL, 'led3', NULL),
(20, NULL, 'led2', NULL),
(21, NULL, 'led3', NULL),
(23, 'sihdev1', 'led1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhkZXYxIiwiaWF0IjoxNTIxODc2NzM1LCJqdGkiOiI1YWI1ZmVmZjgzMzc3NzYzNzZhYzhkMzciLCJ1c3IiOiJhZG1pbiJ9.JrAcskt2WNm6kRTyMO1JWkZ9RH27XX5jWK0lKfQ_pfE'),
(24, 'sihdev1', 'led2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhkZXYxIiwiaWF0IjoxNTIxODc2NzM1LCJqdGkiOiI1YWI1ZmVmZjgzMzc3NzYzNzZhYzhkMzciLCJ1c3IiOiJhZG1pbiJ9.JrAcskt2WNm6kRTyMO1JWkZ9RH27XX5jWK0lKfQ_pfE'),
(25, 'sihdev1', 'led3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhkZXYxIiwiaWF0IjoxNTIxODc2NzM1LCJqdGkiOiI1YWI1ZmVmZjgzMzc3NzYzNzZhYzhkMzciLCJ1c3IiOiJhZG1pbiJ9.JrAcskt2WNm6kRTyMO1JWkZ9RH27XX5jWK0lKfQ_pfE'),
(26, 'sihdev1', 'led4', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhkZXYxIiwiaWF0IjoxNTIxODc2NzM1LCJqdGkiOiI1YWI1ZmVmZjgzMzc3NzYzNzZhYzhkMzciLCJ1c3IiOiJhZG1pbiJ9.JrAcskt2WNm6kRTyMO1JWkZ9RH27XX5jWK0lKfQ_pfE'),
(27, 'sihdev2', 'led1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhkZXYyIiwiaWF0IjoxNTIxODkxMjYxLCJqdGkiOiI1YWI2MzdiZDgzMzc3NzYzNzZhYzhkM2QiLCJ1c3IiOiJhZG1pbiJ9.b_D7L6b7N86A3WDdDmPUa-JZEvJoWkfSqtHO_3lt13Y'),
(28, 'sihdev2', 'led2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhkZXYyIiwiaWF0IjoxNTIxODkxMjYxLCJqdGkiOiI1YWI2MzdiZDgzMzc3NzYzNzZhYzhkM2QiLCJ1c3IiOiJhZG1pbiJ9.b_D7L6b7N86A3WDdDmPUa-JZEvJoWkfSqtHO_3lt13Y'),
(29, 'sihdev2', 'led3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhkZXYyIiwiaWF0IjoxNTIxODkxMjYxLCJqdGkiOiI1YWI2MzdiZDgzMzc3NzYzNzZhYzhkM2QiLCJ1c3IiOiJhZG1pbiJ9.b_D7L6b7N86A3WDdDmPUa-JZEvJoWkfSqtHO_3lt13Y'),
(30, 'sihdev2', 'led4', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhkZXYyIiwiaWF0IjoxNTIxODkxMjYxLCJqdGkiOiI1YWI2MzdiZDgzMzc3NzYzNzZhYzhkM2QiLCJ1c3IiOiJhZG1pbiJ9.b_D7L6b7N86A3WDdDmPUa-JZEvJoWkfSqtHO_3lt13Y'),
(31, 'initial_setup', 'led1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJpbml0aWFsX3NldHVwIiwiaWF0IjoxNTIyNDEyNTc0LCJqdGkiOiI1YWJlMmMxZTgzMzc3NzYzNzZhYzhkNmEiLCJ1c3IiOiJhZG1pbiJ9.29Lnrxxp7eYMkxcT4DCiZm-oRYa5xyWSa09KNYBhHh4'),
(32, 'initial_setup', 'led2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJpbml0aWFsX3NldHVwIiwiaWF0IjoxNTIyNDEyNTc0LCJqdGkiOiI1YWJlMmMxZTgzMzc3NzYzNzZhYzhkNmEiLCJ1c3IiOiJhZG1pbiJ9.29Lnrxxp7eYMkxcT4DCiZm-oRYa5xyWSa09KNYBhHh4'),
(33, 'initial_setup', 'led3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJpbml0aWFsX3NldHVwIiwiaWF0IjoxNTIyNDEyNTc0LCJqdGkiOiI1YWJlMmMxZTgzMzc3NzYzNzZhYzhkNmEiLCJ1c3IiOiJhZG1pbiJ9.29Lnrxxp7eYMkxcT4DCiZm-oRYa5xyWSa09KNYBhHh4'),
(34, 'initial_setup', 'led4', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJpbml0aWFsX3NldHVwIiwiaWF0IjoxNTIyNDEyNTc0LCJqdGkiOiI1YWJlMmMxZTgzMzc3NzYzNzZhYzhkNmEiLCJ1c3IiOiJhZG1pbiJ9.29Lnrxxp7eYMkxcT4DCiZm-oRYa5xyWSa09KNYBhHh4'),
(35, 'initial_setup', 'led5', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJpbml0aWFsX3NldHVwIiwiaWF0IjoxNTIyNDEyNTc0LCJqdGkiOiI1YWJlMmMxZTgzMzc3NzYzNzZhYzhkNmEiLCJ1c3IiOiJhZG1pbiJ9.29Lnrxxp7eYMkxcT4DCiZm-oRYa5xyWSa09KNYBhHh4'),
(36, 'initial_setup', 'led6', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJpbml0aWFsX3NldHVwIiwiaWF0IjoxNTIyNDEyNTc0LCJqdGkiOiI1YWJlMmMxZTgzMzc3NzYzNzZhYzhkNmEiLCJ1c3IiOiJhZG1pbiJ9.29Lnrxxp7eYMkxcT4DCiZm-oRYa5xyWSa09KNYBhHh4'),
(101, 'darshan', 'led1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkYXJzaGFuIiwiaWF0IjoxNTIxNjI1MjE3LCJqdGkiOiI1YWIyMjg4MTgzMzc3NzYzNzZhYzhkMjEiLCJ1c3IiOiJhZG1pbiJ9.kOjdV5puybcleCrKXq8zBQtaZ_6OZdSLAazwlYSVNVs'),
(102, 'darshan', 'led2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkYXJzaGFuIiwiaWF0IjoxNTIxNjI1MjE3LCJqdGkiOiI1YWIyMjg4MTgzMzc3NzYzNzZhYzhkMjEiLCJ1c3IiOiJhZG1pbiJ9.kOjdV5puybcleCrKXq8zBQtaZ_6OZdSLAazwlYSVNVs'),
(103, 'darshan', 'led3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkYXJzaGFuIiwiaWF0IjoxNTIxNjI1MjE3LCJqdGkiOiI1YWIyMjg4MTgzMzc3NzYzNzZhYzhkMjEiLCJ1c3IiOiJhZG1pbiJ9.kOjdV5puybcleCrKXq8zBQtaZ_6OZdSLAazwlYSVNVs'),
(200, 'demo', 'led1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkZW1vIiwiaWF0IjoxNTIyNDg3MzgxLCJqdGkiOiI1YWJmNTA1NTgzMzc3NzYzNzZhYzhkN2MiLCJ1c3IiOiJhZG1pbiJ9.1Lbhy1rtxc4IYTzLqNBRaGK4wEozO9205qLc-JEnu1c'),
(201, 'demo', 'led2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkZW1vIiwiaWF0IjoxNTIyNDg3MzgxLCJqdGkiOiI1YWJmNTA1NTgzMzc3NzYzNzZhYzhkN2MiLCJ1c3IiOiJhZG1pbiJ9.1Lbhy1rtxc4IYTzLqNBRaGK4wEozO9205qLc-JEnu1c'),
(202, 'demo', 'led3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkZW1vIiwiaWF0IjoxNTIyNDg3MzgxLCJqdGkiOiI1YWJmNTA1NTgzMzc3NzYzNzZhYzhkN2MiLCJ1c3IiOiJhZG1pbiJ9.1Lbhy1rtxc4IYTzLqNBRaGK4wEozO9205qLc-JEnu1c'),
(203, 'demo', 'led4', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJkZW1vIiwiaWF0IjoxNTIyNDg3MzgxLCJqdGkiOiI1YWJmNTA1NTgzMzc3NzYzNzZhYzhkN2MiLCJ1c3IiOiJhZG1pbiJ9.1Lbhy1rtxc4IYTzLqNBRaGK4wEozO9205qLc-JEnu1c'),
(301, 'sih_dev5', 'led1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhfZGV2NSIsImlhdCI6MTUyMjUwMzQxNiwianRpIjoiNWFiZjhlZjg4MzM3Nzc2Mzc2YWM4ZDdmIiwidXNyIjoiYWRtaW4ifQ.PyjqVq75EjKCRcZpRaPMOPAdEiroS4wpPwE4YeypeB8'),
(302, 'sih_dev5', 'led2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhfZGV2NSIsImlhdCI6MTUyMjUwMzQxNiwianRpIjoiNWFiZjhlZjg4MzM3Nzc2Mzc2YWM4ZDdmIiwidXNyIjoiYWRtaW4ifQ.PyjqVq75EjKCRcZpRaPMOPAdEiroS4wpPwE4YeypeB8'),
(303, 'sih_dev5', 'led3', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhfZGV2NSIsImlhdCI6MTUyMjUwMzQxNiwianRpIjoiNWFiZjhlZjg4MzM3Nzc2Mzc2YWM4ZDdmIiwidXNyIjoiYWRtaW4ifQ.PyjqVq75EjKCRcZpRaPMOPAdEiroS4wpPwE4YeypeB8'),
(304, 'sih_dev5', 'led4', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhfZGV2NSIsImlhdCI6MTUyMjUwMzQxNiwianRpIjoiNWFiZjhlZjg4MzM3Nzc2Mzc2YWM4ZDdmIiwidXNyIjoiYWRtaW4ifQ.PyjqVq75EjKCRcZpRaPMOPAdEiroS4wpPwE4YeypeB8'),
(305, 'sih_dev5', 'led5', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkZXYiOiJzaWhfZGV2NSIsImlhdCI6MTUyMjUwMzQxNiwianRpIjoiNWFiZjhlZjg4MzM3Nzc2Mzc2YWM4ZDdmIiwidXNyIjoiYWRtaW4ifQ.PyjqVq75EjKCRcZpRaPMOPAdEiroS4wpPwE4YeypeB8');

-- --------------------------------------------------------

--
-- Table structure for table `iot`
--

CREATE TABLE `iot` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL
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
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `id`, `phno`, `Name`, `address`) VALUES
('pk@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 8, 0, '4545', ''),
('dt@i.o', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 14, 676236, 'GG', ''),
('disha@i.o', 'c7e616822f366fb1b5e0756af498cc11d2c0862edcb32ca65882f622ff39de1b', 15, 3, 'Disha S ', ''),
('katta@i.o', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 16, 777, 'Katta', ''),
('hs@i.o', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 17, 777, 'Harsha', ''),
('rahul@i.o', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 18, 88988898, 'Rahul R', 'Mysore'),
('rahul@i.o', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 19, 12345, 'Rahul', 'Mysore'),
('hs@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 20, 777877, 'Harsha', 'RTO'),
('dishas@i.o', 'c7e616822f366fb1b5e0756af498cc11d2c0862edcb32ca65882f622ff39de1b', 21, 234567890, 'Disha S', 'Mysore'),
('sp@i.o', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 22, 123456, 'SP', 'Mysore'),
('darshan@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 23, 789, 'Darshan', 'kjh'),
('rahul@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 24, 62637383, 'Rahul', 'Mysore'),
('house@i.o', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 25, 987654321, 'house', 'pune'),
('test1@i.o', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 28, 77878777, 'test1', 'Mysuru'),
('rahul@i.o', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 29, 6382258, 'Rahul', 'Mysore'),
('ra@i.o', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 30, 2356, 'Ra', 'Jfbxbxh');

-- --------------------------------------------------------

--
-- Table structure for table `modes`
--

CREATE TABLE `modes` (
  `user_id` int(11) NOT NULL,
  `mode` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modes`
--

INSERT INTO `modes` (`user_id`, `mode`) VALUES
(8, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `Dev_Id` int(10) NOT NULL,
  `Rating` int(5) NOT NULL,
  `make` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Dev_Id` int(10) NOT NULL,
  `state` varchar(10) NOT NULL,
  `Time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Dev_Id`, `state`, `Time`) VALUES
(3, 'ON', 1522365900),
(1, 'ON', 0),
(1, 'ON', 0),
(1, 'ON', 0),
(1, 'ON', 1522447554),
(1, 'ON', 1522447914),
(1, 'ON', 1522441080),
(1, 'ON', 1522441200),
(1, 'ON', 1522441260),
(1, 'OFF', 1522441320),
(1, 'OFF', 1522441380),
(3, 'OFF', 1522441920),
(3, 'OFF', 1522441980),
(1, 'OFF', 1522442040),
(1, 'ON', 1522442100),
(1, 'ON', 1522442160),
(101, 'ON', 1522461534),
(101, 'OFF', 1522461594),
(101, 'ON', 1522473714),
(101, 'ON', 1522473834),
(101, 'ON', 1522466694),
(102, 'OFF', 1522502647),
(103, 'OFF', 1522502647);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `datevar` varchar(10) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`datevar`, `rating`) VALUES
('Jan1', 15),
('Jan2', 11),
('Jan3', 15),
('Jan4', 13),
('Jan5', 9),
('Jan6', 14),
('Jan7', 11),
('Jan8', 10),
('Jan9', 10),
('Jan10', 12),
('Jan11', 7),
('Jan12', 9),
('Jan13', 12),
('Jan14', 6),
('Jan15', 13),
('Jan16', 6),
('Jan17', 14),
('Jan18', 7),
('Jan19', 13),
('Jan20', 14),
('Jan21', 8),
('Jan22', 12),
('Jan23', 14),
('Jan24', 5),
('Jan25', 8),
('Jan26', 5),
('Jan27', 9),
('Jan28', 8),
('Jan29', 12),
('Jan30', 8),
('Jan31', 12);

-- --------------------------------------------------------

--
-- Table structure for table `temprowary`
--

CREATE TABLE `temprowary` (
  `dev_id` varchar(35) NOT NULL,
  `timeinmonth` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temprowary`
--

INSERT INTO `temprowary` (`dev_id`, `timeinmonth`) VALUES
('Air Conditioner', 35),
('Fans', 25),
('Geyser', 18),
('Lights', 15),
('Refrigirator', 28),
('Water-motor', 25);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `Dev_Id` int(10) NOT NULL,
  `Start_Time` int(20) NOT NULL,
  `Duration` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`Dev_Id`, `Start_Time`, `Duration`) VALUES
(3, 1521744261, 123),
(4, 10000, 20000),
(19, 1223, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timedate`
--

CREATE TABLE `timedate` (
  `Dev_Id` int(10) NOT NULL,
  `Time` int(10) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
-- Indexes for table `iot`
--
ALTER TABLE `iot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modes`
--
ALTER TABLE `modes`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD KEY `fk7_idx` (`Dev_Id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD KEY `fk10_idx` (`Dev_Id`);

--
-- Indexes for table `temprowary`
--
ALTER TABLE `temprowary`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD KEY `fk9_idx` (`Dev_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iot`
--
ALTER TABLE `iot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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

--
-- Constraints for table `modes`
--
ALTER TABLE `modes`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `login` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk7` FOREIGN KEY (`Dev_Id`) REFERENCES `devicecredentials` (`Dev_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `time`
--
ALTER TABLE `time`
  ADD CONSTRAINT `fk9` FOREIGN KEY (`Dev_Id`) REFERENCES `devicecredentials` (`Dev_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `routine` ON SCHEDULE EVERY 1 DAY STARTS '2018-03-20 00:00:00' ENDS '2018-09-14 00:00:00' ON COMPLETION PRESERVE ENABLE COMMENT 'daily status' DO INSERT into timedate (Dev_id,Time) SELECT time.Dev_Id,time.Duration from time$$

CREATE DEFINER=`root`@`localhost` EVENT `time updation` ON SCHEDULE EVERY 1 DAY STARTS '2018-03-20 00:06:09' ENDS '2018-08-02 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO INSERT into timedate (Dev_id,Time) SELECT time.Dev_Id,time.Duration from time$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
