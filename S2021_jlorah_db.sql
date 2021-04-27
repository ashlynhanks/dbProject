-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2021 at 11:44 PM
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
-- Database: `S2021_jlorah_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `COMPANY`
--

CREATE TABLE `COMPANY` (
  `COMPANY_NAME` varchar(50) NOT NULL,
  `COMPANY_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `COMPANY`
--

INSERT INTO `COMPANY` (`COMPANY_NAME`, `COMPANY_ID`) VALUES
('Apple', '07993221'),
('Chase Bank', '03683990'),
('Github', '01442755'),
('IBI Insurance Agency', '00967844'),
('Samsung', '03582109');

-- --------------------------------------------------------

--
-- Table structure for table `GRADUATE`
--

CREATE TABLE `GRADUATE` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `GRAD_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `GRADUATE`
--

INSERT INTO `GRADUATE` (`STUDENT_ID`, `GRAD_DATE`) VALUES
('1207703', '2018-05-08'),
('1307764', '2019-05-11');

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

--
-- Dumping data for table `GRADUATE_JOB`
--

INSERT INTO `GRADUATE_JOB` (`JOB_ID`, `STUDENT_ID`, `COMPANY_ID`, `JOB_TYPE`, `JOB_POSITION`) VALUES
('162', '1307764', '03582109', 'Entry Level', 'AI Engineer'),
('253', '1207703', '07993221', 'Entry Level', 'Software Developer');

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

--
-- Dumping data for table `GRADUATE_JOB_LOCATION`
--

INSERT INTO `GRADUATE_JOB_LOCATION` (`JOB_ID`, `STUDENT_ID`, `COMPANY_ID`, `CITY`, `STATE`, `COUNTRY`) VALUES
('162', '1307764', '03582109', 'Beijing', 'China', 'China'),
('253', '1207703', '07993221', 'Cupertino', 'CA', 'USA');

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

--
-- Dumping data for table `INTERNSHIP_LOCATION`
--

INSERT INTO `INTERNSHIP_LOCATION` (`INTERNSHIP_ID`, `STUDENT_ID`, `COMPANY_ID`, `CITY`, `STATE`, `COUNTRY`) VALUES
('766', '1704387', '00967844', 'Tampa', 'FL', 'USA'),
('852', '1503244', '01442755', 'New York City', 'NY', 'USA'),
('868', '1609932', '01442755', 'Denver', 'CO', 'USA'),
('875', '1604366', '03683990', 'New York City', 'NY', 'USA');

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

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`STUDENT_ID`, `FNAME`, `LNAME`, `DOB`, `ADDRESS`, `CITY`, `STATE`, `ZIP`, `PHONE`, `EMAIL`, `GPA`) VALUES
('1207703', 'Ashlyn', 'Hanks', '1996-04-30', '12 Joy Lane', 'Charlotte', 'NC', '25368', '322-553-8900', 'ahanks@highpoint.edu', '3.56'),
('1307764', 'Jacob', 'Day', '1997-10-22', '56 Preakness Drive', 'Reno', 'SC', '11568', '332-453-8965', 'jday2@highpoint.edu', '3.28'),
('1503244', 'Zach', 'Koontz', '1999-01-04', '6 June Street', 'Ridgewood', 'VT', '27965', '887-556-8322', 'zkoontz@highpoint.edu', '3.46'),
('1503455', 'Kyle', 'Boan', '1999-07-15', '200 Smith Lane', 'Henderson', 'MA', '05644', '455-543-7789', 'kboan@highpoint.edu', '2.85'),
('1604366', 'Mike', 'Blanchard', '2000-08-12', '96 Valley Road', 'Greensboro', 'NC', '25397', '336-563-2219', 'mblanchard@highpoint.edu', '3.48'),
('1609932', 'Evan', 'Normad', '2000-08-01', '2 Main Street', 'Denver', 'CO', '80522', '566-345-2100', 'enormad@highpoint.edu', '2.44'),
('1704387', 'Connor', 'Bass', '2001-03-21', '14 Sunshine Lane', 'Sarasota', 'FL', '04358', '453-222-8907', 'cbass@highpoint.edu', '3.21'),
('1709833', 'Timothy', 'Beal', '2001-04-22', '211 Andover Drive', 'Long Island', 'NY', '19857', '201-355-3278', 'tbeal@highpoint.edu', '2.76'),
('1803544', 'Laila', 'Goudarzi', '2002-05-21', '6003 Nellis Drive', 'Totowa', 'VA', '19044', '775-332-5567', 'lgoudarzi@highpoint.edu', '3.87'),
('1806654', 'Christian', 'Hsieh', '2002-11-11', '21 Runway Drive Unit 21', 'Roanoke', 'VA', '15589', '335-887-9821', 'chsieh@highpoint.edu', '2.92');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_ADVISOR`
--

CREATE TABLE `STUDENT_ADVISOR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `ADVISOR_FNAME` varchar(50) NOT NULL,
  `ADVISOR_LNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDENT_ADVISOR`
--

INSERT INTO `STUDENT_ADVISOR` (`STUDENT_ID`, `ADVISOR_FNAME`, `ADVISOR_LNAME`) VALUES
('1503244', 'William', 'Suchan'),
('1503455', 'Lloyd', 'Williams'),
('1604366', 'William', 'Suchan'),
('1609932', 'Kim', 'Titus'),
('1704387', 'Roger', 'Shore'),
('1709833', 'Kim', 'Titus'),
('1803544', 'Lance', 'Dunlap'),
('1806654', 'Brittany', 'Harris-Nelson');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_CLASS`
--

