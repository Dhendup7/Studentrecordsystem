-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 04:36 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_police` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_police`, `u_pincode`, `file`, `u_mother`, `u_family`, `staff_id`, `image`, `uploaded`) VALUES
(1, '23020', 'Dhendup', '', 'Ngwang', '', 'Male', 'dhendup.sherpa2@gmail.com', '9823728097', 'Choose...', '', '', '', '', '', 'Pasang', '', '', 'maxresdefault.jpg', '2022-03-25 17:47:35'),
(2, '23021', 'Norgen', 'Sherpa', 'Lhakpa ', '2005-11-20', 'Male', 'norgen4@gmail.com', '9823728095', 'Choose...', 'Bagmati', 'Solukhumbu', 'Bagmati', '', '', 'Nima', '', '1', '196-1967339_naruto-wallpaper-for-pc-kakashi-anbu-wallpaper-4k.jpg', '2022-04-13 09:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'kushkush', '$2y$10$pkgNOc0r6DaiDnCTIVT/VubRm0LqncpPgipzdARaH/9wZto.zmYLu', '2021-05-22 00:30:03'),
(2, '123123', '$2y$10$AwA0obkWAdzF6Z6zCqZ3Xu5QinFNWhL89iAUde8YYfYorruaxOjCm', '2021-07-17 16:49:54'),
(3, 'dhendup_sherpa', '$2y$10$M60u1SEHKoWJUEDI3/8AduMon1q5Dxy3KqVUKIIL2aA.iJsGWC14u', '2022-02-04 23:03:12'),
(4, 'dhendupsherpa', '$2y$10$PZtu2483hhld6aDkwjev2uiW7Gn4ybMU55Ss94/lqpeo3yaROOFH.', '2022-02-04 23:05:56'),
(5, 'jackey7', '$2y$10$t0yFdp8MCYkVYVXgt/R2cumvdZvhgBYJJl.RQlzj/pr8tfMXbmwfi', '2022-02-04 23:12:13'),
(6, 'franky', '$2y$10$A61SWcu100HdS/SQKI.4POq4dcnaFT/cfeS1qNuz3Ji2j7/JeMW2G', '2022-03-21 12:22:21'),
(7, 'asim', '$2y$10$7C7Tj2AOtjmMLb.0iJTrK.UIZvNDlpWjpc8WXRFl2Kcv6HLajKo4G', '2022-03-25 17:40:57'),
(8, 'Dhendup', '$2y$10$drgFtTiXPpPd6gISKNYDlu5GJihDQufDUSQ/GN/lz4J8VhMjtaM/a', '2022-03-25 17:45:26'),
(9, 'jackey', '$2y$10$yw.aDSP33O2pYu3WpMXi/OxZJN0YGS9qak3ScPWTH/.sNhrgXbWGC', '2022-04-15 17:28:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
