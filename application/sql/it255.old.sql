-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2017 at 12:39 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it255`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `idHotela` int(11) NOT NULL,
  `nazivHotela` varchar(128) NOT NULL,
  `adresaHotela` varchar(128) NOT NULL,
  `brojSoba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`idHotela`, `nazivHotela`, `adresaHotela`, `brojSoba`) VALUES
(1, 'Hotel Metropolitan', 'Tadeusa Koscuska 63', 100),
(2, 'Joenna', 'New Hampshire 10W', 300),
(5, 'Jugoslavija', 'Jugoslovenska 31', 500),
(10, 'Slavija', 'Slavijska 1', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sobe`
--

CREATE TABLE `sobe` (
  `idSobe` int(11) NOT NULL,
  `brojKreveta` int(11) NOT NULL,
  `brojSobe` int(11) NOT NULL,
  `brojKvadrata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sobe`
--

INSERT INTO `sobe` (`idSobe`, `brojKreveta`, `brojSobe`, `brojKvadrata`) VALUES
(1, 10, 101, 120),
(3, 10, 105, 200),
(6, 2, 201, 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `token`) VALUES
(11, 'Admin', 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '4ee1ea98c057cce3c9e4b5605c891b12aa29c539'),
(12, 'Nemanja', 'Kuzmanovic', 'nomad', '09e8b4d5ba57c7dd0152de602822ff0a', '9e3138e008f09997d6ccaabd87b2de0e92bf8cee'),
(14, 'Sava', 'Jeremic', 'savica', '8833d6f3411d0e5ba4a0b8e584e09eb2', 'adc3412af5de8f05bba90f49ce46845240836566');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`idHotela`);

--
-- Indexes for table `sobe`
--
ALTER TABLE `sobe`
  ADD PRIMARY KEY (`idSobe`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `idHotela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sobe`
--
ALTER TABLE `sobe`
  MODIFY `idSobe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
