-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2023 at 05:59 PM
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
-- Database: `onlinefitnesstrainer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminName`, `AdminPassword`) VALUES
('ShopManager', 'ShopManager'),
('SiteManager', 'SiteManager');

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `UserEmail` varchar(255) NOT NULL,
  `ProductId` varchar(50) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Sizes` char(10) DEFAULT NULL,
  `Price` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartitem`
--

INSERT INTO `cartitem` (`UserEmail`, `ProductId`, `ProductName`, `Sizes`, `Price`) VALUES
('janindu@gmail.com', 'p3', 'shirt', 'small', '$42'),
('sadaru@gmail.com', 'p5', 'shirt', 'small', '$42'),
('shakya@gmail.com', 'p4', 'shirt', 'small', '$42');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `UserEmail` varchar(255) NOT NULL,
  `TrainerId` int(11) NOT NULL,
  `Types` char(10) NOT NULL,
  `Plancost` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`UserEmail`, `TrainerId`, `Types`, `Plancost`) VALUES
('janindu@gmail.com', 4, 'Basic', 'Rs.10000'),
('sadaru@gmail.com', 6, 'Premium', 'Rs.17000'),
('shakya@gmail.com', 8, 'Basic', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductId` varchar(50) NOT NULL,
  `Stock` int(11) NOT NULL,
  `Sizes` char(10) DEFAULT NULL,
  `Price` varchar(100) NOT NULL,
  `ProductName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductId`, `Stock`, `Sizes`, `Price`, `ProductName`) VALUES
('p1', 100, 'large', '$24.99', 'Product 1'),
('p2', 100, 'large', '$26.99', 'Product 2'),
('p3', 100, 'medium', '$17.99', 'Product 3'),
('p4', 100, 'medium', '$6.99', 'Product 4'),
('p5', 100, 'medium', '$26.99', 'Product 5'),
('p6', 100, 'medium', '$12.99', 'Product 6'),
('p7', 100, 'normal', '$9.99', 'Product 7'),
('p8', 100, 'normal', '$4.99', 'Product 8'),
('p9', 100, 'normal', '$29.99', 'Product 9');

-- --------------------------------------------------------

--
-- Table structure for table `productmanagement`
--

CREATE TABLE `productmanagement` (
  `ProductId` varchar(50) NOT NULL,
  `AdminName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productmanagement`
--

INSERT INTO `productmanagement` (`ProductId`, `AdminName`) VALUES
('p2', 'ShopManager'),
('p3', 'ShopManager'),
('p4', 'ShopManager'),
('p5', 'ShopManager'),
('p6', 'ShopManager'),
('p7', 'ShopManager'),
('p8', 'ShopManager'),
('p9', 'ShopManager');

-- --------------------------------------------------------

--
-- Table structure for table `reviewmanagement`
--

CREATE TABLE `reviewmanagement` (
  `ReviewId` char(10) NOT NULL,
  `AdminName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviewmanagement`
--

INSERT INTO `reviewmanagement` (`ReviewId`, `AdminName`) VALUES
('rw3', 'SiteManager'),
('rw4', 'SiteManager');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `UserEmail` varchar(255) NOT NULL,
  `ReviewId` char(10) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`UserEmail`, `ReviewId`, `UserName`, `Body`) VALUES
('sadaru@gmail.com', '', 'sadaru', 'very good website'),
('janindu@gmail.com', 'rw3', 'janindu', 'this website gives us a quality service'),
('shakya@gmail.com', 'rw4', 'shakya', 'this website gives us a quality service');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `Addresses` varchar(255) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `CartAmount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`Addresses`, `UserEmail`, `CartAmount`) VALUES
('colombo01', 'eranga@gmail.com', 3),
('colombo02', 'dilshan@gmail.com', 4),
('colombo03', 'janindu@gmail.com', 3),
('colombo04', 'shakya@gmail.com', 2),
('colombo05', 'sadaru@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `TrainerId` int(11) NOT NULL,
  `TrainerEmail` varchar(255) NOT NULL,
  `TrainerName` varchar(255) NOT NULL,
  `TrainerAge` varchar(255) NOT NULL,
  `Specialization` varchar(255) NOT NULL,
  `Admin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`TrainerId`, `TrainerEmail`, `TrainerName`, `TrainerAge`, `Specialization`, `Admin`) VALUES
(0, 'none', 'none', 'none', 'none', 'none'),
(1, 'fazil@gmail.com', 'FAZIL', '28', 'Fat Loss', 'SiteManager'),
(2, 'gaia@gmail.com', 'GAIA', '27', 'Fat Loss', 'SiteManager'),
(3, 'mike@gmail.com', 'MIKE', '25', 'Fat Loss', 'SiteManager'),
(4, 'lucian@gmail.com', 'LUCIAN', '25', 'Muscle building', 'SiteManager'),
(5, 'juliyah@gmail.com', 'JULIYAH', '29', 'Muscle building', 'SiteManager'),
(6, 'zuri@gmail.com', 'ZURI', '23', 'Muscle building', 'SiteManager'),
(7, 'dhanushka@gmail.com', 'DHANUSHKA', '24', 'Calisthenics & Yoga', 'SiteManager'),
(8, 'annabel@gmail.com', 'ANNABEL', '30', 'Calisthenics & Yoga', 'SiteManager'),
(9, 'tarja@gmail.com', 'TARJA', '23', 'Calisthenics & Yoga', 'SiteManager'),
(10, 'dulanga@gmail.com', 'DULANGA', '32', 'Cross fit', 'SiteManager'),
(11, 'yohan@gmail.com', 'YOHAN', '35', 'Cross fit', 'SiteManager'),
(12, 'hasitha@gmail.com', 'HASITHA', '25', 'Power lifting', 'SiteManager');

-- --------------------------------------------------------

--
-- Table structure for table `trainermanagement`
--

CREATE TABLE `trainermanagement` (
  `TrainerId` int(11) NOT NULL,
  `AdminName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainermanagement`
--

INSERT INTO `trainermanagement` (`TrainerId`, `AdminName`) VALUES
(3, 'SiteManager'),
(4, 'SiteManager'),
(5, 'SiteManager'),
(6, 'SiteManager'),
(7, 'SiteManager'),
(8, 'SiteManager'),
(9, 'SiteManager'),
(10, 'SiteManager'),
(11, 'SiteManager'),
(12, 'SiteManager');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` int(11) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `Transactiondate` date NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `CardNumber` varchar(16) DEFAULT NULL,
  `CVC` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionID`, `UserEmail`, `Transactiondate`, `Amount`, `CardNumber`, `CVC`) VALUES
(5, 'sadaru@gmail.com', '2023-10-10', 7.00, '230404803559154', 154),
(28, 'janindu@gmail.com', '0000-00-00', 10000.00, '23156576', 243),
(30, 'janindu@gmail.com', '0000-00-00', 17000.00, '234256', 123),
(46, 'sadaru@gmail.com', '0000-00-00', 17000.00, '989848023049456', 456),
(51, 'shakya@gmail.com', '2023-10-15', 10000.00, '0710202121232131', 123),
(53, 'shakya@gmail.com', '2023-10-15', 17000.00, '989848023049456', 123),
(54, 'shakya@gmail.com', '2023-10-15', 17000.00, '989848023049456', 123),
(55, 'shakya@gmail.com', '2023-10-15', 17000.00, '989848023049456', 234),
(60, 'shakya@gmail.com', '2023-10-16', 10000.00, '989848023049456', 123);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserEmail` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `UserAge` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Types` varchar(10) NOT NULL,
  `Goal` text NOT NULL,
  `Heights` decimal(8,2) NOT NULL,
  `Weights` decimal(5,2) NOT NULL,
  `TrainerId` int(11) NOT NULL,
  `Workout` varchar(20) DEFAULT NULL,
  `Meal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserEmail`, `UserName`, `UserPassword`, `UserAge`, `Gender`, `Types`, `Goal`, `Heights`, `Weights`, `TrainerId`, `Workout`, `Meal`) VALUES
('eranga@gmail.com', 'eranga', 'eranga', 21, 'male', 'basic', 'be fat', 170.00, 55.00, 1, 'eat', 'sleep'),
('janindu@gmail.com', 'janindu', 'janindu', 21, 'feMale', 'Premium', 'be lost', 150.00, 35.00, 3, 'wk3', 'bun2'),
('sadaru@gmail.com', 'sadaru', 'sadaru', 23, 'Male', 'Premium', 'be lost', 155.50, 33.00, 5, 'wk5', 'bun4'),
('shakya@gmail.com', 'shakya', 'shakya', 25, 'Male', 'Basic', 'be lost', 155.00, 34.00, 4, 'wk4', 'bun3');

-- --------------------------------------------------------

--
-- Table structure for table `usermanagement`
--

CREATE TABLE `usermanagement` (
  `UserEmail` varchar(255) NOT NULL,
  `AdminName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usermanagement`
--

INSERT INTO `usermanagement` (`UserEmail`, `AdminName`) VALUES
('sadaru@gmail.com', 'SiteManager'),
('janindu@gmail.com', 'SiteManager'),
('shakya@gmail.com', 'SiteManager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminName`);

