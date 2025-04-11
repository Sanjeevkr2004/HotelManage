-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 10:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluebirdhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `country`, `phone_no`) VALUES
('chandan', 'India', 123654789);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `RoomType` varchar(20) NOT NULL,
  `Bed` varchar(10) NOT NULL,
  `NoofRoom` int(20) NOT NULL,
  `Meal` varchar(10) NOT NULL,
  `cin` date NOT NULL,
  `cout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`Name`, `Email`, `Country`, `Phone`, `RoomType`, `Bed`, `NoofRoom`, `Meal`, `cin`, `cout`) VALUES
('nav', 'gh@gmail.com', 'india', '6583476875', 'deluxe', 'double', 1, 'breakfast', '0000-00-00', '0000-00-00'),
('chandan', 'abc@1234', 'India', '2145896325', 'Single Room', 'Single', 1, 'Room only', '2024-05-21', '2024-05-22'),
('xyz', 'xyz@gmail.com', 'India', '1236547531', 'Single Room', 'Single', 1, 'Room only', '2024-05-24', '2024-05-25'),
('chandan', 'abc@1234', 'India', '0214589632', 'Deluxe Room', 'Double', 1, 'Breakfast', '2024-05-23', '2024-05-24'),
('SANJEEV KUMAR SINGH', 'b220029@nitsikkim.ac.in', 'India', '0997368917', 'Superior Room', 'Single', 1, 'Half Board', '2024-05-23', '2024-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`username`, `email`, `password`) VALUES
('chandan', 'abc@1234', '123abc'),
('sanj', 'sanj@gmail.com', 'sanj1'),
('sanjeev', 'abc@gmail.com', 'abc123'),
('xyz', 'xyz@gmail.com', 'xyz1234');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Email`, `Password`) VALUES
('staff1@gmail.com', 'staff1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_email` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
