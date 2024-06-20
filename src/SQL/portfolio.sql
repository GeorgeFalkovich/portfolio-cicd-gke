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
-- Database: `portfolio-3133338ebb`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE DATABASE IF NOT EXISTS portfolio;
USE portfolio;

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `main` text NOT NULL,
  `chapter1` text NOT NULL,
  `chapter2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `main`, `chapter1`, `chapter2`) VALUES
(1, 'As a DevOps and Cloud Engineer with extensive experience in Application Development, I have worked with a range of tools and technologies that include \r\n<p class=\"title\"> GCP, AWS, Terraform, Kubernetes, Jenkins, Linux, Java, JavaScript, Python, Node.js, React, PHP, SQL and NoSQL Databases management.</p>\r\n\r\nI specialize in cloud-based solutions, infrastructure automation, and continuous integration and deployment. With expertise in containerization, cloud computing, and agile methodologies, I am able to design, implement, and manage complex cloud architectures.\r\n\r\nI have a strong background in DevOps and cloud computing, and I am always eager to learn new technologies and tools. I am passionate about automation and am always looking for ways to improve efficiency and productivity.\r\n\r\nIn my career, I have successfully delivered various cloud-based projects, including migrating on-premise applications to the cloud and implementing scalable cloud architectures. I have a proven track record of building and deploying enterprise-grade applications and services.\r\n\r\nWith my expertise in DevOps, cloud computing, and application development, I am confident that I can help your organization achieve its goals in the most efficient and cost-effective way.', 'I am certified as a: \r\n<p class=\"title\">Professional Google Cloud Architect, GCP Network Engineer, Google Data Engineer, Workspace Professional Administrator, AWS Professional Solutions Architect, Cloudflare Architect, and FinOps Practitioner.\r\n</p>\r\n</p>\r\nI possess extensive experience in the realm of digital media, particularly in the areas of photo, video, and sound production. This expertise enables me to enhance the aesthetic appeal and uniqueness of any project.\r\n</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `src` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `src`) VALUES
(1, 'img/img1.jpeg'),
(2, 'img/img2.jpeg'),
(3, 'img/img3.jpeg'),
(4, 'img/img4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `description` text NOT NULL,
  `link` varchar(250) NOT NULL,
  `site_name` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `img`, `description`, `link`, `site_name`, `type`) VALUES
(1, 'img/vt.jpg', 'Build with \r\nPHP/MySQL/ffmpeg/JS/\r\njQuery/AJAX/JSON/Html/Css', '/vt', 'YouTube clone from scratch', 'web'),
(2, 'img/maos.jpg', 'E-commerce build with ReactJS. Fully functional online store.', 'https://maos.netlify.com/', 'MAOS', 'web'),
(3, 'img/carrental.jpg', 'Landing page for Car Rental Company.\r\nPHP/Mysql/Ajax/Json/JS', '/carrental', 'Tyco Motors', 'web'),
(4, 'img/pizza.jpg', 'Implementing a lot of UI components. Fragments, recyclerviews etc...', 'https://play.google.com/store/apps/details?id=com.falk.george.pizzapagazz', 'Android App (Java) \"Pizza Pagazzz', 'android'),
(5, 'img/movies.jpg', 'Implementing RestAPI and SQL to store it with local SQLite database.', 'https://play.google.com/store/apps/details?id=com.georgefalk.moviesnew2018', 'Android App (Java) \"Movie Library\"', 'android'),
(6, 'img/jf.png', 'Build with ReactJS. Local hair-design salon. Web design & photography.', 'http://www.julia-falkovich.co.il', 'www.julia-falkovich.co.il', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `percent` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `description`, `percent`) VALUES
(1, 'GCP/AWS', 'Expertise in effectively utilizing and managing various cloud services offered by industry-leading providers.', '100'),
(2, 'Terraform', 'Developing Infrastructure as a Service (IaaS) solutions using Terraform', '100'),
(3, 'Git', 'Expertise in utilizing Git SCM for effective source code management', '100'),
(4, 'Kubernetes/Docker/VM\'s', 'Expertise in effectively utilizing Kubernetes and other deployment solutions to streamline and manage software deployments.', '100'),
(5, 'Programming', 'A strong command of various programming languages and technologies, including Java, Python, JavaScript, Node.js, React, HTML, and CSS.', '100'),
(6, 'Networking', 'Expertise in effectively configuring and managing network infrastructures, including TCP/IP and Virtual Private Clouds (VPCs).', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
