-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 10:09 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
`id` int(11) NOT NULL,
  `middlename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=123458 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Firstname`, `Lastname`, `id`, `middlename`) VALUES
('RUMAR', 'PAMPARO', 123456, 'CAPOQUIAN'),
('JEHIAH', 'ESTRADA', 123457, 'CAPACIA');

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity`
--

CREATE TABLE IF NOT EXISTS `tblactivity` (
  `activityID` int(50) NOT NULL,
  `dateofactivity` int(50) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `userID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbarangayofficials`
--

CREATE TABLE IF NOT EXISTS `tblbarangayofficials` (
  `officialID` int(50) NOT NULL,
  `residentID` int(50) NOT NULL,
  `termstart` varchar(100) NOT NULL,
  `termend` varchar(100) NOT NULL,
  `termindex` varchar(100) NOT NULL,
  `setcurrent` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE IF NOT EXISTS `tblblotter` (
  `blotterID` int(50) NOT NULL,
  `yearrecorded` int(50) NOT NULL,
  `daterecorded` int(50) NOT NULL,
  `complain` varchar(100) NOT NULL,
  `cAge` int(50) NOT NULL,
  `cAddress` varchar(100) NOT NULL,
  `cContact` int(50) NOT NULL,
  `persontcomplain` varchar(100) NOT NULL,
  `pAge` int(50) NOT NULL,
  `pAddress` varchar(100) NOT NULL,
  `pContact` int(50) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `actiontaken` varchar(100) NOT NULL,
  `complaintstatus` varchar(100) NOT NULL,
  `locationofincident` varchar(100) NOT NULL,
  `userID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblclearance`
--

CREATE TABLE IF NOT EXISTS `tblclearance` (
  `clearanceID` int(50) NOT NULL,
  `residentID` int(50) NOT NULL,
  `daterecorded` date NOT NULL,
  `amount` int(50) NOT NULL,
  `or-no` int(50) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  ` encoded` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblhousehold`
--

CREATE TABLE IF NOT EXISTS `tblhousehold` (
  `householdID` int(50) NOT NULL,
  `householdnumber` int(50) NOT NULL,
  `zoneID` int(50) NOT NULL,
  `householdmember` varchar(100) NOT NULL,
  `headoffamily` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhousehold`
--

INSERT INTO `tblhousehold` (`householdID`, `householdnumber`, `zoneID`, `householdmember`, `headoffamily`) VALUES
(1, 33, 4, 'rumar', 'rumar'),
(65, 876, 86, 'judy', 'judy'),
(76, 786, 6, 'yfuy', 'ihub');

-- --------------------------------------------------------

--
-- Table structure for table `tbllog`
--

CREATE TABLE IF NOT EXISTS `tbllog` (
  `logID` int(50) NOT NULL,
  `userID` int(50) NOT NULL,
  `logdate` date NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE IF NOT EXISTS `tblpermit` (
  `permitID` int(50) NOT NULL,
  `residentID` int(50) NOT NULL,
  `businessname` varchar(50) NOT NULL,
  `businessaddress` varchar(100) NOT NULL,
  `typeofbusiness` varchar(50) NOT NULL,
  `or_no` int(50) NOT NULL,
  `amount` int(10) NOT NULL,
  `daterecorded` date NOT NULL,
  `userID` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpurok`
--

CREATE TABLE IF NOT EXISTS `tblpurok` (
  `purokID` int(100) NOT NULL,
  `purokname` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpurok`
--

INSERT INTO `tblpurok` (`purokID`, `purokname`, `remarks`) VALUES
(22, 'purok 1', 'ighirughrt'),
(11, 'purok 2', 'fdbvfd'),
(33, 'purok 3', 'ldnhcvjfb');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurokpresident`
--

CREATE TABLE IF NOT EXISTS `tblpurokpresident` (
`purokpresID` int(50) NOT NULL,
  `residentID` int(50) NOT NULL,
  `termStart` varchar(100) NOT NULL,
  `termEnd` varchar(100) NOT NULL,
  `termIndex` varchar(100) NOT NULL,
  `setcurrent` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblresidentinfo`
--

CREATE TABLE IF NOT EXISTS `tblresidentinfo` (
  `residentID` int(50) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `bdate` date NOT NULL,
  `age` int(3) NOT NULL,
  `purokID` int(50) NOT NULL,
  `civilstatus` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `completeaddress` varchar(100) NOT NULL,
  `contactnumber` int(11) NOT NULL,
  `withPhilhealth` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `highestEducAttainment` varchar(100) NOT NULL,
  `houseOwnership` varchar(100) NOT NULL,
  `lengthOfStay` varchar(100) NOT NULL,
  `household` varchar(100) NOT NULL,
  `withSSS` varchar(100) NOT NULL,
  `income` int(100) NOT NULL,
  `member4Ps` varchar(100) NOT NULL,
  `voterStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsecurity`
--

CREATE TABLE IF NOT EXISTS `tblsecurity` (
  `uname` varchar(100) NOT NULL,
  `pword` varchar(100) NOT NULL,
  `acctype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsecurity`
--

INSERT INTO `tblsecurity` (`uname`, `pword`, `acctype`) VALUES
('admin@gmail.com', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE IF NOT EXISTS `tbluseraccount` (
  `userID` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `contact` int(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`userID`, `fullname`, `position`, `contact`, `address`, `username`, `pword`) VALUES
(123, 'jehiah estrada', 'preident', 1111111, 'cagayan', 'hiah', 'cute'),
(124, 'rosemarie delacruz', 'secretary', 222222, 'baggao', 'rose', 'cute1'),
(125, 'judy anne delosantos', 'auditor', 333333, 'alcala', 'judz', 'cute2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivity`
--
ALTER TABLE `tblactivity`
 ADD PRIMARY KEY (`activityID`);

--
-- Indexes for table `tblbarangayofficials`
--
ALTER TABLE `tblbarangayofficials`
 ADD PRIMARY KEY (`officialID`);

--
-- Indexes for table `tblblotter`
--
ALTER TABLE `tblblotter`
 ADD PRIMARY KEY (`blotterID`);

--
-- Indexes for table `tblhousehold`
--
ALTER TABLE `tblhousehold`
 ADD PRIMARY KEY (`householdID`);

--
-- Indexes for table `tbllog`
--
ALTER TABLE `tbllog`
 ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `tblpermit`
--
ALTER TABLE `tblpermit`
 ADD PRIMARY KEY (`permitID`);

--
-- Indexes for table `tblpurokpresident`
--
ALTER TABLE `tblpurokpresident`
 ADD PRIMARY KEY (`purokpresID`);

--
-- Indexes for table `tblresidentinfo`
--
ALTER TABLE `tblresidentinfo`
 ADD PRIMARY KEY (`residentID`);

--
-- Indexes for table `tblsecurity`
--
ALTER TABLE `tblsecurity`
 ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
 ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123458;
--
-- AUTO_INCREMENT for table `tblpurokpresident`
--
ALTER TABLE `tblpurokpresident`
MODIFY `purokpresID` int(50) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
