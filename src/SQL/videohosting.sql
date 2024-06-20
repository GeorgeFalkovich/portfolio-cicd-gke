-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: shareddb-u.hosting.stackcp.net
-- Generation Time: Apr 13, 2023 at 10:28 AM
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
-- Database: `videohosting-3133330871`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--



CREATE DATABASE IF NOT EXISTS videohosting;
USE videohosting;

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vihicles'),
(3, 'Music'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism'),
(16, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePosted` TIMESTAMP NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(110, 'semro', 55, 12, 'nnnnnnnnnnnn', '2022-11-29 08:42:06'),
(111, 'semro', 55, 12, 'jhh', '2022-11-29 08:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `commentsid`
--

CREATE TABLE IF NOT EXISTS `commentsid` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePost` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE IF NOT EXISTS `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL DEFAULT 0,
  `videoId` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL DEFAULT 0,
  `videoId` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'Miche'),
(2, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE IF NOT EXISTS `thumbnails` (
  `id` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoid`, `filePath`, `selected`) VALUES
(58, 38, 'uploads/videos/thumbnails/38-5ea8809e2b39a.jpg', 1),
(59, 38, 'uploads/videos/thumbnails/38-5ea8809ee3e55.jpg', 0),
(60, 38, 'uploads/videos/thumbnails/38-5ea880a06218e.jpg', 0),
(61, 39, 'uploads/videos/thumbnails/39-5ea880eb52c28.jpg', 1),
(62, 39, 'uploads/videos/thumbnails/39-5ea880eb5e74a.jpg', 0),
(63, 39, 'uploads/videos/thumbnails/39-5ea880eb6c1b4.jpg', 0),
(64, 40, 'uploads/videos/thumbnails/40-5ea884d896c83.jpg', 1),
(65, 40, 'uploads/videos/thumbnails/40-5ea884d9a520d.jpg', 0),
(66, 40, 'uploads/videos/thumbnails/40-5ea884db80920.jpg', 0),
(67, 47, 'uploads/videos/thumbnails/47-5ea89b9ae4c5d.jpg', 1),
(68, 47, 'uploads/videos/thumbnails/47-5ea89b9ae5c8d.jpg', 0),
(69, 47, 'uploads/videos/thumbnails/47-5ea89b9ae6920.jpg', 0),
(70, 49, 'uploads/videos/thumbnails/49-5ea89ec4ab483.jpg', 1),
(71, 49, 'uploads/videos/thumbnails/49-5ea89ec4becb0.jpg', 0),
(72, 49, 'uploads/videos/thumbnails/49-5ea89ec4d04fa.jpg', 0),
(73, 50, 'uploads/videos/thumbnails/50-5ea9668b22bbd.jpg', 1),
(74, 50, 'uploads/videos/thumbnails/50-5ea9668c6dc40.jpg', 0),
(75, 50, 'uploads/videos/thumbnails/50-5ea9668f36b02.jpg', 0),
(76, 51, 'uploads/videos/thumbnails/51-5ea967af90f3b.jpg', 1),
(77, 51, 'uploads/videos/thumbnails/51-5ea967afee048.jpg', 0),
(78, 51, 'uploads/videos/thumbnails/51-5ea967b0a1dfb.jpg', 0),
(79, 52, 'uploads/videos/thumbnails/52-5ea96bf12f293.jpg', 1),
(80, 52, 'uploads/videos/thumbnails/52-5ea96bf18cf04.jpg', 0),
(81, 52, 'uploads/videos/thumbnails/52-5ea96bf22320a.jpg', 0),
(82, 53, 'uploads/videos/thumbnails/53-5ea96dff58fe2.jpg', 1),
(83, 53, 'uploads/videos/thumbnails/53-5ea96dffb33f9.jpg', 0),
(84, 53, 'uploads/videos/thumbnails/53-5ea96e00c9ed9.jpg', 0),
(85, 54, 'uploads/videos/thumbnails/54-5ea96e6341b4c.jpg', 1),
(86, 54, 'uploads/videos/thumbnails/54-5ea96e6469794.jpg', 0),
(87, 54, 'uploads/videos/thumbnails/54-5ea96e66cb5ac.jpg', 0),
(88, 55, 'uploads/videos/thumbnails/55-5ea99da68ea16.jpg', 1),
(89, 55, 'uploads/videos/thumbnails/55-5ea99da71bd48.jpg', 0),
(90, 55, 'uploads/videos/thumbnails/55-5ea99da7ed3fd.jpg', 0),
(91, 56, 'uploads/videos/thumbnails/56-5ea9a289b4350.jpg', 1),
(92, 56, 'uploads/videos/thumbnails/56-5ea9a28a60919.jpg', 0),
(93, 56, 'uploads/videos/thumbnails/56-5ea9a28b99b16.jpg', 0),
(94, 58, 'uploads/videos/thumbnails/58-6128153b0b344.jpg', 1),
(95, 58, 'uploads/videos/thumbnails/58-6128153b1ad5c.jpg', 0),
(96, 58, 'uploads/videos/thumbnails/58-6128153b2a566.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` TIMESTAMP DEFAULT current_timestamp(),
  `profilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(6, 'George', 'Falkovich', 'admin', 'gfalk85@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2020-04-28 19:11:50', 'assets/img/profilePictures/default.png'),
(7, 'George', 'Falkovich', 'admin2', 'gf@gf.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', '2020-04-28 21:10:54', 'assets/img/profilePictures/default.png'),
(8, 'Meroj', 'Meroj', 'meroj', 'merojkukanov@gmail.com', 'e34d7a14935822270031b535241be63780d65832b7d02d4c02c4a0f4ab8c41ce73ecc9f72afa1e1e26f591d2c7283d70140cf7836ba9ef4d3304cb059c0980e2', '2021-03-17 06:30:10', 'assets/img/profilePictures/default.png'),
(9, 'Jo', 'Bob', 'jbobjoe', 'jbob@jbob.com', 'f5461b7db484829f6e16173b1fa9f20bee5377a75c4434daf60836d18c2540bcacfe05f271920048c4f8b61a3f4478bb61e523670f15705a6074141e284df538', '2021-08-26 23:23:52', 'assets/img/profilePictures/default.png'),
(10, 'Efwfwfe', 'Wefwefwfewef', 'WFEwefwEFWEF', 'petenyiodon@gmail.com', '2036b6ee37e398d3206b44199f6323c0bd343f11526a6fd96fd79cf764426e02c0d43a2f019931d51a90fad3ba044c66110923f608c2289b05005f7706b1cecd', '2021-11-17 16:47:01', 'assets/img/profilePictures/default.png'),
(11, 'Sam', 'Sam', 'semro', 's@s.com', 'c252381bfbff29297a4f0deabcac285c3a9ffa8baf454935b7eaf5d598c7a5cf6b536fcb51b33582c0bf0a635b7a85d84687ce68bdc5cdf134fc126b925632f8', '2022-11-29 08:39:48', 'assets/img/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadedDate` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadedDate`, `views`, `duration`) VALUES
(52, 'admin', 'X-Men Theme on the guitar', '', 1, 'uploads/videos/5ea96be8b9169.mp4', 3, '2020-04-29 12:58:32', 85, '01:17'),
(53, 'admin', 'George Falk 2013', 'Me playing guitar while ago', 1, 'uploads/videos/5ea96dfa2d93b.mp4', 3, '2020-04-29 13:07:22', 77, '01:19'),
(54, 'admin', 'Bob Wood', '80 years old man plays amazing guitar', 1, 'uploads/videos/5ea96e46923b8.mp4', 3, '2020-04-29 13:08:38', 77, '01:27'),
(55, 'admin', 'Cartman vs Cartman', 'It\'s the South Park Bro Down 2020 and we have Cartman vs Liane Cartman in today\'s match-up! Vote in our Community tab now.', 1, 'uploads/videos/5ea99da0c8ce3.mp4', 1, '2020-04-29 16:30:40', 72, '00:37'),
(56, 'admin', 'Pranks', 'Best of Just For Laughs Gags Compilation', 1, 'uploads/videos/5ea9a279cd7e2.mp4', 9, '2020-04-29 16:51:21', 75, '05:45'),
(57, 'jbobjoe', 'Test Title', 'checking', 0, 'uploads/videos/61281514e0a2d.mp4', 1, '2021-08-26 23:26:28', 38, NULL),
(58, 'jbobjoe', 'yrdy', 'yrdy', 0, 'uploads/videos/6128153930f4c.mp4', 1, '2021-08-26 23:27:05', 39, '00:02'),
(59, 'semro', 'ddd', 'ddd', 1, 'uploads/videos/6385c5a446698.mp4', 1, '2022-11-29 08:41:08', 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE  `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentsid`
--
ALTER TABLE `commentsid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `commentsid`
--
ALTER TABLE `commentsid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
