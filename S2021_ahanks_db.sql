-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 24, 2021 at 05:43 PM
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
-- Database: `S2021_ahanks_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `INTERNSHIP_LOCATION`
--

CREATE TABLE `INTERNSHIP_LOCATION` (
  `INTERNSHIP_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `COMPANY_ID` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  `COUNTRY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE `STUDENT` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  `ZIP` varchar(50) NOT NULL,
  `PHONE` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `GPA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_ADVISOR`
--

CREATE TABLE `STUDENT_ADVISOR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `ADVISOR_FNAME` varchar(50) NOT NULL,
  `ADVISOR_LNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_CLASS`
--

CREATE TABLE `STUDENT_CLASS` (
  `CLASS_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_INTERNSHIP`
--

CREATE TABLE `STUDENT_INTERNSHIP` (
  `INTERNSHIP_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `COMPANY_ID` varchar(50) NOT NULL,
  `INTERNSHIP_TYPE` varchar(50) NOT NULL,
  `INTERNSHIP_POSITION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MAJOR`
--

CREATE TABLE `STUDENT_MAJOR` (
  `MAJOR_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MINOR`
--

CREATE TABLE `STUDENT_MINOR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `MINOR` varchar(50) NOT NULL,
  `MINOR_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `INTERNSHIP_LOCATION`
--
ALTER TABLE `INTERNSHIP_LOCATION`
  ADD PRIMARY KEY (`INTERNSHIP_ID`);

--
-- Indexes for table `STUDENT`
--
ALTER TABLE `STUDENT`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `STUDENT_ADVISOR`
--
ALTER TABLE `STUDENT_ADVISOR`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `STUDENT_CLASS`
--
ALTER TABLE `STUDENT_CLASS`
  ADD PRIMARY KEY (`CLASS_ID`);

--
-- Indexes for table `STUDENT_INTERNSHIP`
--
ALTER TABLE `STUDENT_INTERNSHIP`
  ADD PRIMARY KEY (`INTERNSHIP_ID`);

--
-- Indexes for table `STUDENT_MAJOR`
--
ALTER TABLE `STUDENT_MAJOR`
  ADD PRIMARY KEY (`MAJOR_ID`);

--
-- Indexes for table `STUDENT_MINOR`
--
ALTER TABLE `STUDENT_MINOR`
  ADD PRIMARY KEY (`MINOR_ID`);
COMMIT;


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


-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_PRES_SCHOLAR`
--

CREATE TABLE `STUDENT_PRES_SCHOLAR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `LEVEL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `STUDENT_PRES_SCHOLAR`
--
ALTER TABLE `STUDENT_PRES_SCHOLAR`
  ADD PRIMARY KEY (`STUDENT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
