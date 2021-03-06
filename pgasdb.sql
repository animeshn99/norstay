-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 26, 2020 at 02:53 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblpg`
--

DROP TABLE IF EXISTS `tblpg`;
CREATE TABLE IF NOT EXISTS `tblpg` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `OwnerID` int(20) NOT NULL,
  `StateName` varchar(200) DEFAULT NULL,
  `CityName` varchar(200) DEFAULT NULL,
  `PGTitle` varchar(200) DEFAULT NULL,
  `Type` varchar(120) DEFAULT NULL,
  `RPmonth` varchar(120) DEFAULT NULL,
  `norooms` varchar(45) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `AC` varchar(40) DEFAULT NULL,
  `Laundry` varchar(40) DEFAULT NULL,
  `Security` varchar(40) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` int(1) DEFAULT '1',
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `msg` text,
  `isVerified` int(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpg`
--

INSERT INTO `tblpg` (`ID`, `OwnerID`, `StateName`, `CityName`, `PGTitle`, `Type`, `RPmonth`, `norooms`, `Address`, `Image`, `AC`, `Laundry`, `Security`, `RegDate`, `IsActive`, `LastUpdationDate`, `msg`, `isVerified`) VALUES
(11, 1, 'Utter Pradesh', 'Lucknow', 'Janki Devi PG House', 'Both', '7000', '10', 'Hazrat Ganj D-145 near cant road', '4a4d107c7d7cfa34e099dc3484ade755.jpg', 'Yes', 'Yes', 'Yes', '2019-05-08 11:29:10', NULL, '2019-06-07 07:23:02', NULL, NULL),
(13, 1, 'Madhya Pradesh', 'Indore', 'Sanjay PG House', 'Girls', '5000', '5', 'A-178, Nehru Marg near reliance fresh', '1e6ae4ada992769567b71815f124fac5.jpg', 'Yes', 'Yes', 'Yes', '2019-05-08 12:20:44', NULL, NULL, NULL, NULL),
(14, 1, 'Utter Pradesh', 'Allahabad', 'KGM PG House', 'Both', '6000', '6', 'D-145678 Near jaharlal nehru road', 'efc1a80c391be252d7d777a437f86870.jpg', 'Yes', 'Yes', 'Yes', '2019-05-08 15:45:41', NULL, NULL, NULL, NULL),
(16, 2, 'Madhya Pradesh', 'Jaipur', 'Baba PG', '', '4000', '5', 'D-124,fhgfytkjuol', 'b9fb9d37bdf15a699bc071ce49baea53.jpg', 'No', 'No', 'Yes', '2019-05-08 15:49:48', NULL, '2019-06-14 17:55:12', NULL, NULL),
(20, 3, 'Tamilnadu', 'Chennai', 'Test PG', '', '10000', '10', 'Chennai', 'ca4851415e6adf8c1f187327c9e5d0fe.jpg', 'Yes', 'Yes', 'Yes', '2019-06-18 18:18:15', NULL, '2019-06-18 18:18:57', NULL, NULL),
(21, 5, 'Utter Pradesh', 'Banaras', 'Pan', 'Boys', '50000000', '400', 'Silicon Institute of technology, Silicon Hills,Patia', 'bd6f02976ba52ceecea8ebb055000432.PNG', 'No', 'No', 'No', '2020-01-13 17:58:19', NULL, NULL, NULL, NULL),
(22, 4, 'Madhya Pradesh', 'Jaipur', 'test', 'Commercial', '200', '5', 'Silicon Institute of technology, Silicon Hills,Patia', '685d95f2dfc77979d5dd1d7e429dd963.PNG', 'Yes', 'No', 'Yes', '2020-01-19 05:25:21', NULL, NULL, 'ok', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 26, 2020 at 02:54 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

DROP TABLE IF EXISTS `tblowner`;
CREATE TABLE IF NOT EXISTS `tblowner` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Gender` char(1) DEFAULT 'M',
  `Address` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Aadhar` int(12) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `otp` varchar(10) DEFAULT NULL,
  `active` varchar(1) DEFAULT '0',
  `isVerfied` int(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

INSERT INTO `tblowner` (`ID`, `FullName`, `LastName`, `Email`, `MobileNumber`, `Gender`, `Address`, `Password`, `Aadhar`, `RegDate`, `otp`, `active`, `isVerfied`) VALUES
(1, 'Anurag', 'Upadhyay', 'anuragle100@gmail.com', 7327062264, 'M', '29/11 Joydev road', 'e10adc3949ba59abbe56e057f20f883e', 123412341, '2020-01-13 18:30:24', '12345', '0', 0),
(4, 'Anurag', 'Upadhyay', 'anurag@gmail.com', 7327062264, 'M', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '2020-01-18 09:43:21', NULL, '0', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
