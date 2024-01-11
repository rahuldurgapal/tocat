-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 11, 2024 at 07:32 AM
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
-- Database: `blogapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(3, 'Programming'),
(4, 'Mobiles'),
(5, 'Politics'),
(6, 'Social'),
(7, 'Technologies'),
(8, 'Cricket');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `picture`, `filename`, `catid`, `userid`, `date`) VALUES
(8, 'What is php', 'PHP (recursive acronym for PHP: Hypertext Preprocessor) is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML. ', 'php.png', 'What is php.html', 3, 20, 'Tue, Jan 09 2024'),
(9, 'President of Congress Party', 'Rahul Rajiv Gandhi (born 19 June 1970) is an Indian politician and a member of the Indian Parliament, who represents the constituency of Wayanad, Kerala in the Lok Sabha.', 'rahul gandhi.jpeg', 'President of Congress Party.html', 5, 20, 'Wed, Jan 10 2024'),
(11, 'What is rasberry pi', 'Raspberry Pi is defined as a minicomputer the size of a credit card that is interoperable with any input and output hardware device', 'raspberry pi.jpeg', 'What is rasberry pi.html', 7, 21, 'Mon, Jan 08 2024'),
(12, 'Google Gemini', 'Gemini is the result of large-scale collaborative efforts by teams across Google, including our colleagues at Google Research. It was built from the ground up to be multimodal,', 'google gemini.jpeg', 'Google Gemini.html', 7, 21, 'Mon, Jan 08 2024'),
(13, 'Team India Match Report', 'After being troubled by a couple of short balls, Iyer lofts one down the ground for four to wrap up a seven-wicket win for India.', 'cricket india.jpeg', 'Team India Match Report.html', 8, 22, 'Sun, Jan 07 2024'),
(14, 'ICC t20 world cup', 'The ICC T20 World Cup 2024 is the 9th edition of the Cricket Tournament which is contested by the Mens National Team and is held by the ICC.', 't20 world cup.png', 'ICC t20 world cup.html', 8, 22, 'Wed, Jan 10 2024'),
(16, 'What is Dynamic Programming', 'Dynamic programming is both a mathematical optimization method and an algorithmic paradigm. The method was developed by Richard Bellman in the 1950s and has found applications in numerous fields, from aerospace engineering to economics.', 'dp.jpeg', 'What is Dynamic Programming.html', 3, 20, 'Thu, Jan 11 2024');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `picture` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `picture`) VALUES
(20, 'Rahul Durgapal', 'rahul@gmail.com', 'rahul123', 'profile.jpg'),
(21, 'Arjun Tripathi', 'arjun@gmail.com', 'arjun123', 'arjun_image.jpeg'),
(22, 'Kuamr Aniket', 'aniket@gmail.com', 'aniket123', 'avatar_1689533960.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
