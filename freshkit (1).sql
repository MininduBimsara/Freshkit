-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 05:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshkit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(3) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(2, 'admin.2', 'admin.2@gmail.com', '$2y$10$kmXTHnNj/VI8y2oMgvmFkOw1i5f7WYH9aGmMb9aaX1KEgiIzi2xqe', '2024-07-29 20:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(3) NOT NULL,
  `pro_id` int(3) NOT NULL,
  `pro_title` varchar(200) NOT NULL,
  `pro_image` varchar(200) NOT NULL,
  `pro_price` varchar(200) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_subtotal` varchar(200) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pro_id`, `pro_title`, `pro_image`, `pro_price`, `pro_qty`, `pro_subtotal`, `user_id`, `created_at`) VALUES
(9, 1, 'VEGETABLES', 'vegetables.png', '25', 1, '25', 1, '2024-10-15 16:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `icon`, `description`, `created_at`) VALUES
(1, 'VEGETABLES', 'vegetables.jpg', 'sb-bistro-carrot', 'Farm Fresh Vegetables to you', '2024-07-29 18:22:57'),
(2, 'MEATS', 'meats.jpg', 'sb-bistro-chicken', 'Newly Butchered Meat', '2024-07-29 18:22:57'),
(3, 'FRUITS', 'fruits.jpg', 'sb-bistro-apple', 'Freshly Picked Fruits', '2024-07-29 18:22:57'),
(4, 'FISH', 'fish.jpg', 'sb-bistro-fish', 'Fresh Atlantic Fish', '2024-07-29 18:22:57'),
(5, 'FROZEN PRODUCTS', 'frozen.jpg', 'sb-bistro-icecream-1', 'Gourmet Frozen Products', '2024-07-29 18:22:57'),
(6, 'PACKAGES', 'package.jpg', 'sb-bistro-menu', 'All-In-One Meal Kits', '2024-07-29 18:22:57'),
(7, 'BREAD', 'Bread1.png', 'sb-bistro-burger', 'Whole Grain Wheat Products', '2024-07-29 18:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `zip_code` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `order_notes` text NOT NULL,
  `status` varchar(200) NOT NULL,
  `price` int(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `lname`, `company_name`, `address`, `city`, `country`, `zip_code`, `email`, `phone_number`, `order_notes`, `status`, `price`, `user_id`, `created_at`) VALUES
(1, 'minindu', 'bimsara', 'ElderVoice ', 'asdfghjkl', 'Rambukkana', 'germany', 111, 'kasun@gmail.com', 1234567, 'phhh', 'In progress', 45, 1, '2024-07-29 19:32:43'),
(2, 'wqreyt', 'bimsara', 'abbb', 'aaaaaaaaaa', 'Rambukkana', 'germany', 111, 'kasun@gmail.com', 71234567, 'aaaaaaaaaaaa', 'In progress', 45, 1, '2024-08-11 05:18:39'),
(3, 'wqreyt', 'bimsara', 'abbb', 'qqqq', 'qqqqqq', 'qqqqqqq', 0, 'qqqq@wewd', 0, 'qqqqqq', '', 50, 1, '2024-08-20 15:50:51'),
(4, 'Minindu', 'Abeywardena', 'abbb', '3rd Lane, hospital road , rambukkana', 'rambukkana', 'Sri Lanka', 71100, 'minindubim@gmail.com', 715881536, 'q', '', 45, 1, '2024-10-15 16:58:56'),
(5, 'Minindu', 'Abeywardena', 'abbb', '3rd Lane, hospital road , rambukkana', 'rambukkana', 'Sri Lanka', 71100, 'minindubim@gmail.com', 715881536, 'q', '', 45, 1, '2024-10-16 16:55:22'),
(6, 'q', 'q', 'qq', 'qqq', 'qqq', 'Sri Lanka', 0, 'qqqqq@qqq', 0, 'qqqq', '', 45, 1, '2024-10-19 16:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(3) NOT NULL,
  `Title` text NOT NULL,
  `description` text NOT NULL,
  `price` varchar(10) NOT NULL,
  `quantity` int(3) NOT NULL DEFAULT 1,
  `image` varchar(200) NOT NULL,
  `exp_date` varchar(200) NOT NULL,
  `category_id` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Title`, `description`, `price`, `quantity`, `image`, `exp_date`, `category_id`, `status`, `created_at`) VALUES
(1, 'VEGETABLES', 'Farm Fresh Vegetables to you', '25', 1, 'vegetables.png', '2024-11-11', 1, 1, '0000-00-00 00:00:00'),
(2, 'MEATS', 'Newly Butchered Meat', '30', 1, 'meats.png', '2024-11-12', 2, 1, '0000-00-00 00:00:00'),
(3, 'FRUITS', 'Freshly Picked Fruits', '10', 1, 'fruits.png', '2021-11-13', 3, 1, '0000-00-00 00:00:00'),
(4, 'FISH', 'Fresh Atlantic Fish', '40', 1, 'fish.png', '2024-11-14', 4, 1, '0000-00-00 00:00:00'),
(5, 'FROZEN PRODUCTS\r\n', 'Gourmet Frozen Products', '50', 1, 'frozen.png', '2024-11-15', 5, 1, '0000-00-00 00:00:00'),
(6, 'PACKAGES', 'All-In-One Meal Kits', '70', 1, 'package.png', '2024-11-16', 6, 1, '0000-00-00 00:00:00'),
(7, 'CAKE', 'Best Cakes in The World', '25', 1, 'Cake.png', '2024-11-17', 7, 1, '0000-00-00 00:00:00'),
(8, 'CORN', 'Farm Fresh Corn', '5', 1, 'corn.png', '2024-11-18', 1, 1, '2024-07-29 19:22:35'),
(9, 'BREAD', 'Straight From The Oven', '10', 1, 'Bread1.png', '2021-11-19', 7, 1, '2024-07-29 19:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `mypassword`, `image`, `address`, `city`, `country`, `zip_code`, `phone_number`, `created_at`) VALUES
(1, 'Minindu Abeywardena', 'kasun@gmail.com', 'kasun@gmail.com', '$2y$10$RDna7MDrgtniMxgPpNqgzejiboN057Z0VDrEB0ydG1tMVjEbcoDb.', 'user.png', '3rd Lane, hospital road , rambukkana', 'rambukkana', 'Sri Lanka', ' 71100', '0715881536', '2024-07-29 19:06:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
