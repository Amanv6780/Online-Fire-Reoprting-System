-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 12:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` bigint(12) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `userRole` int(1) DEFAULT NULL,
  `isActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `userRole`, `isActive`) VALUES
(1, 'Admin', 'admin', 8743215647, 'admin@gmail.com', 'admin@123', '2022-02-24 13:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfirereport`
--

CREATE TABLE `tblfirereport` (
  `id` int(11) NOT NULL,
  `fullName` varchar(225) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `location` mediumtext DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `assignTo` int(11) DEFAULT NULL,
  `assignTme` varchar(225) NOT NULL,
  `status` varchar(100) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `assignTime` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfirereport`
--

INSERT INTO `tblfirereport` (`id`, `fullName`, `mobileNumber`, `location`, `message`, `assignTo`, `assignTme`, `status`, `postingDate`, `assignTime`) VALUES
(1, 'Aman', 8837783395, 'Lpu law gate', 'Fire near auto stand', 1, '29-10-23 11:10:24', 'Request Completed', '2023-10-28 11:23:26', ''),
(2, 'Amit', 9856314725, 'ludhiana', 'major fire break', NULL, '', '', '2023-10-28 14:17:09', ''),
(3, 'Ravi', 7885365418, 'jalandhar', 'near bus stand a huge fire', NULL, '', '', '2023-10-29 11:52:08', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblfiretequesthistory`
--

CREATE TABLE `tblfiretequesthistory` (
  `id` int(11) NOT NULL,
  `requestId` int(11) DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfiretequesthistory`
--

INSERT INTO `tblfiretequesthistory` (`id`, `requestId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'Request Completed', 'completed', '2023-10-29 10:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblteams`
--

CREATE TABLE `tblteams` (
  `id` int(11) NOT NULL,
  `teamName` varchar(225) DEFAULT NULL,
  `teamLeaderName` varchar(225) DEFAULT NULL,
  `teamLeadMobno` bigint(12) DEFAULT NULL,
  `teamMembers` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblteams`
--

INSERT INTO `tblteams` (`id`, `teamName`, `teamLeaderName`, `teamLeadMobno`, `teamMembers`, `postingDate`) VALUES
(1, 'Team 1', 'Jack', 6657895124, 'John,Rohit,Sahil,Raushan', '2023-10-29 10:43:05'),
(3, 'Team 2', 'Sahil', 6657895124, 'Aditya,Amar,Rahul,Ankit', '2023-10-29 11:06:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfirereport`
--
ALTER TABLE `tblfirereport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiretequesthistory`
--
ALTER TABLE `tblfiretequesthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblteams`
--
ALTER TABLE `tblteams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblfirereport`
--
ALTER TABLE `tblfirereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblfiretequesthistory`
--
ALTER TABLE `tblfiretequesthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblteams`
--
ALTER TABLE `tblteams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
