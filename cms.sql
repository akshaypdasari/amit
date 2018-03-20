-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2018 at 01:28 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(250) NOT NULL,
  `a_email` varchar(255) NOT NULL,
  `a_pass` varchar(255) NOT NULL,
  `o_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `a_flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `br_id` int(11) NOT NULL,
  `br_name` varchar(300) NOT NULL,
  `br_type` varchar(250) NOT NULL,
  `br_shift` varchar(250) NOT NULL,
  `o_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `n_id` int(11) NOT NULL,
  `br_flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(300) NOT NULL,
  `e_desc` varchar(500) NOT NULL,
  `e_addr` int(11) NOT NULL,
  `e_date` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `e_flag` int(11) NOT NULL,
  `e_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `e_name`, `e_desc`, `e_addr`, `e_date`, `o_id`, `br_id`, `s_id`, `st_id`, `e_flag`, `e_img`) VALUES
(1, '0', 'olikujnyhbtgvrfcedx', 0, 0, 0, 0, 0, 0, 1, '1479664573d.jpg'),
(2, '0', 'solapur', 0, 0, 0, 0, 0, 0, 1, '1479898268.jpg'),
(3, 'WIT EVENT', 'solapur', 0, 0, 0, 0, 0, 0, 1, '1479910475r8.jpg'),
(4, '1111', '111111', 0, 0, 0, 0, 0, 0, 1, '1479915942.jpg'),
(5, '111111111', '333333333', 0, 0, 0, 0, 0, 0, 1, '1479916024.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL,
  `n_name` varchar(255) NOT NULL,
  `n_message` varchar(800) NOT NULL,
  `n_pdf` varchar(500) NOT NULL,
  `n_date` int(100) NOT NULL,
  `o_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `n_flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`n_id`, `n_name`, `n_message`, `n_pdf`, `n_date`, `o_id`, `br_id`, `s_id`, `n_flag`) VALUES
(1, 'holiday', 'diwali', '1479667195https___www.irctc.co.in_eticketing_printTicket.pdf', 0, 1, 0, 0, 1),
(2, 'ticket', 'gfdgrdg', '1479882042https___www.irctc.co.in_eticketing_printTicket.pdf', 0, 1, 0, 0, 1),
(3, 'Sample Notice', 'gfdgrdg', '1479889368notice.pdf', 0, 1, 0, 0, 1),
(4, 'ticket', 'gfdgrdg', '1479891389notice.pdf', 0, 1, 0, 0, 1),
(5, 'test ', 'NBPL', '1482229418aaddffgghjh.pdf', 0, 1, 0, 0, 1),
(6, '', '', '1482229427aaddffgghjh.pdf', 0, 1, 0, 0, 1),
(7, '', '', '1482229523Notice writing.pdf', 0, 1, 0, 0, 1),
(8, 'result ', 'fe to be E&tc', '1490952667k sticker & address.pdf', 0, 1, 0, 0, 1),
(9, 'dfd', 'dfdf', '1490953108aaaa.pdf', 0, 1, 0, 0, 1),
(10, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaffffffffffffffffffffffffffffffffffffffffffffffffffffgnvb,mbn.nm/,m<>', 'fhgjhgkhkjhkjhk', '1490953269katareinformatics payment.pdf', 0, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `org`
--

CREATE TABLE `org` (
  `o_id` int(11) NOT NULL,
  `o_ name` varchar(250) NOT NULL,
  `o_addr` varchar(500) NOT NULL,
  `o_cont` bigint(50) NOT NULL,
  `o_email` varchar(250) NOT NULL,
  `o_flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffexcel`
--

CREATE TABLE `staffexcel` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(300) NOT NULL,
  `s_addr` varchar(300) NOT NULL,
  `s_cont` bigint(50) NOT NULL,
  `s_email` varchar(255) NOT NULL,
  `s_pass` varchar(250) NOT NULL,
  `s_desg` varchar(200) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `s_join_date` varchar(100) NOT NULL,
  `s_empcode` varchar(500) NOT NULL,
  `s_flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffexcel`
--

INSERT INTO `staffexcel` (`s_id`, `s_name`, `s_addr`, `s_cont`, `s_email`, `s_pass`, `s_desg`, `sub_id`, `o_id`, `br_id`, `s_join_date`, `s_empcode`, `s_flag`) VALUES
(1, 'Mr S.S. Shakhapure', '', 0, 'su .shakhapure@gmail.com', '805065647bd5334acd87c84461354df2', 'Assistant Professor', 0, 1, 2, '', 'w0018', 0),
(2, 'Mr. D. P. Pandit', '', 0, 'dppanditwit@gmail.com', '9d6c5bce9c3dd1cc2761995f4c169846', 'Assistant Professor', 0, 1, 2, '', 'w0019', 0),
(3, 'Mr.S. M. Metagar', '', 0, 'shivametagar@gmail.com,smmetagar@witsolapur.org', 'e3e2eb6bf41fb45bd7a6b35bfaa6831f', 'Assistant Professor', 0, 1, 2, '', 'w0020', 0),
(4, '1', '', 0, '2', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '4', 0, 7, 5, '', '6', 0),
(5, '1', '', 0, '2', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '4', 0, 7, 5, '', '6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `studentexcel`
--

CREATE TABLE `studentexcel` (
  `st_id` int(11) NOT NULL,
  `st_name` varchar(300) NOT NULL,
  `st_addr` varchar(300) NOT NULL,
  `st_cont` bigint(50) NOT NULL,
  `st_email` varchar(255) NOT NULL,
  `st_pass` varchar(250) NOT NULL,
  `br_id` int(11) NOT NULL,
  `o_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `st_rollno` varchar(100) NOT NULL,
  `st_flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentexcel`
