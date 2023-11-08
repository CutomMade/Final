-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 10:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`, `Description`) VALUES
(1, 1, 'Cappuccino', 35, 1, 'cupochino.jpg', ''),
(2, 37, 'Cappuccino', 35, 1, 'cupochino.jpg', ''),
(3, 37, 'Hot Chocolate', 40, 1, 'hotChocolate.jpg', ''),
(4, 37, 'Pancakes', 65, 1, 'promoPancakeswithBlackcoffee.jpg', ''),
(71, 61, 'Hot Chocolate', 40, 1, 'hotChocolate.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `email_verification`
--

CREATE TABLE `email_verification` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_verification`
--

INSERT INTO `email_verification` (`id`, `name`, `email`, `password`, `otp`, `timestamp`, `user_type`) VALUES
(8, 'Ryan', 'rtryanmc@gmail.com', '$2y$10$l1OPGfut5BNrfuXz0dBQFeO/hg58CtIRi45Xe3SpIwOpasPaG5/cG', '268097', 1697496888, 'admin'),
(9, 'Denzel', 'denzelhadebe07@gmail.com', '$2y$10$rH7WwainSB50wUTL9SCGvuQgNdxP6XbdBe4Z9rMwVgnQXC3HA86iO', '318186', 1697497022, 'user'),
(15, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$rbBsm1HyTbqPvlMcifHNhuP9krwMwhE11X1u00vABv2kcwnTh1xzK', '196504', 1697801674, 'user'),
(16, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$5kNgd33RMIPME4ECDTATCeWmyhDlIlNLGPHY2mH7fg5tXLqQSz9a.', '425271', 1697801814, 'user'),
(17, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$vJZH2il3MJbUvKzVaf5NzevekuNntGw.vIOf1./Ue8egjXDkDvM6C', '959674', 1697802130, 'user'),
(18, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$/WWZd.4gA.LUPB/ODNwohuZTvafjf5K/wETDLe0pSVBnIpb6RnWFe', '955160', 1697804331, 'user'),
(19, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$PySAE9hFDw6wG80cS1DoyupF3Fkozcbt/eMB9qMZnxR/2RFFHxG7S', '777810', 1697807780, 'user'),
(20, 'Daniel', 'daniel.lukayi@gmail.com', 'Pass1234', '183134', 1697809004, 'user'),
(21, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$nU53sPwi19wm7JM5hLw8xucRfusk/g2ey78ZGMR1f5S11toEch5Ou', '579047', 1697810676, 'user'),
(22, 'Daniel', 'daniel.lukayi@gmail.com', 'Pass1234', '138665', 1697977399, 'user'),
(23, 'Daniel', 'daniel.lukayi@gmail.com', 'Pass1234', '878135', 1697986866, 'user'),
(24, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$XscdBveImeXL7tUI02nSqeuHzZvGkcSSIWErR6p9HEF4doNld7w.i', '511340', 1697987808, 'user'),
(26, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$uo12S7p9BJTilScaevwqJ.VylYTbNqdTH/jRdQU5WaQUM/18t5eAu', '975653', 1697999192, 'user'),
(28, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$OKxdK/Bj8P8fYJZwdPWGaezrCjp8TQTtRdLgFDsgLS6DAy0qLFj.6', '367878', 1698055462, 'user'),
(29, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$FzFeI.YxZVR9/x6CjuTE3.NxyOvwqDTxTttUIuRJtcHFVSvBrFYxa', '716459', 1698153895, 'user'),
(30, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$udbu/sMN9Rzz1E5CIwc5EO42R2SCtVsjVgvbzm54eodXwDcBFH1mm', '573012', 1699353644, ''),
(31, 'Phillip', 'phillip.choshi@eduvos.com', '$2y$10$gG/TO1FuDmp0eFI/GzJaWeJ8o8wqwaFKIo3r2jiHn03X1313vDSyO', '363155', 1699356302, ''),
(32, 'Phillip', 'spchoshi@gmail.com', '$2y$10$J2duSHGsmb0pNWInTaxQ6ex7Y8cPds8fNCh.ghNWs0zVUnsYJPEge', '617742', 1699356500, ''),
(40, 'Daniel', 'daniel.rukayi@gmail.com', '$2y$10$C4tx/57qBgCc1z8giFOJJec8BEhMYeov5wcdIdY0OMu6B5A7zsNXG', '595037', 1699387730, 'user'),
(41, 'Daniel', 'daniel.rukayi@gmail.com', '$2y$10$EZx20Mszjuf63kuax2Ou1Oy/X28EWFoD6D2JMvM/SKnU8wAk7OiPK', '595037', 1699387730, 'user'),
(42, 'Daniel', 'daniel.rukayi@gmail.com', '$2y$10$5aPm/6TzsqyMN8HKPtHsb.YvoRnPf0pZ5wU.y69ARvga7CO64SjDu', '595037', 1699387730, 'user'),
(43, 'Ry', 'matinenryan0@gmail.com', '$2y$10$NrBJMx6Y.dyL8lbhPZf46OA9npHG/FspSLSo2YonMQCebXh0qORty', '218428', 1699392419, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 51, '', '', '', 'Hellllooooooo'),
(4, 51, '', '', '', 'hic\r\n'),
(5, 51, '', '', '', 'Your coffee is good!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'completed',
  `Order_Number` varchar(100) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `total_products`, `total_price`, `placed_on`, `payment_status`, `Order_Number`, `order_date`) VALUES
(20, 51, '', 'Hot Chocolate (1) ', 40, '24-Oct-2023', 'completed', '69684BRA', '2023-11-05 21:44:40'),
(21, 51, '', 'Hot Chocolate (1) ', 40, '28-Oct-2023', 'pending', '81263LQG', '2023-11-05 21:44:40'),
(22, 51, '', 'Hot Chocolate (26) , Daniel Lukayi (1) ', 1045, '07-Nov-2023', 'completed', '78809NZG', '2023-11-07 12:57:26'),
(23, 51, '50299PUM ', 'Cappuccino (1) , Hot Chocolate (1) , Black coffee (4) ', 175, '07-Nov-2023', 'completed', '', '2023-11-07 23:42:21'),
(24, 51, '', 'Cappuccino (1) , Hot Chocolate (1) , Black coffee (4) ', 175, '07-Nov-2023', 'completed', '50299PUM ', '2023-11-07 23:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `product_type`, `Description`) VALUES
(5, 'Cappuccino', 35, 'cupochino.jpg', 'Coffee', 'You and only you'),
(6, 'Hot Chocolate', 40, 'hotChocolate.jpg', 'Coffee', 'Five Roses Orgin'),
(7, 'Pancakes', 65, 'promoPancakeswithBlackcoffee.jpg', '', ''),
(8, 'Black coffee', 25, 'blackCoffe.jpg', 'Coffee', 'You and only you'),
(9, 'Daniel Lukayi', 5, 'example3.jpg', 'Coffee', 'rvsvdvds'),
(10, 'Daniel', 19, 'cupochino.jpg', 'Coffee', 'He is the best');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `name`, `image`) VALUES
(1, 'Buy 1 Coffee Get 2 croissant', 'MicrosoftTeams-image (5).png'),
(2, 'Buy 1 coffee get Toasted bread and eggs for R50', 'breadAndEggs.jpg'),
(3, 'Whip Cream Coffee special on Wednesday for R25', 'whipCreamCoffee.jpg'),
(4, 'Danielisking', 'example1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `discount_percentage` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `code`, `discount_percentage`, `created_at`) VALUES
(21, '971OF', 8.00, '2023-11-07 09:53:47'),
(22, '132LO', 10.00, '2023-11-07 09:54:07'),
(23, '793AE', 6.00, '2023-11-07 09:54:12'),
(26, '155HR', 5.00, '2023-11-07 21:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `reset_token_hash` varchar(64) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `reset_token_hash`, `reset_token_expires_at`) VALUES
(5, 'Ryan', 'rtryanmc@gmail.com', '$2y$10$l1OPGfut5BNrfuXz0dBQFeO/hg58CtIRi45Xe3SpIwOpasPaG5/cG', 'admin', '9de095de509a53e8af13e9fe7b762f524b276a974ebeaeedb8fbe87f1c9e73e7', '2023-10-20 12:28:18'),
(50, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$bbLszoUOKuAs//BcPTw8Me7B2xGF8Tdjbn20OPqF8r4nr28FZ2mBO', 'admin', NULL, NULL),
(51, 'Daniel', 'daniel.lukayi@gmail.com', '$2y$10$FzFeI.YxZVR9/x6CjuTE3.NxyOvwqDTxTttUIuRJtcHFVSvBrFYxa', 'user', NULL, NULL),
(54, 'Phillip', 'spchoshi@gmail.com', '$2y$10$ZHy1uUMjpBy.N0rVnvwO6uzgBWBzPX4NFaeonRv.Y4Ga6TaUAL9f6', 'admin', NULL, NULL),
(72, 'Daniel', 'daniel.rukayi@gmail.com', '$2y$10$C4tx/57qBgCc1z8giFOJJec8BEhMYeov5wcdIdY0OMu6B5A7zsNXG', 'user', NULL, NULL),
(73, 'Daniel', 'daniel.rukayi@gmail.com', '$2y$10$rNbINmypTModU.ZLbnOKdO0T6UGYqlHsEAJajpHDkdKKyjhU295a2', 'admin', NULL, NULL),
(74, 'Ry', 'matinenryan0@gmail.com', '$2y$10$NrBJMx6Y.dyL8lbhPZf46OA9npHG/FspSLSo2YonMQCebXh0qORty', 'user', NULL, NULL),
(75, 'Ry', 'matinenryan0@gmail.com', '$2y$10$XiLNiUjmpk7I761JjMv55ujjN2RV7NpLYn8RMXmih/jB4kKGjokHS', 'admin', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verification`
--
ALTER TABLE `email_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `email_verification`
--
ALTER TABLE `email_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
