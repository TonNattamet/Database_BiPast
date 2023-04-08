-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2022 at 09:49 AM
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
-- Database: `data_movie(1)`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_movie`
--

CREATE TABLE `data_movie` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `vdo_ex` text NOT NULL,
  `vdo_main` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_movie`
--

INSERT INTO `data_movie` (`id`, `name`, `img`, `vdo_ex`, `vdo_main`) VALUES
(1, 'Demon Slayer', 'https://cms.dmpcdn.com/travel/2020/10/29/a6c3fd10-19d6-11eb-8b5f-a9f42b71c393_original.jpg', 'Fs4vYQ9zT9g', '_ntCsO8N7jA'),
(2, 'Minions', 'https://cf.shopee.co.th/file/83494d60f36dc99e512cc7ab16c6b687', 'uiyHmuCoARk', 'sL3kLxsy-Lg'),
(3, 'Winnie The Pooh', 'https://www.bloggang.com/data/j/jommyuno/picture/1344660172.jpg', 'hRL5FdBb2mc', 'hRL5FdBb2mc'),
(4, 'fast and furious 7', 'https://upload.wikimedia.org/wikipedia/th/f/f6/Fast_%26_Furious_7_Thai_poster.jpg', 'Skpu5HaVkOc', 'RgKAFK5djSk'),
(5, 'Friday the 13th The Final chapter', 'https://img.kapook.com/u/2015/pailin_p/9994_Movie/Friday4.jpg', 'cCfO1aB8CIE', 'cCfO1aB8CIE'),
(6, 'Your Name', 'https://picfiles.alphacoders.com/504/thumb-50493.jpg', 'NooIc3dMncc', 'NooIc3dMncc'),
(7, 'the snake', 'https://s.isanook.com/mv/0/rp/r/w728/ya0xa0m1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL212LzAvdWQvMjAvMTAyMDkzLzExNzE3NjA2Ml8xMTI0Nzc4NDcyMjk3OTRfNzA5LmpwZw==.jpg', 'xNhAjvdy7ok', 'fc9g-nPpJSc'),
(8, 'Spider man no way home', 'https://terrigen-cdn-dev.marvel.com/content/prod/1x/snh_online_6072x9000_posed_01.jpg', 'JfVOs4VSpmA', 'JfVOs4VSpmA'),
(9, 'Annabelle comes home', 'https://images.moviesanywhere.com/412278051451bd29427d51bcb3fc468e/4311f1f7-9863-4be4-a45b-921adcf4dbac.jpg', 'b9mwq0PyW_4', 'b9mwq0PyW_4'),
(10, 'The Batman ', 'https://cdn.majorcineplex.com/uploads/movie/3084/thumb_3084.jpg', 'AJmEaYsLYB8', 'AJmEaYsLYB8'),
(11, 'Joker', 'https://gdb.voanews.com/61CE3CD5-A01C-4702-BBAE-C963AEA1BC8F_w408_r0_s.jpg', 'zAGVQLHvwOY', 'zAGVQLHvwOY'),
(12, 'Arcane ', 'https://i.etsystatic.com/15963200/r/il/6ddc0d/3546316363/il_fullxfull.3546316363_s6es.jpg', '4Ps6nV4wiCE', '4Ps6nV4wiCE'),
(13, 'Lupin', 'https://i.etsystatic.com/22974224/r/il/3a76f2/3007295613/il_fullxfull.3007295613_k8u6.jpg', 'ga0iTWXCGa0', 'ga0iTWXCGa0'),
(14, 'Sherlock Holmes', 'https://m.media-amazon.com/images/I/61f2eN+A2sL._AC_.jpg', 'J7nJksXDBWc', 'J7nJksXDBWc'),
(15, 'LA LA Land', 'https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_FMjpg_UX1000_.jpg', '0pdqf4P9MB8', '0pdqf4P9MB8'),
(16, 'The greatest showman', 'https://ae01.alicdn.com/kf/H53a4de93f0204e559e21a318b6d90afc5/The-Greatest-Showman-Hugh-Jackman-Zendaya-Zac-Efron-24x36inch.jpg', 'AXCTMGYUg9A', 'AXCTMGYUg9A'),
(17, 'Frozen 2', 'https://cdn.europosters.eu/image/750/posters/frozen-2-magic-i83468.jpg', 'eSLe4HuKuK0', 'eSLe4HuKuK0'),
(18, 'All of us are Dead', 'https://photos.hancinema.net/photos/photo1418381.jpg', 'IN5TD4VRcSM', 'IN5TD4VRcSM'),
(19, 'Along with the gods', 'https://i.pinimg.com/474x/ab/87/b3/ab87b3357c9b47864bfdc7ddf99aeee0.jpg', 'sD7dmu-IWNw', 'sD7dmu-IWNw'),
(20, 'JUMANJI: WELCOME TO THE JUNGLE', 'https://www.themoviedb.org/t/p/original/jBi26q0wGbN30doFUFvycdYwvyZ.jpg', '2QKg5SZ_35I', '2QKg5SZ_35I'),
(21, 'Black Panther', 'https://m.media-amazon.com/images/I/810SlMj1+eL._AC_SY741_.jpg', 'xjDjIWPwcPU', 'xjDjIWPwcPU'),
(22, 'Harry Potter', 'https://image.posterlounge.com/images/l/1893834.jpg', 'VyHV0BRtdxo', 'VyHV0BRtdxo'),
(23, 'Us', 'https://m.media-amazon.com/images/I/91jatiUZjtL._AC_SL1500_.jpg', 'hNCmb-4oXJA', 'hNCmb-4oXJA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_movie`
--
ALTER TABLE `data_movie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_movie`
--
ALTER TABLE `data_movie`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