CREATE TABLE `STUDENT_CLASS` (
  `CLASS` int(50) NOT NULL,
  `CLASS_ID` varchar(50) NOT NULL,
  `STUDENT_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDENT_CLASS`
--

INSERT INTO `STUDENT_CLASS` (`CLASS`, `CLASS_ID`, `STUDENT_ID`) VALUES
(1, '1710', '1803544'),
(2, '1710', '1806654'),
(3, '1720', '1803544'),
(4, '1720', '1806654'),
(5, '1710', '1709833'),
(6, '1710', '1704387'),
(7, '1710', '1609932'),
(8, '1710', '1604366'),
(9, '1710', '1503455'),
(10, '1710', '1503244'),
(11, '1720', '1503244'),
(12, '1720', '1503455'),
(13, '1720', '1604366'),
(14, '1720', '1609932'),
(15, '1720', '1704387'),
(16, '1720', '1709833'),
(17, '1720', '1803544'),
(18, '1720', '1806654'),
(19, '2342', '1609932'),
(20, '2342', '1604366'),
(21, '2212', '1503244'),
(22, '2212', '1503455'),
(23, '2410', '1503455'),
(24, '2410', '1604366');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_DOUBLE_MAJOR`
--

CREATE TABLE `STUDENT_DOUBLE_MAJOR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `MAJOR_ID` varchar(50) NOT NULL,
  `SECOND_MAJOR` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDENT_DOUBLE_MAJOR`
--

INSERT INTO `STUDENT_DOUBLE_MAJOR` (`STUDENT_ID`, `MAJOR_ID`, `SECOND_MAJOR`) VALUES
('1503244', '0493117', 'Graphic Design'),
('1503455', '0724197', 'Business Administration'),
('1604366', '0024966', 'Engineering');

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

--
-- Dumping data for table `STUDENT_INTERNSHIP`
--

INSERT INTO `STUDENT_INTERNSHIP` (`INTERNSHIP_ID`, `STUDENT_ID`, `COMPANY_ID`, `INTERNSHIP_TYPE`, `INTERNSHIP_POSITION`) VALUES
('766', '1704387', '00967844', 'Entry Level', 'Web Developer'),
('852', '1503244', '01442755', 'Entry Level', 'Software Engineer'),
('868', '1609932', '01442755', 'Entry Level', 'IT Generalist'),
('875', '1604366', '03683990', 'Entry Level', 'Java Developer');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MAJOR`
--

CREATE TABLE `STUDENT_MAJOR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `MAJOR_ID` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDENT_MAJOR`
--

INSERT INTO `STUDENT_MAJOR` (`STUDENT_ID`, `MAJOR_ID`, `TYPE`) VALUES
('1207703', '0749567', 'B.S.'),
('1307764', '0749567', 'B.S.'),
('1503244', '0749567', 'B.S.'),
('1503455', '0749568', 'B.S. with Concentration in Cyber'),
('1604366', '0749567', 'B.S.'),
('1609932', '0749567', 'B.S.'),
('1704387', '0749566', 'B.A.'),
('1709833', '0749566', 'B.A.'),
('1803544', '0749568', 'B.S. with Concentration in Cyber'),
('1806654', '0749567', 'B.S.');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_MINOR`
--

CREATE TABLE `STUDENT_MINOR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `MINOR_ID` varchar(50) NOT NULL,
  `MINOR` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDENT_MINOR`
--

INSERT INTO `STUDENT_MINOR` (`STUDENT_ID`, `MINOR_ID`, `MINOR`) VALUES
('1307764', '0724198', 'Business Administration'),
('1604366', '0573900', 'Communication'),
('1609932', '0358211', 'Philosophy');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_PRES_SCHOLAR`
--

CREATE TABLE `STUDENT_PRES_SCHOLAR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `LEVEL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDENT_PRES_SCHOLAR`
--

INSERT INTO `STUDENT_PRES_SCHOLAR` (`STUDENT_ID`, `LEVEL`) VALUES
('1207703', 'Presidential Fellowship'),
('1307764', 'Presidential Scholarship'),
('1503455', 'Presidential Scholarship'),
('1609932', 'Presidential Scholarship'),
('1709833', 'Presidential Fellowship'),
('1803544', 'Presidential Scholarship');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT_TRIPLE_MAJOR`
--

CREATE TABLE `STUDENT_TRIPLE_MAJOR` (
  `STUDENT_ID` varchar(50) NOT NULL,
  `MAJOR_ID` varchar(50) NOT NULL,
  `THIRD_MAJOR` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STUDENT_TRIPLE_MAJOR`
--

INSERT INTO `STUDENT_TRIPLE_MAJOR` (`STUDENT_ID`, `MAJOR_ID`, `THIRD_MAJOR`) VALUES
('1604366', '0724197', 'Business Administration');

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
  ADD PRIMARY KEY (`CLASS`);

--
-- Indexes for table `STUDENT_DOUBLE_MAJOR`
--
ALTER TABLE `STUDENT_DOUBLE_MAJOR`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `STUDENT_INTERNSHIP`
--
ALTER TABLE `STUDENT_INTERNSHIP`
  ADD PRIMARY KEY (`INTERNSHIP_ID`);

--
-- Indexes for table `STUDENT_MAJOR`
--
ALTER TABLE `STUDENT_MAJOR`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `STUDENT_MINOR`
--
ALTER TABLE `STUDENT_MINOR`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `STUDENT_PRES_SCHOLAR`
--
ALTER TABLE `STUDENT_PRES_SCHOLAR`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- Indexes for table `STUDENT_TRIPLE_MAJOR`
--
ALTER TABLE `STUDENT_TRIPLE_MAJOR`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `STUDENT_CLASS`
--
ALTER TABLE `STUDENT_CLASS`
  MODIFY `CLASS` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
