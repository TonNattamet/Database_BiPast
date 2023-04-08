-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2022 at 05:06 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_ceategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name_ceategory`) VALUES
(1, 'หนังฝรั่ง'),
(2, 'หนังจีน'),
(3, 'หนังเกาหลี'),
(4, 'หนัง Marvel'),
(5, 'การ์ตูน'),
(6, 'อื่นๆ');

-- --------------------------------------------------------

--
-- Table structure for table `data_movie`
--

CREATE TABLE `data_movie` (
  `id_movie` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `vdo_ex` text NOT NULL,
  `vdo_main` text NOT NULL,
  `year` int(4) NOT NULL,
  `time` varchar(8) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_movie`
--

INSERT INTO `data_movie` (`id_movie`, `name`, `img`, `vdo_ex`, `vdo_main`, `year`, `time`, `id_category`) VALUES
(8, 'Minions', 'https://cf.shopee.co.th/file/83494d60f36dc99e512cc7ab16c6b687', 'uiyHmuCoARk', 'sL3kLxsy-Lg', 2016, '01:15:28', 5),
(9, 'The Incredibles', 'https://cf.shopee.co.th/file/c445e2feee86b53f13e599196a976846', '1r8NPJCYGcg', 'kByZ311peqg', 2018, '01:45:25', 3),
(10, 'fast and furious 7', 'https://upload.wikimedia.org/wikipedia/th/f/f6/Fast_%26_Furious_7_Thai_poster.jpg', 'Skpu5HaVkOc', 'RgKAFK5djSk', 2016, '02:12:58', 1),
(11, 'ดาบพิฆาตรอสูร', 'http://anime-subth.net/wp-content/uploads/2021/12/Kimetsu-no-Yaiba-%E0%B8%A0%E0%B8%B2%E0%B8%842-%E0%B8%94%E0%B8%B2%E0%B8%9A%E0%B8%9E%E0%B8%B4%E0%B8%86%E0%B8%B2%E0%B8%95%E0%B8%AD%E0%B8%AA%E0%B8%B9%E0%B8%A3-%E0%B8%8B%E0%B8%B1%E0%B8%9A%E0%B9%84%E0%B8%97%E0%B8%A2.jpg', 'Fs4vYQ9zT9g', '_ntCsO8N7jA', 2014, '02:35:12', 5),
(12, 'test', 'https://obs.line-scdn.net/0hHr0B2qf4F10NOzxcOvBoCjdtFDI-VwReaQ1GXlFVSWl1DFcJYVUKaCFoHWhwWVADYw5bPCgyDGxwW1MMMVQK/w644', 'A0wg3Zkxq1c', 'LMxaLT3lZB8', 2022, '01:49:35', 2),
(15, 'SPIDER-MAN', 'https://cdn.majorcineplex.com/uploads/movie/2550/thumb_2550.jpg', 'rt-2cxAiPJk', 'JfVOs4VSpmA', 2021, '00:44:47', 4),
(16, 'Your Name', 'https://picfiles.alphacoders.com/504/thumb-50493.jpg', 'NooIc3dMncc', 'NooIc3dMncc', 2002, '02:44:11', 5);

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id_episode` int(6) NOT NULL,
  `name_episode` varchar(100) NOT NULL,
  `id_movie` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id_type` int(6) NOT NULL,
  `id_movie` int(6) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `userlevel` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `userlevel`) VALUES
(1, 'Ryan', 'Ryan@gmail.com', '1234', 'm'),
(2, 'Cat', 'Cat@gmail.com', '1234', 'a'),
(3, 'Kuy', 'Kuy@gmail.com', '1234', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `id_view` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `id_movie` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `data_movie`
--
ALTER TABLE `data_movie`
  ADD PRIMARY KEY (`id_movie`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id_episode`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`id_view`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_movie`
--
ALTER TABLE `data_movie`
  MODIFY `id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_movie`
--
ALTER TABLE `data_movie`
  ADD CONSTRAINT `data_movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
