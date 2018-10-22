-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2017 at 08:47 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appt`
--

CREATE TABLE IF NOT EXISTS `appt` (
  `ano` int(11) NOT NULL,
  `adoctor` int(11) NOT NULL,
  `apatient` int(11) NOT NULL,
  `atime` varchar(11) NOT NULL,
  `ashow` varchar(1) NOT NULL DEFAULT 'Y',
  `adate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appt`
--

INSERT INTO `appt` (`ano`, `adoctor`, `apatient`, `atime`, `ashow`, `adate`) VALUES
(1, 1, 1, '12:12', 'Y', '2012-12-12'),
(2, 3, 2, '12:40', 'N', '2016-10-22'),
(3, 4, 3, '12:10', 'Y', '2016-12-05'),
(4, 4, 4, 'e', 'N', '0000-00-00'),
(5, 5, 3, '12:12', 'Y', '2012-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `doct`
--

CREATE TABLE IF NOT EXISTS `doct` (
  `dno` int(11) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `dspec` varchar(30) NOT NULL,
  `dshow` varchar(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doct`
--

INSERT INTO `doct` (`dno`, `dname`, `dspec`, `dshow`) VALUES
(1, 'Dr. testing', 'heart', 'Y'),
(2, 'Dr. Testing', 'brain', 'Y'),
(3, 'Dr. Testing3', 'Kidneyy', 'N'),
(4, 'xyzzzz', 'Headee', 'N'),
(5, 'bbb', 'dljf', 'Y'),
(6, 'ddd', 'cvcvcv', 'Y'),
(7, 'dfadaf', 'dfafdf', 'Y'),
(8, 'adfd', 'fdfdfd', 'Y'),
(9, 'rehan', 'surgon', 'Y'),
(10, 'yytgty', 'yy', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `pno` int(10) NOT NULL,
  `pname` text NOT NULL,
  `fname` text NOT NULL,
  `sex` text NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `dinfo` varchar(15) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `pshow` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pno`, `pname`, `fname`, `sex`, `address`, `contact`, `dinfo`, `amount`, `pshow`) VALUES
(1, 'john', 'smith', 'm', 'delhi', '56985485', 'fever', '1500', ''),
(2, 'raj', 'pankaj', 'm', 'delhi', '6544544', 'eye dies.', '4500', 'Y'),
(3, 'geeta', 'chandu', 'f', 'kanpur', '654645', 'ear di.', '1560', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE IF NOT EXISTS `slot` (
  `sno` int(11) NOT NULL,
  `stime` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appt`
--
ALTER TABLE `appt`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `doct`
--
ALTER TABLE `doct`
  ADD PRIMARY KEY (`dno`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appt`
--
ALTER TABLE `appt`
  MODIFY `ano` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `doct`
--
ALTER TABLE `doct`
  MODIFY `dno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
