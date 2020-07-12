-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2020 at 01:40 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `KPLsaa2Lyx`
--
CREATE DATABASE IF NOT EXISTS `KPLsaa2Lyx` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `KPLsaa2Lyx`;
-- --------------------------------------------------------

--
-- Table structure for table `analytic_counter`
--

CREATE TABLE `analytic_counter` (
  `lastUpdate` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '2020/01/01'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `analytic_counter`
--

INSERT INTO `analytic_counter` (`lastUpdate`) VALUES
('2020/06/21');

-- --------------------------------------------------------

--
-- Table structure for table `analytic_info`
--

CREATE TABLE `analytic_info` (
  `customerID` int(11) NOT NULL,
  `customerType` int(45) NOT NULL DEFAULT '1',
  `fuelAmount` float NOT NULL DEFAULT '0',
  `motorCustomer` int(11) NOT NULL DEFAULT '0',
  `benzinCustomer` int(11) NOT NULL DEFAULT '0',
  `solerCustomer` int(11) NOT NULL DEFAULT '0',
  `fuelingHours` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `analytic_info`
--

INSERT INTO `analytic_info` (`customerID`, `customerType`, `fuelAmount`, `motorCustomer`, `benzinCustomer`, `solerCustomer`, `fuelingHours`) VALUES
(1234, 10, 26543.2, 72, 3, 7, '[00, 11, 22, 12, 01, 23, 13, 02, 14, 03, 15, 16, 17, 18, 19, 20, 21]'),
(111222111, 1, 0, 0, 0, 0, '[]'),
(114562435, 1, 0, 0, 0, 0, '[]'),
(122211122, 1, 0, 0, 0, 0, '[]'),
(123123112, 1, 0, 0, 0, 0, '[]'),
(135241364, 1, 0, 0, 0, 0, '[]'),
(192837465, 4, 71, 5, 0, 0, '[23, 02, 16, 17]'),
(222135423, 1, 0, 0, 0, 0, '[]'),
(222233334, 3, 50, 1, 0, 0, '[00]'),
(333333333, 4, 62, 0, 0, 2, '[01, 16]'),
(362536254, 1, 0, 0, 0, 0, '[]'),
(369786521, 3, 12, 1, 0, 0, '[12]'),
(778920311, 1, 0, 0, 0, 0, '[]'),
(951753258, 3, 18, 0, 1, 0, '[12]');

-- --------------------------------------------------------

--
-- Table structure for table `companys`
--

CREATE TABLE `companys` (
  `companyTag` int(11) NOT NULL,
  `companyName` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companys`
--

INSERT INTO `companys` (`companyTag`, `companyName`) VALUES
(1, 'Sonol'),
(2, 'Dor Alon'),
(3, 'Ten'),
(4, 'Paz'),
(5, 'Delek'),
(6, 'N.R.G');

-- --------------------------------------------------------

--
-- Table structure for table `company_count_discount`
--

CREATE TABLE `company_count_discount` (
  `companyCount` int(11) NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_count_discount`
--

INSERT INTO `company_count_discount` (`companyCount`, `discount`) VALUES
(0, 0),
(1, 1),
(2, 0.7),
(3, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `credit_info`
--

CREATE TABLE `credit_info` (
  `credit` bigint(16) NOT NULL,
  `expMonth` int(11) NOT NULL,
  `expYear` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `credit_info`
--

INSERT INTO `credit_info` (`credit`, `expMonth`, `expYear`, `cvv`, `userID`) VALUES
(123444, 11, 23, 155, 44),
(52161561, 1, 27, 369, 222),
(521615611, 1, 27, 369, 226),
(521615611, 1, 27, 369, 227),
(345216875, 7, 28, 326, 229),
(364892569, 3, 20, 318, 230),
(551364324353, 3, 28, 251, 231),
(1111222233334444, 2, 24, 123, 1136),
(111222111222, 2, 22, 554, 1137),
(1111222233331234, 2, 22, 112, 1138),
(6643416533452, 2, 23, 664, 1142),
(16236348353244, 2, 21, 421, 1143),
(1111111111, 12, 12, 123, 11111),
(111111111111, 121, 1212, 121, 11212121);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `firstName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `credit` bigint(17) NOT NULL,
  `userID` int(11) NOT NULL,
  `customerType` int(11) NOT NULL,
  `companyName` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`firstName`, `lastName`, `ID`, `email`, `credit`, `userID`, `customerType`, `companyName`) VALUES
('Itay', 'Hogi', 1234, 'itay@gmail.com', 123444, 44, 1, NULL),
('Hen', 'HaCohen', 778920311, 'hen@cohen.king', 52161561, 222, 1, NULL),
('Yogev', 'Cohen', 192837465, 'yogev@cohen.agent', 5216161, 224, 1, NULL),
('Yogev1', 'Cohen', 951753258, 'you@never.gonna', 521615611, 226, 1, NULL),
('Akababa', 'Ben Hararit', 333333333, 'yoni@the.gever', 521615611, 227, 1, NULL),
('yoni', 'ben shitrit', 362536254, 'yoni@ben.shitrit', 345216875, 229, 1, NULL),
('Liran', 'Amilov', 369786521, 'liran@amilov.com', 364892569, 230, 1, NULL),
(NULL, NULL, 222233334, 'test@tester.com', 551364324353, 231, 0, 'Tester'),
('ali', 'baba', 222135423, 'Arab@dod', 1111222233334444, 1136, 1, NULL),
(NULL, NULL, 111222111, 'Amz@tr.com', 111222111222, 1137, 0, 'Amzalm tours'),
(NULL, NULL, 123123112, 'simu@lation.com', 1111222233331234, 1138, 0, 'Test Koki'),
('aaasdsds', 'aaasss', 122211122, '11a@asd', 123111112211122, 1139, 1, NULL),
(NULL, NULL, 114562435, 'night@ads', 6643416533452, 1142, 0, 'final simu'),
(NULL, NULL, 135241364, 'asd@asd', 16236348353244, 1143, 0, 'asdada');

-- --------------------------------------------------------

--
-- Table structure for table `customer_notifications`
--

CREATE TABLE `customer_notifications` (
  `customerID` int(11) NOT NULL,
  `topic` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `notifynumber` int(11) NOT NULL,
  `statusNew` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_notifications`
--

INSERT INTO `customer_notifications` (`customerID`, `topic`, `date`, `description`, `notifynumber`, `statusNew`) VALUES
(192837465, 'Vehicle refule receipt', '16/06/2020', 'The order has been placed on: 16/06/2020\n\nThe quantity is: 2L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 99999991\n\nThe ReFuel price is: 8.82\n\nStationTag: 1111\n\nThe Station details: Haifa, Koki-Gas\n\nThe Sale percent: 5.0%\n\nThe Sale name: koki\n\nThe Sale description: koki\n\n', 148, 0),
(192837465, 'HomeFuel receipt', '16/06/2020', 'The order has been placed on: 16/06/2020\n\nThe Supply date: 16/06/2020\n\nThe quantity is: 870L\n\nThe Supply price is: 4263.0\n\nUrgent: YES\n\nAddress: koki', 149, 0),
(192837465, 'Vehicle refule receipt', '16/06/2020', 'The order has been placed on: 16/06/2020\n\nThe quantity is: 34L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 99999991\n\nThe ReFuel price is: 149.94\n\nStationTag: 1111\n\nThe Station details: Haifa, Koki-Gas\n\nThe Sale percent: 5.0%\n\nThe Sale name: koki\n\nThe Sale description: koki\n\n', 150, 0),
(333333333, 'Vehicle refule receipt', '16/06/2020', 'The order has been placed on: 16/06/2020\n\nThe quantity is: 12L\n\nThe Fuel Type: Soler\n\nThe Vehicle number: 3625252\n\nThe ReFuel price is: 27.72\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Sale percent: Not Available\n\n', 152, 1),
(369786521, 'Vehicle refule receipt', '17/06/2020', 'The order has been placed on: 17/06/2020\n\nThe quantity is: 12L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 32364978\n\nThe ReFuel price is: 46.451996\n\nStationTag: 1445\n\nThe Station details: Tel-Aviv, Fast&Furious\n\nThe Sale percent: 12.0%\n\nThe Sale name: go go picacho\n\nThe Sale description: pokemon\n\n', 174, 1),
(1234, 'HomeFuel receipt', '18/06/2020', 'The order has been placed on: 18/06/2020\n\nThe Supply date: 18/06/2020\n\nThe quantity is: 100L\n\nThe Supply price is: 408.0\n\nUrgent: YES\n\nAddress: haifa', 180, 0),
(1234, 'Vehicle refule receipt', '18/06/2020', 'The order has been placed on: 18/06/2020\n\nThe quantity is: 15L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 51.975\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Sale percent: 10.0%\n\nThe Sale name: Happy Afternoon\n\nThe Sale description: sale for two hours afternoon\n\n', 181, 0),
(1234, 'HomeFuel receipt', '18/06/2020', 'The order has been placed on: 18/06/2020\n\nThe Supply date: 25/06/2020\n\nThe quantity is: 1L\n\nThe Supply price is: 4.0\n\nUrgent: NO\n\nAddress: 1', 183, 0),
(1234, 'Vehicle refule receipt', '18/06/2020', 'The order has been placed on: 18/06/2020\n\nThe quantity is: 12L\n\nThe Fuel Type: Soler\n\nThe Vehicle number: 1111\n\nThe ReFuel price is: 71.4\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Sale percent: Not Available\n\n', 189, 0),
(1234, 'HomeFuel receipt', '18/06/2020', 'The order has been placed on: 18/06/2020\n\nThe Supply date: 25/06/2020\n\nThe quantity is: 12L\n\nThe Supply price is: 48.0\n\nUrgent: NO\n\nAddress: 121', 193, 0),
(1234, 'HomeFuel receipt', '18/06/2020', 'The order has been placed on: 18/06/2020\n\nThe Supply date: 18/06/2020\n\nThe quantity is: 12L\n\nThe Supply price is: 48.96\n\nUrgent: YES\n\nAddress: 66', 201, 0),
(1234, 'HomeFuel receipt', '19/06/2020', 'The order has been placed on: 19/06/2020\n\nThe Supply date: 19/06/2020\n\nThe quantity is: 12L\n\nThe Supply price is: 48.96\n\nUrgent: YES\n\nAddress: sede ilan', 204, 0),
(333333333, 'Vehicle refule receipt', '19/06/2020', 'The order has been placed on: 19/06/2020\n\nThe quantity is: 50L\n\nThe Fuel Type: Soler\n\nThe Vehicle number: 3625252\n\nThe ReFuel price is: 325.0\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Sale percent: Not Available\n\n', 206, 1),
(1234, 'Vehicle refule receipt', '19/06/2020', 'The order has been placed on: 19/06/2020\n\nThe quantity is: 1400L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 5831.0\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Sale percent: Not Available\n\n', 207, 0),
(192837465, 'Vehicle refule receipt', '19/06/2020', 'The order has been placed on: 19/06/2020\n\nThe quantity is: 12L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 99999991\n\nThe ReFuel price is: 50.82\n\nStationTag: 2222\n\nThe Station details: Jerusalem, kokiel-Gas\n\nThe Sale percent: Not Available\n\n', 208, 0),
(1234, 'Vehicle refule receipt', '19/06/2020', 'The order has been placed on: 19/06/2020\n\nThe quantity is: 18L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 62.370003\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Sale percent: 10.0%\n\nThe Sale name: Happy Afternoon\n\nThe Sale description: sale for two hours afternoon\n\n', 209, 0),
(1234, 'Vehicle refule receipt', '19/06/2020', 'The order has been placed on: 19/06/2020\n\nThe quantity is: 18L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 62.370003\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe gas station sale percent: 10.0%\n\nThe Sale name: Happy Afternoon\n\nThe Sale description: sale for two hours afternoon\n\n', 210, 0),
(192837465, 'Vehicle refule receipt', '19/06/2020', 'The order has been placed on: 19/06/2020\n\nThe quantity is: 12L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 99999991\n\nThe ReFuel price is: 46.620003\n\nStationTag: 1111\n\nThe Station details: Haifa, Koki-Gas\n\nThe Sale percent: 5.0%\n\nThe Sale name: koki\n\nThe Sale description: koki\n\n', 211, 0),
(951753258, 'Vehicle refule receipt', '20/06/2020', 'The order has been placed on: 20/06/2020\n\nThe quantity is: 18L\n\nThe Fuel Type: Benzin\n\nThe Vehicle number: 1234532\n\nThe ReFuel price is: 90.18\n\nStationTag: 1325\n\nThe Station details: Tiberius, Mifgash-24\n\nThe gas station sale percent: Not Available\n\n', 216, 1),
(1234, 'Vehicle refule receipt', '20/06/2020', 'The order has been placed on: 20/06/2020\n\nThe quantity is: 30L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 162.75\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Sale percent: Not Available\n\n', 217, 0),
(1234, 'Vehicle refule receipt', '20/06/2020', 'The order has been placed on: 20/06/2020\n\nThe quantity is: 18L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 43.47\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe gas station sale percent: 50.0%\n\nThe Sale name: For test\n\nThe Sale description: test reasons\n\n', 220, 0),
(1234, 'Vehicle refule receipt', '20/06/2020', 'The order has been placed on: 20/06/2020\n\nThe quantity is: 100L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 241.5\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Gas Station Sale percent: 50.0%\n\nThe Sale name: For test\n\nThe Sale description: test reasons\n\n', 221, 0),
(1234, 'HomeFuel receipt', '20/06/2020', 'The order has been placed on: 20/06/2020\n\nThe Supply date: 24/06/2020\n\nThe quantity is: 870L\n\nThe Supply price is: 3340.7998ILS\n\nUrgent: NO\n\nThe Sale discount: 4%\n\nAddress: sde', 223, 1),
(1234, 'HomeFuel receipt', '20/06/2020', 'The order has been placed on: 20/06/2020\n\nThe Supply date: 21/06/2020\n\nThe quantity is: 100L\n\nThe Supply price is: 400.0\n\nUrgent: NO\n\nAddress: kiryat motzkin', 224, 1),
(1234, 'Vehicle refule receipt', '21/06/2020', 'The order has been placed on: 21/06/2020\n\nThe quantity is: 32L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 197.12\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Gas Station Sale percent: Not Available\n\n', 237, 1),
(1234, 'HomeFuel receipt', '21/06/2020', 'The order has been placed on: 21/06/2020\n\nThe Supply date: 21/06/2020\n\nThe quantity is: 345L\n\nThe Supply price is: 1407.6ILS\n\nUrgent: YES\n\nAddress: 123', 238, 0),
(1234, 'Vehicle refule receipt', '21/06/2020', 'The order has been placed on: 21/06/2020\n\nThe quantity is: 18L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 110.88\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Gas Station Sale percent: Not Available\n\n', 239, 1),
(1234, 'Vehicle refule receipt', '21/06/2020', 'The order has been placed on: 21/06/2020\n\nThe quantity is: 25L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 136.5\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Gas Station Sale percent: Not Available\n\n', 240, 1),
(1234, 'HomeFuel receipt', '21/06/2020', 'The order has been placed on: 21/06/2020\n\nThe Supply date: 21/06/2020\n\nThe quantity is: 1000L\n\nThe Supply price is: 2937.5999ILS\n\nUrgent: YES\n\nThe Sale discount: 4%\n\nAddress: aasd', 241, 0),
(1234, 'HomeFuel receipt', '21/06/2020', 'The order has been placed on: 21/06/2020\n\nThe Supply date: 24/06/2020\n\nThe quantity is: 120L\n\nThe Supply price is: 360.0ILS\n\nUrgent: NO\n\nAddress: asd', 242, 0),
(1234, 'Vehicle refule receipt', '21/06/2020', 'The order has been placed on: 21/06/2020\n\nThe quantity is: 13L\n\nThe Fuel Type: Motor\n\nThe Vehicle number: 696969\n\nThe ReFuel price is: 70.979996\n\nStationTag: 1122\n\nThe Station details: Afula, Ha\'Ahoza\n\nThe Gas Station Sale percent: Not Available\n\n', 243, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_rates`
--

CREATE TABLE `customer_rates` (
  `userID` int(11) NOT NULL,
  `rateType` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_rates`
--

INSERT INTO `customer_rates` (`userID`, `rateType`) VALUES
(44, 4),
(138, 1),
(222, 1),
(223, 1),
(224, 4),
(226, 2),
(227, 2),
(229, 1),
(230, 4),
(231, 1),
(1133, 1),
(1134, 1),
(1135, 1),
(1136, 4),
(1137, 3),
(1138, 4),
(1139, 1),
(1142, 1),
(1143, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `firstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `eid` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `orginization` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`firstName`, `lastName`, `eid`, `email`, `position`, `orginization`) VALUES
('Aliza', 'Hugi', 1010, 'LoveOfItay@gmail.com', 'Marketing Agent', 'Paz'),
('Meni', 'Rachmanov', 1111, 'MeniHgever@gmail.com', 'CEO', 'Paz'),
('Yoni', 'Ben-Shitrit', 1234, 'YoniBeitza@gmail.com', 'Smoker Manager', 'Paz'),
('Yarin', 'Cohen', 2222, 'Yarin&Shoko@gmail.com', 'Marketing Manager', 'Paz'),
('Yogev', 'Cohen', 3333, 'YogevHzeaOff@gmail.com', 'Supplier', 'none'),
('Hen', 'Cohen', 4444, 'HenOnTheMangal@gmail.com', 'CEO', 'Sonol'),
('Itay', 'Hogi', 5555, 'ItayTheKing@gmail.com', 'CEO', 'Sonol'),
('Coral', 'Rose', 7777, 'CoralBakeCake@gmail.com', 'Station Manager', 'Paz'),
('Sapir', 'Fiber', 8888, 'SapirWifeOfHen@gmail.com', 'Marketing Agent', 'Sonol'),
('Shoko', 'Cohen', 9999, 'ShokoToiletPaper@gmail.com', 'supllier', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `firstName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `eid` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `organizition` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`firstName`, `lastName`, `eid`, `email`, `position`, `organizition`, `userID`) VALUES
('Hen', 'HaCohen', 1, 'hen@g.com', 1, 'Paz', 1),
('Yogev', 'Cohen', 2, 'yog@g.com', 2, 'Sonol', 2),
('Menasher', 'Rachmanov', 3, 'men@g.com', 4, 'ERG', 4),
('Test', 'The Test', 4, 'test@g.com', 1, 'Yellow', 5),
('Yarin', 'Cohen', 5, 'yarin@g.com', 5, 'ERG', 123),
('Yoni', 'Ben Shitrit', 6, 'yoni@g.com', 6, 'Dor Alon', 55),
('Supplier2', 'Cohen', 7, 'sup2@gmail.com', 5, 'NRG', 221),
('sup1', 'Cohen', 8, 'sup1@gmail.com', 5, 'Paz', 111),
('StationTest', 'Tester', 10, 'Test@tester.com', 1, 'ERG', 102),
('Johnny', 'Depp', 133, 'pirate@karibim.com', 1, 'Paz', 1132);

-- --------------------------------------------------------

--
-- Table structure for table `fueling_hours`
--

CREATE TABLE `fueling_hours` (
  `customerID` int(11) NOT NULL,
  `fuelingHour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fuels`
--

CREATE TABLE `fuels` (
  `fuelType` int(11) NOT NULL,
  `fuelName` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fuels`
--

INSERT INTO `fuels` (`fuelType`, `fuelName`, `price`) VALUES
(1, 'Motor', 7),
(2, 'Benzin', 6),
(3, 'Soler', 10),
(4, 'homefuel', 3);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_reserves`
--

CREATE TABLE `fuel_reserves` (
  `fuelType` int(11) NOT NULL,
  `priceForLiter` float NOT NULL,
  `fuelInventory` float NOT NULL,
  `treshold` float NOT NULL,
  `maxQuantity` float NOT NULL,
  `stationTag` int(11) NOT NULL,
  `reserveTag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fuel_reserves`
--

INSERT INTO `fuel_reserves` (`fuelType`, `priceForLiter`, `fuelInventory`, `treshold`, `maxQuantity`, `stationTag`, `reserveTag`) VALUES
(1, 3.4, 1000, 300, 1000, 1325, 1),
(2, 4.21, 1100, 200, 1100, 1325, 2),
(3, 4.69, 500, 250, 500, 1325, 3),
(1, 3.34, 1487, 1410, 1500, 1122, 4),
(2, 4.12, 1100, 300, 1100, 1122, 5),
(3, 5.79, 1500, 1000, 1500, 1122, 6),
(1, 6.79, 1488, 200, 1500, 1111, 7),
(2, 12, 12000, 200, 12000, 1111, 8),
(3, 11, 15000, 50, 15000, 1111, 9),
(1, 4.6, 9988, 2000, 15000, 1445, 14),
(2, 4.6, 20000, 1000, 17000, 1445, 15),
(3, 1.8, 8000, 500, 9000, 1445, 16),
(1, 5.4, 788, 200, 1000, 2222, 17),
(2, 6, 800, 200, 1000, 2222, 18),
(3, 5, 800, 200, 1000, 2222, 19);

-- --------------------------------------------------------

--
-- Table structure for table `impending_rates`
--

CREATE TABLE `impending_rates` (
  `ratetype` int(11) NOT NULL,
  `userID` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `newDiscount` float NOT NULL,
  `comment` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_manager_notification`
--

CREATE TABLE `marketing_manager_notification` (
  `rare_type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marketing_manager_notification`
--

INSERT INTO `marketing_manager_notification` (`rare_type`, `date`, `description`, `status`) VALUES
('Routine monthly fuel - some cars', '2020/06/15_02:44:00', 'Reject', 0),
('Full monthly fuel - single car', '2020/06/15_02:44:14', 'Reject', 0),
('Casual fuel', '2020/06/15_02:56:00', 'Approve', 0),
('Casual fuel', '2020/06/15_02:59:38', 'Reject', 0),
('Routine monthly fuel - single car', '2020/06/15_02:59:43', 'Reject', 0),
('Casual fuel', '2020/06/18_00:46:37', 'Approve', 0),
('Routine monthly fuel - some cars', '2020/06/18_00:47:25', 'Reject', 0),
('Routine monthly fuel - some cars', '2020/06/20_18:39:05', 'Approve', 0),
('Full monthly fuel - single car', '2020/06/20_19:14:36', 'Reject', 0),
('Full monthly fuel - single car', '2020/06/20_22:31:36', 'Approve', 0),
('Routine monthly fuel - some cars', '2020/06/20_22:31:46', 'Approve', 0),
('Routine monthly fuel - single car', '2020/06/20_22:32:01', 'Approve', 0),
('Casual fuel', '2020/06/20_22:33:00', 'Approve', 0),
('Routine monthly fuel - single car', '2020/06/20_22:33:12', 'Approve', 0),
('Casual fuel', '2020/06/20_22:42:40', 'Approve', 0),
('Casual fuel', '2020/06/21_00:57:46', 'Approve', 0),
('Routine monthly fuel - single car', '2020/06/21_00:57:51', 'Reject', 0),
('Full monthly fuel - single car', '2020/06/21_00:57:55', 'Approve', 0),
('Routine monthly fuel - some cars', '2020/06/21_00:57:59', 'Approve', 0),
('Routine monthly fuel - single car', '2020/06/21_02:45:32', 'Approve', 0);

-- --------------------------------------------------------

--
-- Table structure for table `M_A_Notification`
--

CREATE TABLE `M_A_Notification` (
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `notificationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `M_A_Notification`
--

INSERT INTO `M_A_Notification` (`name`, `date`, `userID`, `description`, `notificationID`) VALUES
('Costumer Info Update', '2020/06/14_22:03:50', 2, 'Analytic System Updated Customer Information', 3),
('Costumer Info Update', '2020/06/14_22:25:08', 2, 'Analytic System Updated Customer Information', 5),
('Costumer Info Update', '2020/06/14_22:26:02', 2, 'Analytic System Updated Customer Information', 6),
('Costumer Info Update', '2020/06/21_02:52:28', 2, 'Analytic System Updated Customer Information', 8);

-- --------------------------------------------------------

--
-- Table structure for table `order_home_fuel`
--

CREATE TABLE `order_home_fuel` (
  `homeOrderTag` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `orderDate` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `supplyDate` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `urgent` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` float NOT NULL,
  `display` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_home_fuel`
--

INSERT INTO `order_home_fuel` (`homeOrderTag`, `userID`, `orderDate`, `supplyDate`, `price`, `status`, `urgent`, `address`, `quantity`, `display`) VALUES
(41, 44, '2020/06/10', '2020/06/16', 4800, 'Delivered', 'NO', 'koki house', 1000, 0),
(42, 44, '2020/06/10', '2020/06/10', 204, 'Delivered', 'YES', 'kokila', 40, 0),
(43, 44, '2020/06/10', '2020/06/10', 4165, 'Delivered', 'YES', 'koki house', 850, 0),
(44, 44, '2020/06/10', '2020/06/10', 4214, 'Delivered', 'YES', 'kokiii', 860, 0),
(45, 44, '2020/06/10', '2020/06/10', 3846.15, 'Delivered', 'YES', '65665', 777, 0),
(46, 44, '2020/06/11', '2020/06/22', 177, 'Not delivered', 'NO', 'koko house', 35.4, 0),
(47, 44, '2020/06/11', '2020/06/29', 3152.5, 'Not delivered', 'NO', 'yogev house', 650, 0),
(48, 44, '2020/06/11', '2020/06/24', 3395, 'Not delivered', 'NO', 'fdfd', 700, 0),
(49, 44, '2020/06/11', '2020/06/11', 5.1, 'Delivered', 'YES', '23', 1, 0),
(50, 44, '2020/06/11', '2020/06/11', 61.2, 'Delivered', 'YES', '323', 12, 0),
(51, 44, '2020/06/11', '2020/06/11', 15836.8, 'Delivered', 'YES', '2323', 3232, 0),
(52, 44, '2020/06/11', '2020/06/11', 341.7, 'Delivered', 'YES', '767', 67, 0),
(53, 44, '2020/06/11', '2020/06/11', 376158, 'Delivered', 'YES', '767', 76767, 0),
(54, 44, '2020/06/11', '2020/06/11', 627.3, 'Delivered', 'YES', '3232', 123, 0),
(55, 44, '2020/06/11', '2020/06/11', 10392.9, 'Delivered', 'YES', '2121', 2121, 0),
(56, 44, '2020/06/11', '2020/06/11', 617.1, 'Delivered', 'YES', '2121', 121, 0),
(57, 44, '2020/06/11', '2020/06/11', 627.3, 'Delivered', 'YES', '3232', 123, 0),
(58, 44, '2020/06/11', '2020/06/11', 173.4, 'Delivered', 'YES', '6565', 34, 0),
(59, 44, '2020/06/11', '2020/06/11', 10392.9, 'Delivered', 'YES', '2121', 2121, 0),
(60, 44, '2020/06/11', '2020/06/12', 43238.4, 'Delivered', 'NO', 'yoni house', 9008, 0),
(61, 44, '2020/06/11', '2020/06/11', 107.1, 'Delivered', 'YES', '2121', 21, 0),
(62, 44, '2020/06/11', '2020/06/11', 61.2, 'Delivered', 'YES', '212', 12, 0),
(63, 44, '2020/06/11', '2020/06/23', 1615, 'Not delivered', 'NO', '3223', 323, 0),
(64, 222, '2020/06/11', '2020/06/11', 627.3, 'Delivered', 'YES', '2121', 123, 0),
(65, 44, '2020/06/14', '2020/06/14', 4080, 'Delivered', 'NO', '12koki', 850, 0),
(66, 44, '2020/06/14', '2020/06/14', 285.6, 'Delivered', 'YES', 'koki', 56, 0),
(67, 224, '2020/06/16', '2020/06/16', 4263, 'Delivered', 'YES', 'koki', 870, 0),
(68, 44, '2020/06/16', '2020/06/16', 61.2, 'Delivered', 'YES', 'koki', 12, 0),
(69, 44, '2020/06/17', '2020/06/17', 61.2, 'Delivered', 'YES', '121koki', 12, 0),
(70, 44, '2020/06/17', '2020/06/17', 62.73, 'Delivered', 'YES', '21koki', 12.3, 0),
(71, 44, '2020/06/17', '2020/06/17', 4361, 'Delivered', 'YES', 'koki house', 890, 0),
(72, 44, '2020/06/17', '2020/06/17', 29400, 'Delivered', 'YES', 'At Rivka', 6000, 0),
(73, 44, '2020/06/18', '2020/06/30', 400, 'Not delivered', 'NO', 'kiryat ata', 100, 1),
(74, 44, '2020/06/18', '2020/06/18', 408, 'Delivered', 'YES', 'haifa', 100, 0),
(75, 44, '2020/06/18', '2020/06/18', 4.08, 'Delivered', 'YES', '1', 1, 0),
(76, 44, '2020/06/18', '2020/06/25', 4, 'Not delivered', 'NO', '1', 1, 1),
(77, 44, '2020/06/18', '2020/07/01', 4, 'Not delivered', 'NO', '1', 1, 1),
(78, 44, '2020/06/18', '2020/07/02', 4, 'Not delivered', 'NO', '1', 1, 1),
(79, 44, '2020/06/18', '2020/06/18', 4.08, 'Delivered', 'YES', '1', 1, 0),
(80, 44, '2020/06/18', '2020/06/18', 4.08, 'Delivered', 'YES', '1', 1, 0),
(81, 44, '2020/06/18', '2020/06/18', 4.08, 'Delivered', 'YES', '1', 1, 1),
(82, 44, '2020/06/18', '2020/06/18', 938.4, 'Delivered', 'YES', 'soki', 230, 0),
(83, 44, '2020/06/18', '2020/06/25', 48, 'Not delivered', 'NO', '121', 12, 1),
(84, 44, '2020/06/18', '2020/06/18', 2574, 'Delivered', 'YES', 'koko', 650, 0),
(85, 44, '2020/06/18', '2020/06/18', 44.88, 'Delivered', 'YES', '212', 11, 0),
(86, 44, '2020/06/18', '2020/06/18', 265.2, 'Delivered', 'YES', '65', 65, 1),
(87, 44, '2020/06/18', '2020/06/18', 48.96, 'Delivered', 'YES', '21', 12, 0),
(88, 44, '2020/06/18', '2020/06/23', 928, 'Not delivered', 'NO', '3232', 232, 1),
(89, 44, '2020/06/18', '2020/06/18', 3332, 'Delivered', 'YES', '76', 850, 0),
(90, 44, '2020/06/18', '2020/06/18', 4.08, 'Delivered', 'YES', '44', 1, 1),
(91, 44, '2020/06/18', '2020/06/18', 48.96, 'Delivered', 'YES', '66', 12, 0),
(92, 44, '2020/06/18', '2020/06/18', 3332, 'Delivered', 'YES', '909', 850, 0),
(93, 44, '2020/06/18', '2020/06/18', 48.96, 'Delivered', 'YES', '32', 12, 0),
(94, 44, '2020/06/19', '2020/06/19', 48.96, 'Delivered', 'YES', 'sede ilan', 12, 1),
(95, 44, '2020/06/20', '2020/06/20', 816, 'Delivered', 'YES', 'Sede ilan', 200, 0),
(96, 44, '2020/06/20', '2020/06/20', 4.08, 'Delivered', 'YES', '12', 1, 0),
(97, 44, '2020/06/20', '2020/06/24', 48, 'Not delivered', 'NO', '2233', 12, 1),
(98, 44, '2020/06/20', '2020/06/24', 3340.8, 'Not delivered', 'NO', 'sde', 870, 1),
(99, 44, '2020/06/20', '2020/06/21', 400, 'Delivered', 'NO', 'kiryat motzkin', 100, 1),
(100, 44, '2020/06/20', '2020/06/20', 816, 'Delivered', 'YES', 'mizpe ilan', 200, 0),
(101, 44, '2020/06/20', '2020/06/20', 48.96, 'Delivered', 'YES', '21', 12, 1),
(102, 44, '2020/06/20', '2020/07/02', 2000, 'Not delivered', 'NO', 'karmiel', 500, 1),
(103, 44, '2020/06/20', '2020/07/01', 3264, 'Not delivered', 'NO', 'asd', 850, 1),
(104, 44, '2020/06/20', '2020/06/20', 48.96, 'Delivered', 'YES', '21', 12, 0),
(105, 44, '2020/06/20', '2020/06/20', 3332, 'Delivered', 'YES', 'h', 850, 1),
(106, 44, '2020/06/20', '2020/06/20', 2718.87, 'Delivered', 'YES', '66', 687, 1),
(107, 44, '2020/06/21', '2020/06/21', 2443.92, 'Delivered', 'YES', 'loli', 599, 1),
(108, 44, '2020/06/21', '2020/06/21', 1407.6, 'Delivered', 'YES', '123', 345, 1),
(109, 44, '2020/06/21', '2020/06/21', 2937.6, 'Delivered', 'YES', 'aasd', 1000, 1),
(110, 44, '2020/06/21', '2020/06/24', 360, 'Not delivered', 'NO', 'asd', 120, 1);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `positionTag` int(11) NOT NULL,
  `positionName` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_patten`
--

CREATE TABLE `purchase_patten` (
  `firstCompanyTag` int(11) NOT NULL DEFAULT '0',
  `secondCompanyTag` int(11) NOT NULL DEFAULT '0',
  `thirdCompanyTag` int(11) NOT NULL DEFAULT '0',
  `userID` int(11) NOT NULL,
  `companyCount` int(11) NOT NULL DEFAULT '0',
  `exclusive` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_patten`
--

INSERT INTO `purchase_patten` (`firstCompanyTag`, `secondCompanyTag`, `thirdCompanyTag`, `userID`, `companyCount`, `exclusive`) VALUES
(0, 2, 0, 44, 1, 1),
(0, 0, 0, 138, 0, 0),
(0, 0, 0, 222, 0, 0),
(0, 0, 0, 223, 0, 0),
(0, 0, 0, 224, 0, 0),
(1, 5, 6, 226, 3, 1),
(2, 3, 6, 227, 3, 1),
(2, 3, 0, 229, 2, 1),
(4, 2, 6, 230, 3, 1),
(3, 0, 0, 231, 1, 1),
(0, 0, 0, 1133, 0, 0),
(0, 0, 0, 1134, 0, 0),
(0, 0, 0, 1135, 0, 0),
(1, 2, 3, 1136, 3, 1),
(2, 5, 0, 1137, 2, 0),
(2, 5, 0, 1138, 2, 1),
(0, 0, 0, 1139, 0, 0),
(0, 0, 0, 1142, 0, 0),
(0, 0, 0, 1143, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `rateType` int(11) NOT NULL,
  `discoundPercent` float NOT NULL,
  `rateName` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`rateType`, `discoundPercent`, `rateName`) VALUES
(1, 2, 'Casual fuel'),
(2, 12, 'Routine monthly fuel - single car'),
(3, 4, 'Routine monthly fuel - some cars'),
(4, 3, 'Full monthly fuel - single car');

-- --------------------------------------------------------

--
-- Table structure for table `reports_saved`
--

CREATE TABLE `reports_saved` (
  `reportType` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `stationTag` int(11) NOT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `reportTag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reports_saved`
--

INSERT INTO `reports_saved` (`reportType`, `stationTag`, `date`, `description`, `reportTag`) VALUES
('Income Report', 1122, '2020/06/18_01:42:27', 'Income Report: Quarter #2 Year: 2020\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Motor\nTotal Income: 4714.73 Total Purchases: 37\n\nFuel Type: Benzin\nTotal Income: 243.00 Total Purchases: 1\n\nFuel Type: Soler\nTotal Income: 345.72 Total Purchases: 4\n\nMonthly Avarage: 1767.82\n', 131),
('Income Report', 1122, '2020/06/20_23:50:23', 'Income Report: Quarter #2 Year: 2020\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Motor\nTotal Income: 17537.72 Total Purchases: 52\n\nFuel Type: Benzin\nTotal Income: 243.00 Total Purchases: 1\n\nFuel Type: Soler\nTotal Income: 742.12 Total Purchases: 6\n\nMonthly Avarage: 6174.28\n', 137),
('Reserves Report', 1122, '2020/06/20_23:50:24', 'Reserves Report:\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nReserve Number: 4 Fuel Type: Motor\nMax Quantity In Reserve: 1500.0 Minimum Threshold: 200.0\nPrice For Liter: 7.0 Current Amount Of Fuel: 1350.0\n\nReserve Number: 5 Fuel Type: Benzin\nMax Quantity In Reserve: 1100.0 Minimum Threshold: 300.0\nPrice For Liter: 6.0 Current Amount Of Fuel: 1100.0\n\nReserve Number: 6 Fuel Type: Soler\nMax Quantity In Reserve: 1500.0 Minimum Threshold: 1000.0\nPrice For Liter: 10.0 Current Amount Of Fuel: 1500.0\n\n', 138),
('Purchases Report', 1122, '2020/06/20_23:50:29', 'Purchases Report:\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Motor\nAmount Of Purchases: 52\nMoney Earned: 17537.72\nTotal Amount Of Fuel Sold: 4370.90\n\nFuel Type: Benzin\nAmount Of Purchases: 1\nMoney Earned: 243.00\nTotal Amount Of Fuel Sold: 43.00\n\nFuel Type: Soler\nAmount Of Purchases: 6\nMoney Earned: 742.12\nTotal Amount Of Fuel Sold: 554.00\n\n', 139);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fuelType` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `price` float NOT NULL,
  `stationTag` int(11) NOT NULL,
  `saleTag` int(11) NOT NULL,
  `customerID` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `paymentMethod` int(11) NOT NULL,
  `sale_patternID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`date`, `fuelType`, `quantity`, `price`, `stationTag`, `saleTag`, `customerID`, `paymentMethod`, `sale_patternID`) VALUES
('2020/05/27_13:13:13', 1, 13.4, 40, 1325, 1, '1234', 1, 0),
('2020/05/27_13:23:13', 2, 142, 1108, 1325, 2, '1234', 1, 0),
('2020/05/26_13:23:13', 3, 57, 412, 1325, 3, '1234', 0, 0),
('2020/04/03_19:12:12', 2, 15.8, 97.1, 1325, 4, '1234', 1, 5),
('2020/04/08_12:14:12', 3, 47.12, 290, 1325, 5, '1234', 0, 5),
('2020/10/04_12:14:16', 3, 421, 1423, 1325, 8, '1234', 0, 5),
('2020/10/04_12:14:16', 1, 332, 1231, 1325, 9, '1234', 1, 5),
('2020/06/04_12:14:16', 2, 43, 243, 1122, 12, '1234', 0, 0),
('2020/06/04_01:14:16', 1, 12, 130, 1325, 13, '1234', 1, 5),
('2020/06/01_14:04:35', 1, 20000, 1218, 1111, 15, '1234', 1, 2),
('2020/06/08_00:29:53', 1, 50, 322, 1325, 16, '222233334', 0, 0),
('2020/06/08_00:37:06', 1, 100, 644, 1325, 17, '1234', 0, 0),
('2020/06/08_01:00:32', 1, 10, 64.4, 1325, 18, '1234', 0, 0),
('2020/06/09_16:43:21', 1, 20, 121.8, 1325, 19, '1234', 0, 0),
('2020/06/10_02:27:33', 1, 252, 1569.96, 1325, 20, '1234', 0, 0),
('2020/06/10_19:58:20', 1, 34, 211.82, 1325, 21, '1234', 1, 0),
('2020/06/10_20:02:19', 1, 20, 124.6, 1325, 22, '1234', 0, 0),
('2020/06/10_20:06:15', 1, 10, 62.3, 1325, 23, '1234', 0, 0),
('2020/06/10_20:13:46', 1, 1, 6.23, 1325, 24, '1234', 0, 0),
('2020/06/10_20:18:42', 1, 1, 6.23, 1325, 25, '1234', 1, 0),
('2020/06/11_02:51:42', 1, 20, 112, 1122, 26, '1234', 0, 1),
('2020/06/11_02:53:08', 1, 20, 112, 1122, 27, '1234', 0, 1),
('2020/06/11_02:57:35', 1, 1, 5.6, 1122, 28, '1234', 0, 1),
('2020/06/11_03:00:15', 1, 1, 5.6, 1122, 29, '1234', 0, 1),
('2020/06/11_03:03:53', 1, 12, 75.6, 1122, 30, '1234', 1, 0),
('2020/06/11_03:22:13', 1, 1, 6.3, 1122, 31, '1234', 1, 0),
('2020/06/11_03:37:46', 1, 1, 6.3, 1122, 32, '1234', 0, 0),
('2020/06/11_16:45:12', 1, 5, 31.5, 1122, 33, '1234', 0, 0),
('2020/06/11_19:33:35', 1, 2, 12.6, 1122, 34, '1234', 1, 0),
('2020/06/11_21:34:04', 1, 20, 131.6, 1111, 35, '1234', 0, 2),
('2020/06/14_18:56:33', 1, 46, 264.04, 1122, 36, '1234', 0, 1),
('2020/06/15_00:28:53', 1, 123, 619.92, 1122, 37, '1234', 0, 1),
('2020/06/16_01:52:41', 1, 2, 7.98, 1122, 38, '1234', 0, 1),
('2020/06/16_02:39:48', 1, 11, 73.15, 1111, 39, '192837465', 0, 2),
('2020/06/16_02:42:03', 1, 2, 8.82, 1111, 40, '192837465', 1, 2),
('2020/06/16_16:22:15', 1, 34, 149.94, 1111, 41, '192837465', 0, 2),
('2020/06/16_16:31:57', 1, 12, 56.28, 1122, 42, '1234', 1, 0),
('2020/06/16_16:34:38', 3, 12, 27.72, 1122, 43, '333333333', 0, 0),
('2020/06/16_17:15:25', 1, 12, 56.28, 1122, 44, '1234', 0, 0),
('2020/06/16_17:23:40', 1, 4.9, 22.981, 1122, 45, '1234', 1, 0),
('2020/06/16_17:45:09', 1, 10, 46.9, 1122, 46, '1234', 1, 0),
('2020/06/16_18:00:09', 1, 5, 19.95, 1122, 47, '1234', 1, 1),
('2020/06/16_18:01:42', 1, 5, 19.95, 1122, 48, '1234', 1, 1),
('2020/06/16_18:03:22', 1, 4, 15.96, 1122, 49, '1234', 1, 1),
('2020/06/16_18:11:56', 1, 3, 11.97, 1122, 50, '1234', 1, 1),
('2020/06/16_18:12:22', 1, 15, 59.85, 1122, 51, '1234', 1, 1),
('2020/06/16_18:15:43', 1, 6, 23.94, 1122, 52, '1234', 1, 1),
('2020/06/16_18:16:42', 1, 6, 23.94, 1122, 53, '1234', 1, 1),
('2020/06/16_18:17:52', 1, 6, 23.94, 1122, 54, '1234', 1, 1),
('2020/06/16_18:19:35', 1, 6, 23.94, 1122, 55, '1234', 1, 1),
('2020/06/16_18:21:09', 1, 6, 23.94, 1122, 56, '1234', 1, 1),
('2020/06/16_18:23:26', 1, 6, 23.94, 1122, 57, '1234', 1, 1),
('2020/06/16_18:23:45', 1, 20, 79.8, 1122, 58, '1234', 1, 1),
('2020/06/16_18:28:41', 1, 350, 1396.5, 1122, 59, '1234', 1, 1),
('2020/06/16_18:32:44', 1, 6, 23.94, 1122, 60, '1234', 1, 1),
('2020/06/16_18:34:24', 1, 20, 79.8, 1122, 61, '1234', 1, 1),
('2020/06/16_18:36:09', 1, 6, 23.94, 1122, 62, '1234', 1, 1),
('2020/06/16_19:55:09', 1, 10, 39.9, 1122, 63, '1234', 1, 1),
('2020/06/16_20:04:12', 1, 5, 19.95, 1122, 64, '1234', 1, 1),
('2020/06/16_20:05:25', 1, 300, 1197, 1122, 65, '1234', 1, 1),
('2020/06/17_11:54:43', 1, 12, 56.28, 1122, 66, '1234', 1, 0),
('2020/06/17_12:16:54', 1, 12, 46.452, 1445, 67, '369786521', 1, 19),
('2020/06/17_23:08:51', 1, 18, 84.42, 1122, 68, '1234', 1, 0),
('2020/06/18_01:07:41', 3, 180, -128.25, 1122, 69, '1234', 1, 0),
('2020/06/18_01:16:06', 3, 100, 148.75, 1122, 70, '1234', 1, 0),
('2020/06/18_01:20:13', 3, 200, 297.5, 1122, 71, '1234', 1, 0),
('2020/06/18_02:36:18', 1, 15, 51.975, 1122, 72, '1234', 1, 1),
('2020/06/18_16:46:41', 3, 12, 71.4, 1122, 73, '1234', 1, 0),
('2020/06/18_21:40:09', 1, 1000, 3465, 1122, 74, '1234', 1, 1),
('2020/06/18_21:43:12', 1, 400, 1386, 1122, 75, '1234', 1, 1),
('2020/06/19_01:07:26', 1, 40, 138.6, 1122, 76, '1234', 1, 1),
('2020/06/19_01:13:54', 3, 50, 325, 1122, 77, '333333333', 0, 0),
('2020/06/19_16:23:58', 1, 1400, 5831, 1122, 78, '1234', 1, 0),
('2020/06/19_17:47:11', 1, 12, 50.82, 2222, 79, '192837465', 1, 0),
('2020/06/19_20:26:51', 1, 18, 62.37, 1122, 80, '1234', 1, 1),
('2020/06/19_21:06:25', 1, 18, 62.37, 1122, 81, '1234', 1, 1),
('2020/06/19_23:27:25', 1, 12, 46.62, 1111, 82, '192837465', 1, 2),
('2020/06/20_03:02:47', 1, 100, 542.5, 1122, 83, '1234', 1, 0),
('2020/06/20_03:20:50', 1, 13, 70.525, 1122, 84, '1234', 1, 0),
('2020/06/20_03:34:27', 1, 31, 168.175, 1122, 85, '1234', 1, 0),
('2020/06/20_12:39:30', 2, 18, 90.18, 1325, 86, '951753258', 1, 0),
('2020/06/20_13:35:10', 1, 30, 162.75, 1122, 87, '1234', 1, 0),
('2020/06/20_15:53:10', 1, 18, 43.47, 1122, 88, '1234', 1, 23),
('2020/06/20_15:54:06', 1, 100, 241.5, 1122, 89, '1234', 1, 23),
('2020/06/20_16:13:16', 1, 50, 306.25, 1122, 90, '1234', 1, 0),
('2020/06/20_22:42:28', 1, 50, 290.5, 1122, 91, '1234', 1, 1),
('2020/06/21_00:53:43', 1, 18, 110.88, 1122, 92, '1234', 1, 0),
('2020/06/21_00:59:31', 1, 18, 110.88, 1122, 93, '1234', 1, 0),
('2020/06/21_01:10:07', 1, 18, 110.88, 1122, 94, '1234', 1, 0),
('2020/06/21_01:25:16', 1, 32, 197.12, 1122, 95, '1234', 1, 0),
('2020/06/21_01:54:19', 1, 18, 110.88, 1122, 96, '1234', 1, 0),
('2020/06/21_02:47:34', 1, 25, 136.5, 1122, 97, '1234', 1, 0),
('2020/06/21_03:52:55', 1, 13, 70.98, 1122, 98, '1234', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sale_pattern`
--

CREATE TABLE `sale_pattern` (
  `stationTag` int(11) NOT NULL,
  `fuelType` int(11) NOT NULL,
  `startHour` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `endHour` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `discount` float NOT NULL,
  `salePatternTag` int(11) NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sale_pattern`
--

INSERT INTO `sale_pattern` (`stationTag`, `fuelType`, `startHour`, `endHour`, `discount`, `salePatternTag`, `status`, `name`, `description`) VALUES
(1122, 1, '1800', '0300', 10, 1, 'Un-active', 'Happy Afternoon', 'sale for two hours afternoon'),
(1445, 1, '0200', '1400', 12, 19, 'Un-active', 'long night sale', 'pokemon go'),
(1325, 1, '1200', '1400', 10, 22, 'Un-active', 'happy noon sale', 'cheap sale'),
(1111, 2, '1200', '1300', 12, 24, 'Un-active', 'as', 'asdasd'),
(1122, 1, '1122', '1313', 3, 25, 'Un-active', 'fuel sale', 'free shoko'),
(2222, 2, '1200', '1400', 2, 26, 'active', 'fuel cheap', 'chep fuel'),
(1445, 2, '1800', '2200', 2, 27, 'active', 'Paz rush hours', 'give more purchases'),
(1122, 3, '1201', '1414', 13, 33, 'Un-active', 'short sale', 'rush to buy');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `stationTag` int(11) NOT NULL,
  `companyTag` int(11) NOT NULL,
  `location` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `eid` int(11) NOT NULL,
  `stationName` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`stationTag`, `companyTag`, `location`, `eid`, `stationName`) VALUES
(1111, 1, 'Haifa', 10, 'Koki-Gas'),
(1122, 2, 'Afula', 4, 'Ha\'Ahoza'),
(1325, 1, 'Tiberius', 1, 'Mifgash-24'),
(1445, 4, 'Tel-Aviv', 133, 'Fast&Furious'),
(2222, 3, 'Jerusalem', 2, 'Shoko&Son gas');

-- --------------------------------------------------------

--
-- Table structure for table `stations_reports`
--

CREATE TABLE `stations_reports` (
  `reportID` int(11) NOT NULL,
  `report_file` text COLLATE utf8_unicode_ci NOT NULL,
  `stationTag` int(11) NOT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stations_reports`
--

INSERT INTO `stations_reports` (`reportID`, `report_file`, `stationTag`, `date`) VALUES
(30, 'Income Report: Quarter #2 Year: 2020\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Motor\nTotal Income: 4714.73 Total Purchases: 37\n\nFuel Type: Benzin\nTotal Income: 243.00 Total Purchases: 1\n\nFuel Type: Soler\nTotal Income: 345.72 Total Purchases: 4\n\nMonthly Avarage: 1767.82\n', 1122, '2020/06/18_01:42:27'),
(31, 'Reserves Report:\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nReserve Number: 4 Fuel Type: Motor\nMax Quantity In Reserve: 1500.0 Minimum Threshold: 100.0\nPrice For Liter: 7.0 Current Amount Of Fuel: 1482.0\n\nReserve Number: 5 Fuel Type: Benzin\nMax Quantity In Reserve: 1100.0 Minimum Threshold: 300.0\nPrice For Liter: 6.0 Current Amount Of Fuel: 1100.0\n\nReserve Number: 6 Fuel Type: Soler\nMax Quantity In Reserve: 1500.0 Minimum Threshold: 300.0\nPrice For Liter: 10.0 Current Amount Of Fuel: 1020.0\n\n', 1122, '2020/06/18_01:42:34'),
(32, 'Purchases Report:\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Benzin\nAmount Of Purchases: 1\nMoney Earned: 243.00\nTotal Amount Of Fuel Sold: 43.0\n\nFuel Type: Motor\nAmount Of Purchases: 37\nMoney Earned: 4714.73\nTotal Amount Of Fuel Sold: 1087.9000000953674\n\nFuel Type: Soler\nAmount Of Purchases: 4\nMoney Earned: 345.72\nTotal Amount Of Fuel Sold: 492.0\n\n', 1122, '2020/06/18_01:42:36'),
(33, 'Reserves Report:\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nReserve Number: 4 Fuel Type: Motor\nMax Quantity In Reserve: 1500.0 Minimum Threshold: 100.0\nPrice For Liter: 7.0 Current Amount Of Fuel: 1482.0\n\nReserve Number: 5 Fuel Type: Benzin\nMax Quantity In Reserve: 1100.0 Minimum Threshold: 300.0\nPrice For Liter: 6.0 Current Amount Of Fuel: 1100.0\n\nReserve Number: 6 Fuel Type: Soler\nMax Quantity In Reserve: 1500.0 Minimum Threshold: 300.0\nPrice For Liter: 10.0 Current Amount Of Fuel: 1020.0\n\n', 1122, '2020/06/18_01:42:34'),
(34, 'Purchases Report:\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Benzin\nAmount Of Purchases: 1\nMoney Earned: 243.00\nTotal Amount Of Fuel Sold: 43.00\n\nFuel Type: Motor\nAmount Of Purchases: 44\nMoney Earned: 15712.05\nTotal Amount Of Fuel Sold: 3978.90\n\nFuel Type: Soler\nAmount Of Purchases: 6\nMoney Earned: 742.12\nTotal Amount Of Fuel Sold: 554.00\n\n', 1122, '2020/06/19_23:35:41'),
(35, 'Income Report: Quarter #2 Year: 2020\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Motor\nTotal Income: 4714.73 Total Purchases: 37\n\nFuel Type: Benzin\nTotal Income: 243.00 Total Purchases: 1\n\nFuel Type: Soler\nTotal Income: 345.72 Total Purchases: 4\n\nMonthly Avarage: 1767.82\n', 1122, '2020/06/18_01:42:27'),
(37, 'Income Report: Quarter #2 Year: 2020\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Motor\nTotal Income: 4714.73 Total Purchases: 37\n\nFuel Type: Benzin\nTotal Income: 243.00 Total Purchases: 1\n\nFuel Type: Soler\nTotal Income: 345.72 Total Purchases: 4\n\nMonthly Avarage: 1767.82\n', 1122, '2020/06/18_01:42:27'),
(38, 'Income Report: Quarter #2 Year: 2020\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nFuel Type: Motor\nTotal Income: 4714.73 Total Purchases: 37\n\nFuel Type: Benzin\nTotal Income: 243.00 Total Purchases: 1\n\nFuel Type: Soler\nTotal Income: 345.72 Total Purchases: 4\n\nMonthly Avarage: 1767.82\n', 1122, '2020/06/18_01:42:27'),
(39, 'Reserves Report:\n\nStation Number : 1122\n\nStation Name : Ha\'Ahoza\n\nReserve Number: 4 Fuel Type: Motor\nMax Quantity In Reserve: 1500.0 Minimum Threshold: 200.0\nPrice For Liter: 7.0 Current Amount Of Fuel: 1350.0\n\nReserve Number: 5 Fuel Type: Benzin\nMax Quantity In Reserve: 1100.0 Minimum Threshold: 300.0\nPrice For Liter: 6.0 Current Amount Of Fuel: 1100.0\n\nReserve Number: 6 Fuel Type: Soler\nMax Quantity In Reserve: 1500.0 Minimum Threshold: 1000.0\nPrice For Liter: 10.0 Current Amount Of Fuel: 1500.0\n\n', 1122, '2020/06/20_23:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_orders_list`
--

CREATE TABLE `supplier_orders_list` (
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `orderTag` int(11) NOT NULL,
  `gasStation` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fuelType` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `eid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier_orders_list`
--

INSERT INTO `supplier_orders_list` (`date`, `orderTag`, `gasStation`, `quantity`, `status`, `fuelType`, `eid`) VALUES
('2020/06/21_01:06:05', 6599, 1122, 186, 'Complete', 'Motor', 7),
('2020/06/21_02:48:47', 6600, 1122, 93, 'Complete', 'Motor', 7);

-- --------------------------------------------------------

--
-- Table structure for table `supplie_order`
--

CREATE TABLE `supplie_order` (
  `orderTag` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `stationTag` int(11) NOT NULL,
  `fuelType` int(11) NOT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Waiting',
  `display_notification` int(11) NOT NULL DEFAULT '1',
  `quantity` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplie_order`
--

INSERT INTO `supplie_order` (`orderTag`, `supplier_id`, `stationTag`, `fuelType`, `date`, `status`, `display_notification`, `quantity`) VALUES
(72, 7, 1122, 1, '2020/06/19_23:39:33', 'Accepted', 1, 36),
(96, 7, 1122, 1, '2020/06/21_01:06:01', 'Accepted', 1, 186),
(99, 7, 1122, 1, '2020/06/21_02:48:39', 'Accepted', 1, 93);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `type` int(10) NOT NULL,
  `connection_status` int(11) NOT NULL,
  `lastLogin` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '"First Time"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `userID`, `type`, `connection_status`, `lastLogin`) VALUES
('207063546', '207063546', 1, 1, 0, 'Sat Jun 20 22:49:57 IDT 2020'),
('205744550', '205744550', 2, 2, 0, 'Sun Jun 21 03:53:07 IDT 2020'),
('315687442', '315687442', 3, 1, 0, '\"First Time\"'),
('305316697', '305316697', 4, 4, 0, 'Sun Jun 21 03:52:35 IDT 2020'),
('thot', 'thot', 5, 1, 0, 'Sun Jun 21 03:51:47 IDT 2020'),
('123', '123', 6, 4, 0, '\"First Time\"'),
('koki', 'koki', 44, 3, 0, 'Sun Jun 21 03:44:36 IDT 2020'),
('yoni', 'yoni', 55, 6, 0, 'Sun Jun 21 03:51:59 IDT 2020'),
('test', 'test', 102, 1, 0, 'Fri Jun 19 17:54:59 IDT 2020'),
('yarin', '1212', 111, 5, 0, '\"First Time\"'),
('204510473', '204510473', 123, 5, 0, 'Sat Jun 20 22:47:40 IDT 2020'),
('sup2', '1234', 221, 5, 0, 'Sun Jun 21 03:52:20 IDT 2020'),
('778920311', '778920311', 222, 3, 0, '\"First Time\"'),
('192837465', '192837465', 224, 3, 0, 'Sat Jun 20 13:42:28 IDT 2020'),
('951753258', '951753258', 226, 3, 0, '\"First Time\"'),
('333333333', '333333333', 227, 3, 0, '\"First Time\"'),
('362536254', '362536254', 229, 3, 0, '\"First Time\"'),
('369786521', '369786521', 230, 3, 0, '\"First Time\"'),
('222233334', '222233334', 231, 3, 0, '\"First Time\"'),
('jon', 'jon', 1132, 1, 0, 'Fri Jun 19 17:44:30 IDT 2020'),
('111111111', '111111111', 1133, 3, 0, '\"First Time\"'),
('123456777', '123456777', 1134, 3, 0, '\"First Time\"'),
('122222333', '122222333', 1135, 3, 0, '\"First Time\"'),
('222135423', '222135423', 1136, 3, 0, '\"First Time\"'),
('111222111', '111222111', 1137, 3, 0, '\"First Time\"'),
('123123112', '123123112', 1138, 3, 0, '\"First Time\"'),
('122211122', '122211122', 1139, 3, 0, '\"First Time\"'),
('114562435', '114562435', 1142, 3, 0, '\"First Time\"'),
('135241364', '135241364', 1143, 3, 0, '\"First Time\"');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicleNumber` int(11) NOT NULL,
  `fuelType` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`vehicleNumber`, `fuelType`, `userID`) VALUES
(2, 4, 2222),
(1111, 3, 44),
(5242, 2, 44),
(42131, 1, 44),
(123123, 2, 44),
(123132, 1, 44),
(696969, 1, 44),
(1234532, 2, 226),
(3321424, 2, 1138),
(3625252, 3, 227),
(11122212, 2, 1137),
(11223344, 2, 1136),
(44413623, 3, 230),
(44444332, 3, 1137),
(99999991, 1, 224);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analytic_info`
--
ALTER TABLE `analytic_info`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `companys`
--
ALTER TABLE `companys`
  ADD PRIMARY KEY (`companyTag`);

--
-- Indexes for table `company_count_discount`
--
ALTER TABLE `company_count_discount`
  ADD PRIMARY KEY (`companyCount`);

--
-- Indexes for table `credit_info`
--
ALTER TABLE `credit_info`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `customer_notifications`
--
ALTER TABLE `customer_notifications`
  ADD PRIMARY KEY (`notifynumber`);

--
-- Indexes for table `customer_rates`
--
ALTER TABLE `customer_rates`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `fuels`
--
ALTER TABLE `fuels`
  ADD PRIMARY KEY (`fuelType`);

--
-- Indexes for table `fuel_reserves`
--
ALTER TABLE `fuel_reserves`
  ADD PRIMARY KEY (`reserveTag`);

--
-- Indexes for table `impending_rates`
--
ALTER TABLE `impending_rates`
  ADD PRIMARY KEY (`ratetype`);

--
-- Indexes for table `marketing_manager_notification`
--
ALTER TABLE `marketing_manager_notification`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `M_A_Notification`
--
ALTER TABLE `M_A_Notification`
  ADD PRIMARY KEY (`notificationID`);

--
-- Indexes for table `order_home_fuel`
--
ALTER TABLE `order_home_fuel`
  ADD PRIMARY KEY (`homeOrderTag`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`positionTag`);

--
-- Indexes for table `purchase_patten`
--
ALTER TABLE `purchase_patten`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`rateType`);

--
-- Indexes for table `reports_saved`
--
ALTER TABLE `reports_saved`
  ADD PRIMARY KEY (`reportTag`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`saleTag`);

--
-- Indexes for table `sale_pattern`
--
ALTER TABLE `sale_pattern`
  ADD PRIMARY KEY (`salePatternTag`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`stationTag`);

--
-- Indexes for table `stations_reports`
--
ALTER TABLE `stations_reports`
  ADD PRIMARY KEY (`reportID`);

--
-- Indexes for table `supplier_orders_list`
--
ALTER TABLE `supplier_orders_list`
  ADD PRIMARY KEY (`orderTag`);

--
-- Indexes for table `supplie_order`
--
ALTER TABLE `supplie_order`
  ADD PRIMARY KEY (`orderTag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicleNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_notifications`
--
ALTER TABLE `customer_notifications`
  MODIFY `notifynumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `fuel_reserves`
--
ALTER TABLE `fuel_reserves`
  MODIFY `reserveTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `M_A_Notification`
--
ALTER TABLE `M_A_Notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_home_fuel`
--
ALTER TABLE `order_home_fuel`
  MODIFY `homeOrderTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `reports_saved`
--
ALTER TABLE `reports_saved`
  MODIFY `reportTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `saleTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `sale_pattern`
--
ALTER TABLE `sale_pattern`
  MODIFY `salePatternTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `stations_reports`
--
ALTER TABLE `stations_reports`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `supplier_orders_list`
--
ALTER TABLE `supplier_orders_list`
  MODIFY `orderTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6601;

--
-- AUTO_INCREMENT for table `supplie_order`
--
ALTER TABLE `supplie_order`
  MODIFY `orderTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
