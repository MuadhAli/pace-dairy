-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2023 at 03:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pace-dairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`category_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Cheese', 'tastiest ,delicate and no artificial taste maker added.', 1, 0, '2022-02-14 09:16:23', '2023-01-14 21:12:37'),
(2, 'Butter', 'Delicious and nutritional', 1, 0, '2022-02-14 09:19:04', '2023-01-14 21:14:51'),
(3, 'Yougert', 'Milky and rich in nutrition', 1, 0, '2022-02-14 09:19:11', '2023-01-14 21:15:46'),
(4, 'Ghee', 'pure and no artificial colouring .', 1, 0, '2022-02-14 09:19:18', '2023-01-14 21:18:43'),
(5, 'Milk', 'pure and Healthy', 1, 0, '2022-02-14 09:19:24', '2023-01-14 21:19:48'),
(6, 'Peda', 'Delicious and no Added flavours or artificial colouring', 1, 0, '2022-02-14 09:19:30', '2023-01-14 21:21:11'),
(7, 'Rasmalai', 'Delicious', 1, 0, '2022-02-14 09:19:37', '2023-01-14 21:22:50'),
(8, 'Kheer', 'A very delicious and enriched food item made of milk.', 1, 0, '2022-02-14 09:19:43', '2023-01-14 21:24:31'),
(9, 'Paneer', 'Paneer is most liked dish of almost all indian peoples.', 1, 0, '2022-02-14 09:19:49', '2023-01-14 21:25:50'),
(10, 'Barfi', 'Barfi is famous dessert of india .It is made up of maava which is milk product and milk itself.', 1, 0, '2022-02-14 09:19:55', '2023-01-14 21:27:45'),
(11, 'Sample 111', 'This is a sample Category 111', 0, 1, '2022-02-14 09:20:11', '2022-02-14 09:23:14'),
(12, 'Fresh Cream', 'Fresh Cream has been processed to give smooth, consistency and makes mouth watering preparations\r\nIt is sterilized at high temperature and packed aseptically to give safe, rich cream which stays fresh until opened\r\nMade of fresh & pure milk cream\r\nNo preservative added\r\nCountry of Origin: India', 1, 0, '2023-01-14 22:55:49', NULL),
(13, 'Chocolate', 'It is all about regaling in the chocolate\'s richness and creaminess. The classic taste of  chocolates offers you the reason to celebrate every small and big occasion of happiness. In short, Indulge in a rich, smooth and creamy celebration.Each unit is of 50 grams, 55 grams, 58 grams, 60 grams, 72 grams, 100 grams, 120 grams, 130 grams, 137 grams, 143 grams etc.', 1, 0, '2023-01-14 23:22:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `product_id` int(30) NOT NULL,
  `product_code` text NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `alert_restock` double NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`product_id`, `product_code`, `category_id`, `name`, `description`, `price`, `alert_restock`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '001', 1, 'Amul cheese', 'Delicious Amul Pasteurised Processed Cheese is made from Cheese, Sodium Citrate, Common Salt, Citric Acid, permitted natural colour – Annatto. Emulsifier and Class II preservatives. It is made from graded cow/buffalo milk using microbial rennet. weight :  200 gms.', 128, 10, 1, 0, '2022-02-14 09:42:00', '2023-01-14 23:30:49'),
(2, '002', 4, 'Nandini', 'Highly Rich in Nutrition', 50, 10, 1, 0, '2022-02-14 09:42:00', '2023-01-14 23:03:05'),
(3, '003', 2, 'Amul Butter', 'No Artificial Flavouring and has long shelf life', 45, 10, 1, 0, '2022-02-14 09:42:00', '2023-01-14 23:01:43'),
(4, '101', 5, 'Milma milk', 'pure and Fresh', 20, 10, 1, 0, '2022-02-14 09:42:00', '2023-01-14 23:02:50'),
(5, '105', 3, 'Dairyday yougert', 'Highly rich in nutrition and no added flavours.', 25, 10, 1, 0, '2022-02-14 09:46:59', '2023-01-14 23:02:16'),
(6, '5489879', 6, 'Product 105', 'Fusce dui augue, porttitor at est a, commodo lacinia mauris. Etiam quis nulla maximus, fermentum tortor quis, suscipit neque. Curabitur leo ligula, tristique eu placerat sit amet, euismod non ligula.', 50, 0, 1, 1, '2022-02-14 09:47:22', '2022-02-14 09:48:32'),
(7, '006', 10, 'Haldirams barfi', 'Delicious and rich in protien', 52, 10, 1, 0, '2023-01-14 21:40:56', '2023-01-14 23:02:35'),
(8, '007', 9, 'RoastPaneer', 'It is highly rich in nutrition . Each of 100gms and low fat and rich in fibre', 75, 10, 1, 0, '2023-01-14 22:51:41', '2023-01-14 23:03:19'),
(9, '106', 12, 'Milkymist', 'Fresh Cream has been processed to give smooth, consistency and makes mouth watering preparations\r\nFresh cream sterilized at high temperature and packed aseptically to give safe, rich cream which stays fresh until opened\r\nMade of fresh & pure milk cream\r\nNo preservative added\r\nCountry of Origin: India', 110, 10, 1, 0, '2023-01-14 22:58:39', NULL),
(10, '201', 7, 'Nanak Rasmalai', 'Rasmalai or Rasgulla are some of the most delicious sweet dumplings, soft chenna rasmalai pattie for indian festivals\r\nNo Cholesterol, No Trans Fat, No Flavoring Used, No Artificial Colors or Preservatives Added\r\nIngredients - Sugar syrup (chashani), milk casein (chenna), rose water.\r\n100% Vegetarian Product of India.Each unit is in Kilogram.', 300, 10, 1, 0, '2023-01-14 23:15:56', '2023-01-15 00:22:15'),
(11, '203', 13, 'White Chocolate', 'It is all about regaling in the chocolate\'s richness and creaminess. The classic taste of chocolates offers you the reason to celebrate every small and big occasion of happiness. 50 grams, 55 grams, 58 grams, 60 grams, 72 grams, 100 grams, 120 grams.', 150, 300, 1, 0, '2023-01-14 23:24:10', NULL),
(12, '205', 5, 'AmulMastiButter Milk', 'Amul Masti Spice Buttermilk is a natural milk-based drink which will refresh you immediately on a hot summer afternoon. The slightly sour liquid spiced up with various Indian spices is a healthy alternative to sodas and cold drinks during summers.', 14, 10, 1, 0, '2023-01-14 23:26:59', '2023-01-15 00:21:49'),
(13, '208', 4, 'Nestle Everyday Shahi Ghee', 'Rich in proteins and whey, Ghee is a pure substance that is derived from a simple process that involves boiling the butter and draining the buttermilk at the end of the boiling process.', 445, 10, 1, 0, '2023-01-14 23:36:21', '2023-01-15 00:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `stock_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `expiry_date` datetime NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`stock_id`, `product_id`, `quantity`, `expiry_date`, `date_added`) VALUES
(1, 1, 20, '2023-02-05 00:00:00', '2022-02-14 02:04:29'),
(2, 2, 200, '2023-02-24 00:00:00', '2022-02-14 02:05:18'),
(3, 3, 350, '2022-02-18 00:00:00', '2022-02-14 02:05:33'),
(4, 4, 500, '2023-02-03 00:00:00', '2022-02-14 02:05:45'),
(5, 5, 100, '2023-03-29 00:00:00', '2022-02-14 02:06:48'),
(6, 7, 500, '2023-03-18 00:00:00', '2023-01-14 16:16:20'),
(7, 3, 100, '2023-03-18 00:00:00', '2023-01-14 16:20:48'),
(8, 1, 500, '2023-03-11 00:00:00', '2023-01-14 16:21:08'),
(9, 2, 1000, '2023-02-05 00:00:00', '2023-01-14 16:21:24'),
(10, 4, 500, '2023-01-15 00:00:00', '2023-01-14 16:21:38'),
(11, 3, 15, '2023-02-12 00:00:00', '2023-01-14 18:32:15'),
(12, 3, 20, '2023-02-05 00:00:00', '2023-01-14 18:32:38'),
(13, 3, 50, '2023-01-28 00:00:00', '2023-01-14 18:33:06'),
(14, 12, 100, '2023-02-04 00:00:00', '2023-01-14 18:33:37'),
(15, 9, 35, '2023-02-05 00:00:00', '2023-01-14 18:34:06'),
(16, 11, 50, '2023-03-16 00:00:00', '2023-01-14 18:34:45'),
(17, 3, 10, '2023-02-18 00:00:00', '2023-01-14 18:42:28'),
(18, 3, 10, '2023-03-18 00:00:00', '2023-01-14 18:42:55'),
(19, 8, 20, '2023-02-05 00:00:00', '2023-01-14 18:46:23'),
(20, 13, 200, '2023-03-04 00:00:00', '2023-01-14 18:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `transaction_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_items`
--

INSERT INTO `transaction_items` (`transaction_id`, `product_id`, `quantity`, `price`, `date_added`) VALUES
(1, 1, 4, 10, '2022-02-14 02:12:39'),
(1, 2, 2, 15, '2022-02-14 02:12:39'),
(1, 4, 2, 20, '2022-02-14 02:12:39'),
(1, 3, 1, 45, '2022-02-14 02:12:39'),
(1, 5, 1, 50, '2022-02-14 02:12:39'),
(2, 5, 20, 50, '2022-02-14 02:14:41'),
(4, 3, 1, 45, '2022-02-14 02:38:38'),
(4, 5, 1, 50, '2022-02-14 02:38:38'),
(4, 2, 2, 15, '2022-02-14 02:38:38'),
(5, 2, 1, 15, '2022-02-14 02:57:53'),
(5, 5, 1, 50, '2022-02-14 02:57:53'),
(5, 1, 2, 10, '2022-02-14 02:57:53'),
(6, 4, 10, 20, '2023-01-14 16:14:26'),
(7, 1, 15, 40, '2023-01-14 16:28:49'),
(8, 4, 5, 20, '2023-01-14 16:30:08'),
(8, 2, 3, 50, '2023-01-14 16:30:08'),
(8, 3, 10, 45, '2023-01-14 16:30:08'),
(8, 7, 18, 52, '2023-01-14 16:30:08'),
(9, 3, 1, 45, '2023-01-14 16:39:37'),
(10, 5, 1, 25, '2023-01-14 16:47:12'),
(11, 5, 10, 25, '2023-01-14 16:48:01'),
(12, 7, 10, 52, '2023-01-14 16:56:22'),
(13, 4, 200, 20, '2023-01-14 17:00:36'),
(14, 3, 200, 45, '2023-01-14 17:02:22'),
(15, 1, 10, 128, '2023-01-14 18:31:35'),
(15, 7, 15, 52, '2023-01-14 18:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_list`
--

CREATE TABLE `transaction_list` (
  `transaction_id` int(30) NOT NULL,
  `receipt_no` text NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `tendered_amount` double NOT NULL DEFAULT 0,
  `change` double NOT NULL DEFAULT 0,
  `user_id` int(30) DEFAULT 1,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_list`
--

INSERT INTO `transaction_list` (`transaction_id`, `receipt_no`, `total`, `tendered_amount`, `change`, `user_id`, `date_added`) VALUES
(1, '1644804759', 205, 300, 95, 1, '2022-02-14 02:12:39'),
(2, '1644804881', 1000, 1000, 0, 1, '2022-02-14 02:14:41'),
(4, '1644806318', 125, 150, 25, NULL, '2022-02-14 02:38:38'),
(5, '1644807473', 85, 100, 15, 2, '2022-02-14 02:57:53'),
(6, '1673712866', 200, 500, 300, 1, '2023-01-14 16:14:26'),
(7, '1673713729', 600, 1000, 400, 1, '2023-01-14 16:28:49'),
(8, '1673713808', 1636, 2000, 364, 1, '2023-01-14 16:30:08'),
(9, '1673714377', 45, 45, 0, 1, '2023-01-14 16:39:37'),
(10, '1673714832', 25, 25, 0, 1, '2023-01-14 16:47:12'),
(11, '1673714881', 250, 300, 50, 1, '2023-01-14 16:48:01'),
(12, '1673715382', 520, 1000, 480, 1, '2023-01-14 16:56:22'),
(13, '1673715636', 4000, 10000, 6000, 6, '2023-01-14 17:00:36'),
(14, '1673715742', 9000, 10000, 1000, 6, '2023-01-14 17:02:22'),
(15, '1673721095', 2060, 3000, 940, 1, '2023-01-14 18:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_list`
--

CREATE TABLE `user_list` (
  `user_id` int(30) NOT NULL,
  `fullname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `type` int(30) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_list`
--

INSERT INTO `user_list` (`user_id`, `fullname`, `username`, `password`, `type`, `status`, `date_created`) VALUES
(1, 'Afrah abdul aziz', 'afrah', '0192023a7bbd73250516f069df18b500', 1, 1, '2022-02-14 00:44:30'),
(2, 'Bhagyashree k', 'Bhagya', 'cd74fae0a3adf459f73bbf187607ccea', 0, 1, '2022-02-14 02:29:23'),
(3, 'Sara Mehek', 'Sara', '0c4635c5af0f173c26b0d85b6c9b398b', 1, 1, '2022-02-14 02:29:58'),
(5, 'Afrah abdul aziz', 'Afrah', '0cfd852de1b5dac64be9621b40a15178', 1, 1, '2023-01-14 16:19:18'),
(6, 'Sana Miraal', 'sana', 'b8873a156dc35dc99b69d0f93ebe22fc', 0, 1, '2023-01-14 16:58:24'),
(7, 'Jeff bezos', 'Amazon', 'b3b3a6ac74ecbd56bcdbefa4799fb9df', 1, 1, '2023-01-14 18:09:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_list`
--
ALTER TABLE `user_list`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `category_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `product_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `stock_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaction_list`
--
ALTER TABLE `transaction_list`
  MODIFY `transaction_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_list`
--
ALTER TABLE `user_list`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `transaction_items_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_items_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction_list` (`transaction_id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_list`
--
ALTER TABLE `transaction_list`
  ADD CONSTRAINT `transaction_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_list` (`user_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
