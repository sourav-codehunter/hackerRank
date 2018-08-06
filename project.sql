-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2018 at 06:36 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(20) NOT NULL,
  `adm_name` text NOT NULL,
  `stu_rollno` int(20) NOT NULL,
  `bus_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_no` int(20) NOT NULL,
  `route_id` int(20) NOT NULL,
  `d_name` text NOT NULL,
  `avail_seat` int(20) NOT NULL,
  `total_seat` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `email`, `uname`, `pass`, `regdate`) VALUES
(1, 'a', 'a', 'a', 'a', 'a', '2017-11-22'),
(4, 'saurav', 'singh', 'saurav9a@gmai.com', 'admin', 'a', '2017-11-22'),
(8, 's', 's', 's', 's', 's', '2017-11-22'),
(9, 'null', 'null', 'null', 'null', 'null', '2017-11-22'),
(10, 'a', 'sdf', 'ads', 'ads', 'ads', '2017-11-23'),
(11, 'assd', 'adasd', 'daasd', 'q', 'q', '2017-11-24'),
(12, 'kshitij', 'awasthi', 'addu@gmail.com', 'kjah', '12345', '2017-12-23'),
(13, 's', 'saa', 'a', 's', 's', '2017-12-29'),
(15, 'rwrf', 'fddg', 'sagdgf', 'adssasd', '123456', '2017-12-30'),
(16, 'rwrf', 'fddg', 'sagdgf', 'adssasd', '123456', '2017-12-30'),
(17, 'null', 'null', 'null', 'null', 'null', '2018-02-20'),
(18, '1', '1', '1', '1', '1', '2018-02-20'),
(19, 'null', 'null', 'null', 'null', 'null', '2018-02-20'),
(20, 'null', 'null', 'null', 'null', 'null', '2018-02-20'),
(21, 'sukhdev', 'singh', 'singh@gmail.com', 'singh', 'great', '2018-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(20) NOT NULL,
  `source` text NOT NULL,
  `dest` text NOT NULL,
  `time_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rt_has_stop`
--

CREATE TABLE `rt_has_stop` (
  `route_no` int(20) NOT NULL,
  `stop_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stopage`
--

CREATE TABLE `stopage` (
  `stop_id` int(20) NOT NULL,
  `stop_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stp_has_timing`
--

CREATE TABLE `stp_has_timing` (
  `time_no` int(11) NOT NULL,
  `stop_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_rollno` int(20) NOT NULL,
  `stu_rfid_tg_no` int(50) NOT NULL,
  `stu_name` text NOT NULL,
  `stu_addr` varchar(50) NOT NULL,
  `stu_mail` varchar(50) NOT NULL,
  `stu_penality` int(10) NOT NULL,
  `bus_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_rollno`, `stu_rfid_tg_no`, `stu_name`, `stu_addr`, `stu_mail`, `stu_penality`, `bus_no`) VALUES
(267, 123, 'Shivam', 'psit', 'shivam@gmail.com', 100000, '786');

-- --------------------------------------------------------

--
-- Table structure for table `student_bus`
--

CREATE TABLE `student_bus` (
  `bus_no` int(50) DEFAULT NULL,
  `Driver_name` varchar(50) NOT NULL,
  `driver_id` int(50) NOT NULL,
  `driver_mobile_no` bigint(20) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `Bus_seat_available` int(20) NOT NULL,
  `bus_date` date DEFAULT NULL,
  `bus_timing` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_bus`
--

INSERT INTO `student_bus` (`bus_no`, `Driver_name`, `driver_id`, `driver_mobile_no`, `destination`, `Bus_seat_available`, `bus_date`, `bus_timing`) VALUES
(1, 'dhsfh', 55, 88, 'hvh', 88, '2018-11-08', '12:00:00'),
(55, 'scvs', 888, 4848, 'vfsbfhs', 88, '2021-08-09', '13:00:00'),
(89, 'gy', 5995, 9959, 'dwf', 594, '2022-08-09', '23:00:00'),
(88, 'd', 8, 7, 'd', 8, '2013-02-03', '21:03:00'),
(2, 'dwd', 88, 888, 'w', 9, '2017-11-23', '16:04:00'),
(55, '888', 88, 88, '44', 88, '2017-08-08', '08:30:00'),
(55, '888', 88, 88, '44', 88, '2017-08-08', '08:30:00'),
(2, '2', 2, 8888888888, '2', 2, '2015-08-09', '00:24:00'),
(8, '8', 8, 8888888888, '8', 8, '2015-08-08', '08:08:00'),
(9, '9', 9, 9999999999, '9', 9, '2019-09-09', '12:12:00'),
(8, '8', 8, 8888888888, '8', 8, '2015-09-09', '09:09:00'),
(1, 'sheru', 12, 8090950100, 'kanpur', 12, '2017-12-12', '07:30:00'),
(1231, '132', 342, 987978987, 'scs', 12, NULL, '23:08:01'),
(1231, '132', 342, 987978987, 'scs', 12, NULL, '23:08:01'),
(32, '234', 32, 927376454, 'india', 12, NULL, '02:32:32'),
(12, 'manish', 234, 8927374623, 'maninagar', 23, '2018-09-21', '04:09:08'),
(123, 'manish', 324, 8090950100, 'kanpur', 23, NULL, '23:45:09'),
(123, 'manish', 324, 8090950100, 'kanpur', 23, NULL, '23:45:09'),
(123, 'uncle ji', 542, 8090950100, 'kanpur', 32, NULL, '23:12:12'),
(36436, 'dweh', 2412, 7237363632, 'jdh', 132, '2020-12-12', '12:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `timing`
--

CREATE TABLE `timing` (
  `time_no` int(20) NOT NULL,
  `time_in` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `time_out` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `usr_id` int(50) NOT NULL,
  `usr_psw` varchar(50) NOT NULL,
  `usr_contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `stopage`
--
ALTER TABLE `stopage`
  ADD PRIMARY KEY (`stop_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `stu_rollno` (`stu_rollno`);

--
-- Indexes for table `timing`
--
ALTER TABLE `timing`
  ADD PRIMARY KEY (`time_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
