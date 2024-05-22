-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2024 at 10:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CMMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `CMMSSession`
--

CREATE TABLE `CMMSSession` (
  `sessId` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `ipAddress` varchar(50) NOT NULL,
  `userAgent` varchar(1000) NOT NULL,
  `sessionDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CMMSSession`
--

INSERT INTO `CMMSSession` (`sessId`, `username`, `ipAddress`, `userAgent`, `sessionDate`) VALUES
(1, 'JohnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(2, 'JohnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(3, 'johnsnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(4, 'johnterry', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-22'),
(5, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(6, 'JohnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(7, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(8, 'johnTerry', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(9, 'JohnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(10, 'JohnTerry', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(11, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(12, 'JohnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-31'),
(13, 'johnTerry', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-02-01'),
(14, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-03'),
(15, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-03'),
(16, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-03'),
(17, 'JohnWick', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-06'),
(18, 'JohnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-06'),
(19, 'johnWick', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-06'),
(20, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-06'),
(21, 'johnMagufuli', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-06'),
(22, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-06'),
(23, 'johnWick', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-02-06'),
(24, 'JohnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-22'),
(25, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-22'),
(26, 'JohnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-22'),
(27, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-03-26'),
(28, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-04'),
(29, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(30, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(31, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(32, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(33, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(34, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(35, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(36, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(37, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-11'),
(38, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-04-13'),
(39, 'johnwick', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-10'),
(40, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-10'),
(41, 'johnsnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-10'),
(42, 'augustineraphael', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-10'),
(43, 'augustinekadimu', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-10'),
(44, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-10'),
(45, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15'),
(46, 'johnsnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15'),
(47, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15'),
(48, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-15'),
(49, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16'),
(50, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16'),
(51, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-16'),
(52, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-17'),
(53, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-17'),
(54, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-17'),
(55, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-17'),
(56, 'admin', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-17'),
(57, 'johnSnow', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15', '2024-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `documentID` int(11) NOT NULL,
  `filePath` varchar(100) NOT NULL,
  `meetingCode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeDetails`
--

CREATE TABLE `EmployeeDetails` (
  `empID` int(11) NOT NULL,
  `fName` varchar(15) NOT NULL,
  `sName` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `passwords` varchar(20) NOT NULL,
  `department` varchar(15) NOT NULL,
  `rank` varchar(10) DEFAULT NULL,
  `dateRegistered` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EmployeeDetails`
--

INSERT INTO `EmployeeDetails` (`empID`, `fName`, `sName`, `username`, `passwords`, `department`, `rank`, `dateRegistered`) VALUES
(1, 'John', 'Wick', 'JohnWick', '1234', 'Department A', NULL, '2024-01-29'),
(2, 'John', 'Snow', 'JohnSnow', 'Snow12', 'Department B', 'admin', '2024-01-29'),
(3, 'John', 'Magufuli', 'JohnMagufuli', '12Magu', 'Department B', NULL, '2024-01-29'),
(4, 'John', 'Terry', 'JohnTerry', '123Terry', 'Department B', NULL, '2024-01-29'),
(8, '', '', 'admin', '12Terry', '', NULL, '2024-04-11'),
(10, 'augustine', 'raphael', 'augustineraphael', 'augustine', 'Department A', NULL, '2024-05-10'),
(11, 'augustine', 'kadimu', 'augustinekadimu', 'augustine', 'Department B', NULL, '2024-05-10'),
(12, 'Erling ', 'Haaland', 'Erling Haaland', '12Terry', 'Department B', 'admin', '2024-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `meetingId` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `descriptions` varchar(400) NOT NULL,
  `department` varchar(15) NOT NULL,
  `tarehe` varchar(10) NOT NULL,
  `muda` varchar(10) NOT NULL,
  `endTime` varchar(10) NOT NULL,
  `venue` varchar(20) NOT NULL,
  `meetingCode` varchar(25) NOT NULL,
  `dateCreated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`meetingId`, `title`, `descriptions`, `department`, `tarehe`, `muda`, `endTime`, `venue`, `meetingCode`, `dateCreated`) VALUES
(1, 'abc', 'thi is desc\r\n                            ', 'Department B', '2024-01-31', '13:00', '', 'dodoma city', '20240129064647JohnSnow', '2024-01-31'),
(2, 'kikao kingine', 'Hii ni description ya kikao kingine\r\n                            ', 'Department B', '2024-02-06', '16:00', '', 'Mlimani city', '20240206121346johnSnow', '2024-02-06'),
(3, 'kikaooo', '\r\n                            yutfgdxc', 'Department A', '2024-03-21', '01:07', '', 'dodoma', '20240322180807johnSnow', '2024-03-22'),
(4, 'MEETING 1', 'MEETING 1 description yake \r\n                            ', 'Department B', '2024-03-20', '22:09', '', 'dar', '20240322180949johnSnow', '2024-03-22'),
(5, 'NEW MEETING', 'sample description\r\n                            ', 'Department B', '2024-03-22', '23:30', '', 'UDOM, CIVE', '20240322183443johnSnow', '2024-03-22'),
(6, 'KIKAO', 'ARRIVE EARLY\r\n                            ', 'Department A', '2024-03-22', '23:30', '', 'UDOM, CIVE', '20240510115446admin', '2024-05-10'),
(7, 'kikaooo', 'sample meeting', 'Department C', '2024-06-01', '15:30', '', '1', '20240516122711johnSnow', '2024-05-16'),
(8, 'new meeting', 'testing non local venue', 'Department A', '2024-05-17', '15:30', '', '1', '20240516122841johnSnow', '2024-05-16'),
(9, 'sample testing 2', 'new sampling', 'Department B', '2024-05-24', '14:30', '', '1', '20240516123042johnSnow', '2024-05-16'),
(10, 'title ya mwisho', 'sampled title', 'Department B', '2024-05-17', '15:38', '', 'venue tu', '20240516123438johnSnow', '2024-05-16'),
(11, 'sample again', 'sample description\r\n                            ', 'Department C', '2024-05-25', '13:37', '', 'mtaani', '20240516123534johnSnow', '2024-05-16'),
(12, 'mpya', 'ambayo ipo\r\n                            ', 'Department C', '2024-05-29', '15:40', '', 'Venue B', '20240516123605johnSnow', '2024-05-16'),
(13, 'mfano ', 'desfasdjk\r\n                            ', 'Department B', '2024-05-25', '16:40', '', 'Venue A', '20240516123813johnSnow', '2024-05-16'),
(14, 'haipo', 'description', 'Department C', '2024-05-19', '15:40', '', 'mkapa', '20240516123858johnSnow', '2024-05-16'),
(15, 'sample', 'dficjvxk\r\n                            ', 'Department C', '2024-05-18', '15:50', '', 'fivde', '20240516124826johnSnow', '2024-05-16'),
(16, 'this is a sample', 'another sample\r\n                            ', 'Department B', '2024-05-23', '15:50', '', 'Venue B', '20240516124941johnSnow', '2024-05-16'),
(17, 'sample', 'sanotedsfinjkxc', 'Department B', '2024-05-25', '14:55', '', 'dodoma', '20240516125113johnSnow', '2024-05-16'),
(18, 'anotehr trial', 'sampled', 'Department B', '2024-05-26', '13:52', '', 'Venue D', '20240516125150johnSnow', '2024-05-16'),
(19, 'new sample', 'das descritpion\r\n                            ', 'Department B', '2024-05-25', '18:00', '', 'Venue B', '20240516125534johnSnow', '2024-05-16'),
(20, 'dfijnvkc nm', 'testinggg!\r\n                            ', 'Department B', '2024-05-25', '18:00', '', 'Venue B', '20240516125723johnSnow', '2024-05-16'),
(21, 'sample title', 'sample description\r\n                            ', 'Department B', '2024-05-25', '18:05', '', 'Venue B', '20240517094112admin', '2024-05-17'),
(22, 'sample title', 'sample description', 'Department B', '2024-05-18', '18:00', '', 'Venue B', '20240517094149admin', '2024-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `rId` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `reason` varchar(1000) NOT NULL,
  `meetingCode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`rId`, `username`, `reason`, `meetingCode`) VALUES
(1, 'JohnSnow', '\r\n                            i will no attend', 'doododo'),
(2, 'JohnSnow', 'i will not attend because i do not want aiseee!!', '20240129064647JohnSnow'),
(3, 'JohnSnow', 'i live by my own', '20240129064647JohnSnow'),
(4, 'JohnSnow', 'i live by my own', '20240129064647JohnSnow'),
(5, 'johnTerry', 'Mimi Terry sijiiiiii', '20240129064647JohnSnow'),
(6, 'johnMagufuli', 'mimi Magufuli sitakuwepo kwa sababu ya ziara ya dharura', '20240206121346johnSnow'),
(7, 'johnSnow', 'siji\r\n\r\n                            ', '20240206121346johnSnow');

-- --------------------------------------------------------

--
-- Table structure for table `viewed`
--

CREATE TABLE `viewed` (
  `invitationId` int(11) NOT NULL,
  `meetingCode` varchar(25) NOT NULL,
  `viewed` varchar(20) NOT NULL,
  `dateViewed` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CMMSSession`
--
ALTER TABLE `CMMSSession`
  ADD PRIMARY KEY (`sessId`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`documentID`);

--
-- Indexes for table `EmployeeDetails`
--
ALTER TABLE `EmployeeDetails`
  ADD PRIMARY KEY (`empID`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`meetingId`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`rId`);

--
-- Indexes for table `viewed`
--
ALTER TABLE `viewed`
  ADD PRIMARY KEY (`invitationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CMMSSession`
--
ALTER TABLE `CMMSSession`
  MODIFY `sessId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `documentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EmployeeDetails`
--
ALTER TABLE `EmployeeDetails`
  MODIFY `empID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `meetingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `rId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `viewed`
--
ALTER TABLE `viewed`
  MODIFY `invitationId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
