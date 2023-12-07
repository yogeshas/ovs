-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 08:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `firstname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`firstname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `area` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `startdate`, `area`) VALUES
(69, '2021-05-12', 'anekal'),
(70, '2021-05-13', 'sirsiroad'),
(71, '2021-06-10', 'bapunagar'),
(72, '2021-05-05', 'nagarkalinga'),
(73, '2021-05-05', 'toshali'),
(74, '2021-05-28', 'ambli'),
(75, '2021-05-13', 'amraiwadi');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `profile` varchar(150) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`firstname`, `lastname`, `symbol`, `area`, `profile`, `id`) VALUES
('santosh', 's', 'congress', 'electroniccity', 'male.png', 37),
('venu', 'katkhar', 'bjp ', 'anekal', 'male.png', 38),
('satish', 'm', 'congress', 'anekal', 'male.png', 39),
('rakshith', 'r', 'bjp', 'sirsiroad', 'male.png', 40),
('shreedhar', 'reddy', 'congress', 'sirsiroad', 'male.png', 41),
('naveen', 'm', 'bjp', 'bapunagar', 'male.png', 42),
('shashank ', 'r', 'bjp', 'nagarkalinga', 'male.png', 44),
('shashank ', 'bhat', 'congress', 'nagarkalinga', 'male.png', 45),
('suman', 'r', 'bjp', 'toshali', 'male.png', 46),
('shafi', 'ahmed', 'congress', 'toshali', 'male.png', 47),
('yuvraj ', 'v', 'bjp', 'ambli', 'male.png', 48),
('Chandru', 'r', 'congress', 'ambli', 'male.png', 49),
('hemanth', 'm', 'congress', 'amraiwadi', 'male.png', 51),
('nadim', 'k', 'congress', 'bapunagar', 'ae05bca3dxx.jpg', 53),
('Yogesh', 'As', 'bjp', 'electroniccity', '107351309_732144260971278_4909793221365165306_o.jpg', 54),
('manojn', 'hamiltion', 'bjp', 'amraiwadi', 'download (1).jpg', 55);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`username`, `email`, `phone`, `message`, `id`) VALUES
('gerogia', 'gerogia@gmail.com', '6361285589', 'Hello i need to update the aadhar card number', 7),
('Yogesh', 'yogi@gmail.com', '6361285589', 'hello some issues there to login', 8),
('jack', 'jack@gmail.com', '6361285589', 'hi', 9);

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

CREATE TABLE `loginusers` (
  `firstname` varchar(100) NOT NULL,
  `ano` varchar(100) NOT NULL,
  `rank` varchar(80) NOT NULL DEFAULT 'voter',
  `status` varchar(10) NOT NULL DEFAULT 'INACTIVE',
  `area` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `livephoto` varchar(20000) DEFAULT 'images/nolive.jpg'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginusers`
--

INSERT INTO `loginusers` (`firstname`, `ano`, `rank`, `status`, `area`, `profile`, `livephoto`) VALUES
('Yogesh', '123456789879', 'voter', 'ACTIVE', 'anekal', 'image/ae05bca3dxx.jpg', 'images/609bf18de00e5.jpg'),
('jack', '123456789870', 'voter', 'ACTIVE', 'anekal', 'image/598dcccf-6427-4e62-974a-6f73515d830f.jfif', 'images/609beac04f68e.jpg'),
('sunil', '123456789101', 'voter', 'ACTIVE', 'electroniccity', 'image/598dcccf-6427-4e62-974a-6f73515d830f.jfif', 'images/609bebda0bae8.jpg'),
('hari', '123456789105', 'voter', 'ACTIVE', 'electroniccity', 'image/107351309_732144260971278_4909793221365165306_o.jpg', 'images/609caa1626b6e.jpg'),
('shashikala', '123456789876', 'voter', 'INACTIVE', 'electroniccity', 'image/ae05bca3dxx.jpg', 'images/609cb09e2cae2.jpg'),
('abhishek', '123456789871', 'voter', 'ACTIVE', 'bapunagar', 'image/download.jpg', 'images/60c2231d768ba.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'NOT VOTED',
  `voted` varchar(255) DEFAULT NULL,
  `voterid` varchar(255) NOT NULL,
  `vphoto` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`firstname`, `lastname`, `email`, `ano`, `dob`, `region`, `state`, `city`, `area`, `profile`, `status`, `voted`, `voterid`, `vphoto`) VALUES
('Yogesh', 'as', 'yogi@gmail.com', '123456789879', '13/09/2001', 'SOUTH', 'KARNATAKA', 'BANGLORE', 'anekal', 'image/ae05bca3dxx.jpg', 'VOTED', 'CONGRESS', 'RRF1233437', 'image/107351309_732144260971278_4909793221365165306_o.jpg'),
('jack', 'ride', 'jack@gmail.com', '123456789870', '13/09/2001', 'SOUTH', 'KARNATAKA', 'BANGLORE', 'anekal', 'image/598dcccf-6427-4e62-974a-6f73515d830f.jfif', 'VOTED', 'BJP', 'RRF1233436', 'image/ae05bca3dxx.jpg'),
('sunil', 'As', 'sunilas20032004@gmail.com', '123456789101', '04/07/2001', 'SOUTH', 'KARNATAKA', 'BANGLORE', 'electroniccity', 'image/598dcccf-6427-4e62-974a-6f73515d830f.jfif', 'VOTED', 'BJP', 'RMK1234567', 'image/ae05bca3dxx.jpg'),
('hari', 'krishana', 'hari@gmail.com', '123456789105', '20/03/2000', 'SOUTH', 'KARNATAKA', 'BANGLORE', 'electroniccity', 'image/107351309_732144260971278_4909793221365165306_o.jpg', 'VOTED', 'CONGRESS', 'RRF1233438', 'image/598dcccf-6427-4e62-974a-6f73515d830f.jfif'),
('shashikala', 'h', 'samey@gmail.com', '123456789876', '13/09/2001', 'SOUTH', 'KARNATAKA', 'BANGLORE', 'electroniccity', 'image/ae05bca3dxx.jpg', 'NOT VOTED', NULL, 'RRF1233431', 'image/ae05bca3dxx.jpg'),
('abhishek', 'n', 'abhi@gmail.com', '123456789871', '13/09/2002', 'NORTH', 'RAJASTHAN', 'JAIPUR', 'bapunagar', 'image/download.jpg', 'VOTED', 'BJP', 'RRF1233435', 'image/62871-logo-macos-computer-apple-icons-free-download-png-hd.png');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `lan_id` int(100) NOT NULL,
  `fullname` varchar(10) NOT NULL,
  `votecount` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`lan_id`, `fullname`, `votecount`) VALUES
(1, 'BJP', 3),
(2, 'CONGRESS', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area` (`area`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginusers`
--
ALTER TABLE `loginusers`
  ADD UNIQUE KEY `firstname` (`firstname`) USING BTREE;

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD UNIQUE KEY `firstname` (`firstname`) USING BTREE;

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`lan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `lan_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
