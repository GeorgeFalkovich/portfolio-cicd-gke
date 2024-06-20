-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: shareddb-r.hosting.stackcp.net
-- Generation Time: Apr 13, 2023 at 10:27 AM
-- Server version: 10.4.26-MariaDB-log
-- PHP Version: 7.1.25

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental-3132333222`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_company`
--

CREATE DATABASE IF NOT EXISTS carrental;
USE carrental;

CREATE TABLE `car_company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_company`
--

INSERT INTO `car_company` (`company_id`, `company_name`) VALUES
(1, 'Mazda'),
(2, 'Subaru'),
(3, 'Mitsubishi'),
(4, 'Toyota'),
(5, 'Honda'),
(6, 'Nissan');

-- --------------------------------------------------------

--
-- Table structure for table `car_model`
--

CREATE TABLE `car_model` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(20) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_model`
--

INSERT INTO `car_model` (`model_id`, `model_name`, `company_id`) VALUES
(1, 'MAZDA3', 1),
(2, 'MAZDA6', 1),
(3, 'CX-3', 1),
(4, 'MX-5', 1),
(5, 'BT-50', 1),
(6, 'Ascent', 2),
(7, 'BRZ', 2),
(8, 'Forester', 2),
(9, 'Impreza', 2),
(10, 'Legacy', 2),
(11, 'Outlander', 3),
(12, 'Lancer', 3),
(13, 'Pajero', 3),
(14, 'Mirage', 3),
(15, 'Attrage', 3),
(16, 'Avalon', 4),
(17, 'Camry', 4),
(18, 'Corolla', 4),
(19, 'Highlander', 4),
(20, 'Land Cruiser', 4),
(21, 'Accord', 5),
(22, 'Amaze', 5),
(23, 'Avancier', 5),
(24, 'Ballade', 5),
(25, 'Civic', 5),
(26, 'Altima', 6),
(27, 'Armada', 6),
(28, 'Frontier', 6),
(29, 'Kicks', 6),
(30, 'Maxima', 6);

-- --------------------------------------------------------

--
-- Table structure for table `car_rental`
--

CREATE TABLE `car_rental` (
  `rental_id` int(11) NOT NULL,
  `rental_fromdate` varchar(20) DEFAULT NULL,
  `rental_todate` varchar(20) DEFAULT NULL,
  `model_name` varchar(100) DEFAULT NULL,
  `rental_fullname` varchar(100) DEFAULT NULL,
  `rental_age` varchar(10) DEFAULT NULL,
  `rental_phone` varchar(100) DEFAULT NULL,
  `rental_email` varchar(100) DEFAULT NULL,
  `rental_driver_fullname` varchar(100) DEFAULT NULL,
  `rental_driver_age` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_rental`
--

INSERT INTO `car_rental` (`rental_id`, `rental_fromdate`, `rental_todate`, `model_name`, `rental_fullname`, `rental_age`, `rental_phone`, `rental_email`, `rental_driver_fullname`, `rental_driver_age`) VALUES
(1, '2020-03-16', '2020-03-25', 'Lancer', 'Abdelkader Bendouma', '34', '0549095637', 'abendouma@gmail.com', NULL, NULL),
(2, '2020-03-25', '2020-03-25', 'CX-3', 'gffgfg gfgfgf', '45', '33333333', 'ssss@ggg.com', NULL, NULL),
(3, '2021-01-20', '2021-01-26', 'Forester', 'test test', '18', '0000000000000', 'test@email.com', NULL, NULL),
(4, '2021-04-07', '2021-04-08', 'BRZ', 'yasser sedira', '32', '0666410834', 'root@gmail.com', NULL, NULL),
(5, '2021-05-09', '2021-05-21', 'Lancer', 'Arthur Lwanga', '30', '25678505528', 'alwangac@gmail.com', NULL, NULL),
(6, '2022-05-14', '2022-05-16', 'CX-3', 'Jennifer Wanda', '33', '999999999', 'hawkgunner777@gmail.com', NULL, NULL),
(7, '2023-04-14', '2023-04-27', 'BRZ', 'jgjhf gfhgf', '55', '435435', 'hgf@hgf.kk', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_company`
--
ALTER TABLE `car_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `car_model`
--
ALTER TABLE `car_model`
  ADD PRIMARY KEY (`model_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `car_rental`
--
ALTER TABLE `car_rental`
  ADD PRIMARY KEY (`rental_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_company`
--
ALTER TABLE `car_company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `car_model`
--
ALTER TABLE `car_model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `car_rental`
--
ALTER TABLE `car_rental`
  MODIFY `rental_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_model`
--
ALTER TABLE `car_model`
  ADD CONSTRAINT `car_model_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `car_company` (`company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