--
-- Indexes for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD UNIQUE KEY `UserEmail` (`UserEmail`),
  ADD UNIQUE KEY `ProductId` (`ProductId`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD UNIQUE KEY `UserEmail` (`UserEmail`),
  ADD KEY `fk_trainer` (`TrainerId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductId`),
  ADD UNIQUE KEY `ProductId` (`ProductId`);

--
-- Indexes for table `productmanagement`
--
ALTER TABLE `productmanagement`
  ADD KEY `AdminName` (`AdminName`),
  ADD KEY `productmanagement_ibfk_1` (`ProductId`);

--
-- Indexes for table `reviewmanagement`
--
ALTER TABLE `reviewmanagement`
  ADD UNIQUE KEY `ReviewId` (`ReviewId`),
  ADD KEY `AdminName` (`AdminName`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewId`),
  ADD UNIQUE KEY `UserEmail` (`UserEmail`),
  ADD UNIQUE KEY `ReviewId` (`ReviewId`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`Addresses`,`UserEmail`),
  ADD UNIQUE KEY `Addresses` (`Addresses`),
  ADD UNIQUE KEY `UserEmail` (`UserEmail`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`TrainerId`),
  ADD UNIQUE KEY `TrainerEmail` (`TrainerEmail`);

--
-- Indexes for table `trainermanagement`
--
ALTER TABLE `trainermanagement`
  ADD KEY `AdminName` (`AdminName`),
  ADD KEY `trainermanagement_ibfk_1` (`TrainerId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD UNIQUE KEY `TransactionID` (`TransactionID`),
  ADD KEY `transactions_ibfk_1` (`UserEmail`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserEmail`),
  ADD UNIQUE KEY `UserEmail` (`UserEmail`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD KEY `user_ibfk_1` (`TrainerId`);

--
-- Indexes for table `usermanagement`
--
ALTER TABLE `usermanagement`
  ADD KEY `AdminName` (`AdminName`),
  ADD KEY `usermanagement_ibfk_1` (`UserEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

