-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2017 at 04:49 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_sheet`
--

CREATE TABLE `attendance_sheet` (
  `stu_id` int(30) NOT NULL,
  `course_id` varchar(30) NOT NULL,
  `course_sec` char(2) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(30) NOT NULL,
  `course_name` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
('CSE 1205', 'Electrical Engineering'),
('CSE 2111', 'Data Structure'),
('CSE 2162', 'Data Structure Lab'),
('CSE 2215', 'Digital Logic Design'),
('CSE 2263', 'Algorithm Design'),
('CSE 3169', 'Theory Of Computation'),
('CSE 3227', 'Data Communication'),
('GED 2107', 'World History & Civilization'),
('Math 1101', 'Math 1'),
('Phy 1201', 'Physics 2'),
('Phy 1303', 'Physics Lab');

-- --------------------------------------------------------

--
-- Table structure for table `course_faculty`
--

CREATE TABLE `course_faculty` (
  `Fac_ID` int(30) NOT NULL,
  `Course_ID` varchar(30) NOT NULL,
  `Course_Section` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `course_ID` varchar(30) NOT NULL,
  `Student_ID` int(30) NOT NULL,
  `course_sec` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `name` varchar(30) DEFAULT NULL,
  `Faculty_ID` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(30) DEFAULT NULL,
  `Stu_ID` int(30) NOT NULL,
  `Semester` char(4) DEFAULT NULL,
  `Dept` char(10) DEFAULT NULL,
  `E_Mail` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_sheet`
--
ALTER TABLE `attendance_sheet`
  ADD PRIMARY KEY (`stu_id`,`course_id`,`date`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`,`course_name`);

--
-- Indexes for table `course_faculty`
--
ALTER TABLE `course_faculty`
  ADD PRIMARY KEY (`Fac_ID`,`Course_ID`,`Course_Section`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`course_ID`,`Student_ID`,`course_sec`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Faculty_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Stu_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
