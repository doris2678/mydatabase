-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-06-04 09:35:25
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `foodie`
--

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `birthday` date NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`id`, `acc`, `pw`, `name`, `email`, `birthday`, `created_time`, `updated_time`) VALUES
(2, 'doris', '1234', '黃test', 'doris@123', '2025-06-01', '2025-06-04 05:08:13', '2025-06-04 05:08:13'),
(3, 'lin', '1234', '林一', 'lin@1234', '2025-04-01', '2025-06-04 05:10:25', '2025-06-04 05:10:25'),
(4, 'wu', '12345', '王一', 'wu@123', '2025-06-01', '2025-06-04 05:11:26', '2025-06-04 05:11:26'),
(6, 'li', '1234', '李四', 'li@1234', '2025-04-01', '2025-06-04 05:20:59', '2025-06-04 05:20:59'),
(7, 'aaaa', 'd41d8cd98f00b204e9800998ecf8427e', 'aaaaa', 'aa@123', '2025-04-07', '2025-06-04 05:35:27', '2025-06-04 05:35:27'),
(8, 'doris01', '81dc9bdb52d04dc20036dbd8313ed055', 'doris01', 'doris01@123', '2025-04-01', '2025-06-04 06:46:23', '2025-06-04 06:46:23');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
