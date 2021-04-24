-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2021 at 06:12 PM
-- Server version: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `S2021_cbass_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `COMPANY`
--

CREATE TABLE `COMPANY` (
  `COMPANY_NAME` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `GRADUATE`
--

CREATE TABLE `GRADUATE` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `GRAD_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `GRADUATE_JOB`
--

CREATE TABLE `GRADUATE_JOB` (
  `JOB_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `COMPANY_ID` varchar(50) NOT NULL,
  `JOB_TYPE` varchar(50) NOT NULL,
  `JOB_POSITION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `GRADUATE_JOB_LOCATION`
--

CREATE TABLE `GRADUATE_JOB_LOCATION` (
  `JOB_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `COMPANY_ID` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  `COUNTRY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_DOUBLE_MAJOR`
--

CREATE TABLE `STUDENT_DOUBLE_MAJOR` (
  `MAJOR_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `SECOND_MAJOR` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_TRIPLE_MAJOR`
--

CREATE TABLE `STUDENT_TRIPLE_MAJOR` (
  `MAJOR_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `THIRD_MAJOR` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COMPANY`
--
ALTER TABLE `COMPANY`
  ADD PRIMARY KEY (`COMPANY_NAME`);

--
-- Indexes for table `GRADUATE`
--
ALTER TABLE `GRADUATE`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `GRADUATE_JOB`
--
ALTER TABLE `GRADUATE_JOB`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `GRADUATE_JOB_LOCATION`
--
ALTER TABLE `GRADUATE_JOB_LOCATION`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `STUDENT_DOUBLE_MAJOR`
--
ALTER TABLE `STUDENT_DOUBLE_MAJOR`
  ADD PRIMARY KEY (`MAJOR_ID`);

--
-- Indexes for table `STUDENT_TRIPLE_MAJOR`
--
ALTER TABLE `STUDENT_TRIPLE_MAJOR`
  ADD PRIMARY KEY (`MAJOR_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