--

INSERT INTO `studentexcel` (`st_id`, `st_name`, `st_addr`, `st_cont`, `st_email`, `st_pass`, `br_id`, `o_id`, `sub_id`, `st_rollno`, `st_flag`) VALUES
(1, 'Mahjabeen Perampalli', '', 7058054520, 'mahjperampalli96@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, 1, 0, '1', 0),
(2, 'Aarefa mulla', '', 7741995393, 'aarefamulla123@gmail.com', 'd4c7b418b2b08080152d35d0df6faf81', 2, 1, 0, '2', 0),
(3, 'Pradnya Bhosale', '', 8087805674, 'bhosale.pradnya4@gmail.com', 'bdb889ac0f9e13c2bfc915d54c1c2c68', 2, 1, 0, '3', 0),
(4, 'Pooja Suryavanshi', '', 7038756374, 'suryavanshipooja76@gmail.com', '02a865ec04b2a32ca1b3496911d0c3da', 2, 1, 0, '4', 0),
(5, 'Mahjabeen Perampalli', '', 7058054520, 'mahjperampalli96@gmail.com', 'ec073503d13a347c0fad0b13aa002143', 2, 1, 0, '1', 0),
(6, 'Aarefa mulla', '', 7741995393, 'aarefamulla123@gmail.com', 'd4c7b418b2b08080152d35d0df6faf81', 2, 1, 0, '2', 0),
(7, 'Pradnya Bhosale', '', 8087805674, 'bhosale.pradnya4@gmail.com', 'bdb889ac0f9e13c2bfc915d54c1c2c68', 2, 1, 0, '3', 0),
(8, 'Pooja Suryavanshi', '', 7038756374, 'suryavanshipooja76@gmail.com', '02a865ec04b2a32ca1b3496911d0c3da', 2, 1, 0, '4', 0),
(9, 'kanchan kasabe', '', 7856421222, 'kanchan@gmail.com', '488888ba271ab35cd1e002c12b80513f', 2, 1, 0, '5', 0),
(10, 'Mrunali Nandurkar', '', 9874545452, 'munni@gmail.com', 'edf0917c56763083f79363238c125daa', 2, 1, 0, '6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `sub_type` varchar(255) NOT NULL,
  `sub_dec` varchar(500) NOT NULL,
  `o_id` int(11) NOT NULL,
  `br_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL,
  `sub_flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_addr` varchar(500) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_cont` bigint(50) NOT NULL,
  `u_pass` varchar(255) NOT NULL,
  `u_flag` int(10) NOT NULL,
  `o_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_addr`, `u_email`, `u_cont`, `u_pass`, `u_flag`, `o_id`) VALUES
(1, 'Administrator', '', 'test@gmail.com', 0, 'e10adc3949ba59abbe56e057f20f883e', 0, 1),
(2, 'Administrator', 'Orchid solapur', 'admin@gmail.com', 7058054520, 'e10adc3949ba59abbe56e057f20f883e', 0, 1),
(3, 'admin', '', 'admin1@gmail.com', 0, 'e10adc3949ba59abbe56e057f20f883e', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `org`
--
ALTER TABLE `org`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `staffexcel`
--
ALTER TABLE `staffexcel`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `studentexcel`
--
ALTER TABLE `studentexcel`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `br_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `org`
--
ALTER TABLE `org`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staffexcel`
--
ALTER TABLE `staffexcel`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `studentexcel`
--
ALTER TABLE `studentexcel`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
