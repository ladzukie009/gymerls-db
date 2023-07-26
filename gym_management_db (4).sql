-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 01:48 PM
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
-- Database: `gym_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `added_by` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `description`, `status`, `added_by`, `event_date`, `event_time`, `date_added`) VALUES
(1, 'First Event', 'This is our first event', 1, 'super_admin', '2023-07-31', '12:00 PM', '2023-07-23 20:30:47'),
(2, 'Holiday', 'Holy Week', 1, 'super_admin', '2023-07-24', '12:00 AM', '2023-07-23 20:37:38'),
(3, 'Closed', 'We are sorry to tell that we are close from September to December this year due to Typhoon Egay', 1, 'super_admin', '2023-07-24', '12:00 AM', '2023-07-23 21:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `image_url` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` decimal(30,2) NOT NULL,
  `quantity` int(10) NOT NULL,
  `sub_total` decimal(30,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `username`, `product_name`, `image_url`, `description`, `price`, `quantity`, `sub_total`, `status`, `added_date`) VALUES
(17, 'user_a', 'Creatine 2.5 Grams', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1690076920/iqhtsb5kk3n4dxvlirfc.png', 'Creatine capsule', 100.90, 1, 100.90, 'cart', '2023-07-23'),
(18, 'user_a', 'Sample A', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1690077616/phe6ntvoytsxd9fnqgsy.jpg', 'sample a', 100.00, 1, 100.00, 'cart', '2023-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `meal_plan`
--

CREATE TABLE `meal_plan` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `diet_type` varchar(100) NOT NULL,
  `calories` varchar(50) NOT NULL,
  `sun_bf_meal` varchar(250) NOT NULL,
  `sun_lunch_meal` varchar(250) NOT NULL,
  `sun_dinner_meal` varchar(250) NOT NULL,
  `mon_bf_meal` varchar(250) NOT NULL,
  `mon_lunch_meal` varchar(250) NOT NULL,
  `mon_dinner_meal` varchar(250) NOT NULL,
  `tue_bf_meal` varchar(250) NOT NULL,
  `tue_lunch_meal` varchar(250) NOT NULL,
  `tue_dinner_meal` varchar(250) NOT NULL,
  `wed_bf_meal` varchar(250) NOT NULL,
  `wed_lunch_meal` varchar(250) NOT NULL,
  `wed_dinner_meal` varchar(250) NOT NULL,
  `thurs_bf_meal` varchar(250) NOT NULL,
  `thurs_lunch_meal` varchar(250) NOT NULL,
  `thurs_dinner_meal` varchar(250) NOT NULL,
  `fri_bf_meal` varchar(250) NOT NULL,
  `fri_lunch_meal` varchar(250) NOT NULL,
  `fri_dinner_meal` varchar(250) NOT NULL,
  `sat_bf_meal` varchar(250) NOT NULL,
  `sat_lunch_meal` varchar(250) NOT NULL,
  `sat_dinner_meal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_plan`
--

INSERT INTO `meal_plan` (`id`, `username`, `diet_type`, `calories`, `sun_bf_meal`, `sun_lunch_meal`, `sun_dinner_meal`, `mon_bf_meal`, `mon_lunch_meal`, `mon_dinner_meal`, `tue_bf_meal`, `tue_lunch_meal`, `tue_dinner_meal`, `wed_bf_meal`, `wed_lunch_meal`, `wed_dinner_meal`, `thurs_bf_meal`, `thurs_lunch_meal`, `thurs_dinner_meal`, `fri_bf_meal`, `fri_lunch_meal`, `fri_dinner_meal`, `sat_bf_meal`, `sat_lunch_meal`, `sat_dinner_meal`) VALUES
(1, 'user_a', 'Cutting', '1000g calories', '10g egg, 25g rice', '50g rice, 50g meat and soup', '40g rice, 50g fish and egg with soup', '10g egg, 25g rice', '50g rice, 50g meat and soup', '40g rice, 50g fish and egg with soup', '10g egg, 25g rice', '50g rice, 50g meat and soup', '40g rice, 50g fish and egg with soup', '10g egg, 25g rice', '50g rice, 50g meat and soup', '40g rice, 50g fish and egg with soup', '10g egg, 25g rice', '50g rice, 50g meat and soup', '40g rice, 50g fish and egg with soup', '10g egg, 25g rice', '50g rice, 50g meat and soup', '40g rice, 50g fish and egg with soup', '10g egg, 25g rice', '50g rice, 50g meat and soup', '40g rice, 50g fish and egg with soup'),
(2, 'pajero', 'Cutting', '1000', 'asd', 'asd', 'asda', 'sdasd', 'asd', 'asd', 'asd', 'sd', 'asd', 'asd', 'asda', 'dasdasd', 'asd', 'asdas', 'dasd', 'asd', 'asdas', 'dasd', 'asd', 'asdas', 'dasd'),
(3, 'user_b', 'Cutting', '1000', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj', 'brealsdaskdj');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `image_url` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` decimal(30,2) NOT NULL,
  `added_by` varchar(100) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `image_url`, `description`, `price`, `added_by`, `added_date`) VALUES
(1, 'Creatine 2.5 Grams', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1690076920/iqhtsb5kk3n4dxvlirfc.png', 'Creatine capsule', 100.90, 'super_admin', '2023-07-03'),
(2, 'L-Carnitine', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1690077519/xtcnyu4oge8c3v8awej7.jpg', 'L-carnitine 100 capsules', 999.99, 'super_admin', '2023-07-03'),
(3, 'Sample C', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1688731614/o8kyvjvmb4ur8i8mol1n.jpg', 'asdasdasd', 1000.25, 'admin_a', '2023-07-03'),
(4, 'Sample Product A', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1689662447/mvobs1wpdmeffswimsij.jpg', 'Collagen Pack', 999.00, 'super_admin', '2023-07-18'),
(5, 'Sample A', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1690077616/phe6ntvoytsxd9fnqgsy.jpg', 'sample a', 100.00, 'super_admin', '2023-07-23'),
(6, 'Kalamansi', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1690078487/pdvn0ml3ee9ylpxw0cfw.png', 'sample ', 199.00, 'super_admin', '2023-07-23'),
(7, 'Kendi', 'https://res.cloudinary.com/dy91xg32b/image/upload/v1690078588/qrlzy5adoavmeor5g4ef.jpg', 'sample kendi', 988.00, 'super_admin', '2023-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `reservation_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `time_slot` varchar(100) NOT NULL,
  `coach_name` varchar(250) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `username`, `notes`, `reservation_date`, `status`, `time_slot`, `coach_name`, `added_date`) VALUES
(1, 'user_a', 'sample description', '2023-07-08', 'Completed', '7-9AM', 'Brian Cayabyab', '2023-07-06'),
(2, 'user_a', 'sample description', '2023-07-14', 'Completed', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(3, 'user_a', 'sample description', '2023-07-14', 'Confirmed', '7-9AM', 'Client Balugbog', '2023-07-13'),
(4, 'user_a', 'sample description', '2023-07-13', 'Cancelled', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(5, 'user_a', 'sample description', '2023-07-13', 'Declined', '9-11AM', 'Brian Cayabyab', '2023-07-13'),
(6, 'user_a', 'sample description', '2023-07-13', 'Confirmed', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(7, 'user_b', 'This is a sample note', '2023-07-13', 'Confirmed', '9-11AM', 'Coach Maveric', '2023-07-13'),
(8, 'user_a', 'sample', '2023-07-13', 'Confirmed', '7-9AM', 'Coach Maveric', '2023-07-13'),
(9, 'user_a', 'sample description', '2023-07-13', 'Confirmed', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(10, 'user_a', 'sample description', '2023-07-13', 'Confirmed', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(11, 'user_a', 'sample description', '2023-07-13', 'Confirmed', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(12, 'user_a', 'sample description', '2023-07-13', 'Confirmed', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(13, 'user_a', 'sample description', '2023-07-13', 'Confirmed', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(14, 'user_a', 'sample description', '2023-07-13', 'Confirmed', '9-11AM', 'Brian Cayabyab', '2023-07-13'),
(15, 'user_a', 'sample description', '2023-07-13', 'Confirmed', '7-9AM', 'Brian Cayabyab', '2023-07-13'),
(16, 'user_a', 'sample desc', '2023-07-13', 'Confirmed', '7-9AM', 'Coach Maveric', '2023-07-13'),
(17, 'user_a', 'sample', '2023-07-13', 'Confirmed', '7-9AM', 'Coach Aseng', '2023-07-13'),
(18, 'admin_a', 'sample', '2023-07-14', 'Confirmed', '5-7PM', 'Coach Maveric', '2023-07-13'),
(19, 'user_a', 'nothing', '2023-07-14', 'Cancelled', '1-3PM', 'Coach Maveric', '2023-07-14'),
(20, 'user_a', 'asdasdasd asdasdasd', '2023-07-14', 'Pending', '7-9PM', 'Coach Aseng', '2023-07-14'),
(21, 'user_a', 'time slot issue', '2023-07-14', 'Declined', '7-9AM', 'Coach Aseng', '2023-07-14'),
(23, 'user_a', 'Walk in customer', '2023-07-15', 'Cancelled', '9-11AM', 'Coach Maveric', '2023-07-15'),
(24, 'user_a', 'Has a leg fracture (left)', '2023-07-15', 'Confirmed', '5-7PM', 'Coach Aseng', '2023-07-15'),
(25, 'user_a', 'Approved - No sched', '2023-07-15', 'Confirmed', '3-5PM', 'Coach Maveric', '2023-07-15'),
(26, 'user_a', 'kahit tagalog', '2023-07-15', 'Pending', '3-5PM', 'Coach Aseng', '2023-07-15'),
(27, 'user_b', 'sample', '2023-07-15', 'Confirmed', '1-3PM', 'sample coach', '2023-07-15'),
(28, 'user_b', 'n/a', '2023-07-18', 'Confirmed', '7-9PM', 'Coach Amats', '2023-07-18'),
(29, 'pajero', 'n/a', '2023-07-18', 'Confirmed', '5-7PM', 'Coach Maveric', '2023-07-18'),
(30, 'pajero', 'sampel note', '2023-07-18', 'Confirmed', '7-9PM', 'Coach Maveric', '2023-07-18'),
(31, 'user_b', 'asasd', '2023-07-18', 'Pending', '7-9PM', 'Coach Maveric', '2023-07-18'),
(32, 'user_b', 'sample', '2023-07-19', 'Pending', '3-5PM', 'Coach Aseng', '2023-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `value`, `isActive`) VALUES
(1, 'super_admin', 1),
(2, 'admin', 1),
(3, 'staff', 0),
(4, 'user', 1),
(5, 'user_access', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `method` varchar(150) NOT NULL,
  `address` varchar(300) NOT NULL,
  `items` varchar(500) NOT NULL,
  `total` decimal(30,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `receipt_url` varchar(300) NOT NULL,
  `transaction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `username`, `fullname`, `contact`, `method`, `address`, `items`, `total`, `status`, `receipt_url`, `transaction_date`) VALUES
(1, 'user_a', 'User A', '09123875623', 'Pickup', '3rd Floor , Dona Pacita Building beside PureGold Paniqui, M. H Del Pilar Street, Paniqui, Tarlac, Paniqui, Philippines', 'Creatine 2.5 Grams,L-Carnitine', 3302.67, 'Pending', 'image.jpg', '2023-07-03'),
(2, 'user_a', 'Use A', '09123875644', 'Deliver', 'Tarlac City', 'Creatine 2.5 Grams,L-Carnitine', 1100.89, 'Completed', 'https://res.cloudinary.com/dpruj7bhk/image/upload/v1689672586/v4idqkvdyo0ydhdoifby.png', '2023-07-03'),
(3, 'user_a', 'User A', '09123875621', 'Pickup', '3rd Floor , Dona Pacita Building beside PureGold Paniqui, M. H Del Pilar Street, Paniqui, Tarlac, Paniqui, Philippines', 'Creatine 2.5 Grams', 100.90, 'Completed', 'https://res.cloudinary.com/dpruj7bhk/image/upload/v1689663496/clcsc5yeda7zhxy3t95m.jpg', '2023-07-03'),
(4, 'user_a', 'Jester Bagumabyan', '09123652', 'Pickup', '3rd Floor , Dona Pacita Building beside PureGold Paniqui, M. H Del Pilar Street, Paniqui, Tarlac, Paniqui, Philippines', 'Sample C,Sample Product A', 1999.25, 'Pending', 'image.jpg', '2023-07-18'),
(5, 'user_b', 'User B', '091236754221', 'Deliver', 'Tarlac City', 'L-Carnitine', 999.99, 'Pending', 'image.jpg', '2023-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `role`, `isActive`, `password`) VALUES
(1, 'JFK Panim', 'super_admin', 'super_admin', 1, 'password123'),
(2, 'Admin A', 'admin_a', 'admin', 1, 'password_a'),
(3, 'User A', 'user_a', 'user', 1, 'pass_a'),
(4, 'User B', 'user_b', 'user', 1, 'pass_b'),
(5, 'Pajero', 'pajero', 'user', 1, 'pajero11'),
(7, 'Tester', 'tester', 'user', 1, 'test123');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `event_info` varchar(250) NOT NULL,
  `ip_address` varchar(150) NOT NULL,
  `platform` varchar(100) NOT NULL,
  `event_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `username`, `event_info`, `ip_address`, `platform`, `event_time`) VALUES
(1, 'user_a', 'Add - Sample Product A in cart', '136.158.118.176', 'Windows', '2023-07-18 20:42:37'),
(2, 'user_a', 'Add - Sample C in cart', '136.158.118.176', 'Windows', '2023-07-18 20:43:31'),
(3, 'user_a', 'Delete - Sample C in cart', '136.158.118.176', 'Windows', '2023-07-18 20:51:20'),
(4, 'user_a', 'Delete - Sample Product A in cart', '136.158.118.176', 'Windows', '2023-07-18 20:51:28'),
(5, 'user_a', 'Confirm - checkout', '136.158.118.176', 'Windows', '2023-07-18 20:59:54'),
(6, 'user_a', 'Update - password', '136.158.118.176', 'Windows', '2023-07-18 21:01:51'),
(7, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 21:02:09'),
(8, 'user_a', 'Update - password', '136.158.118.176', 'Windows', '2023-07-18 21:02:55'),
(9, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 21:03:06'),
(10, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 21:07:20'),
(11, 'user_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-18 21:09:47'),
(12, 'user_b', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 21:10:01'),
(13, 'user_b', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-18 21:13:00'),
(14, 'user_b', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 21:13:20'),
(15, 'user_b', 'Create - new reservation', '136.158.118.176', 'Windows', '2023-07-18 21:25:08'),
(16, 'user_b', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-18 21:29:34'),
(17, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 21:30:50'),
(18, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-18 22:10:56'),
(19, 'user_b', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 22:11:09'),
(20, 'user_b', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-18 22:14:07'),
(21, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 22:14:22'),
(22, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-18 22:21:29'),
(23, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 22:21:35'),
(24, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-18 22:25:40'),
(25, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-18 22:25:45'),
(26, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-19 09:45:52'),
(27, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-19 09:45:56'),
(28, 'user_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-19 09:58:10'),
(29, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-19 09:58:15'),
(30, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-19 10:01:39'),
(31, 'user_a', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-19 10:01:44'),
(32, 'super_admin', 'Logon - success', '136.158.118.176', 'window.navigator.userAgentData.platform', '2023-07-19 10:03:28'),
(33, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-19 10:06:07'),
(34, 'user_b', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-19 10:06:16'),
(35, 'user_b', 'Add - L-Carnitine in cart', '136.158.118.176', 'Windows', '2023-07-19 10:06:47'),
(36, 'user_b', 'Create - new reservation', '136.158.118.176', 'Windows', '2023-07-19 10:08:42'),
(37, 'user_b', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-19 10:09:27'),
(38, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-19 10:09:33'),
(39, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-19 10:58:58'),
(40, 'admin_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-19 10:59:02'),
(41, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-19 10:59:57'),
(42, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-22 21:35:22'),
(43, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-22 21:35:25'),
(44, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 08:42:49'),
(45, 'super_admin', 'Update - product \"Creatine 2.5 Grams\"', '136.158.118.176', 'Windows', '2023-07-23 09:49:15'),
(46, 'super_admin', 'Update - product \"L-Carnitine\"', '136.158.118.176', 'Windows', '2023-07-23 09:58:41'),
(47, 'super_admin', 'Create - new product \"Kalamansi\"', '136.158.118.176', 'Windows', '2023-07-23 10:14:48'),
(48, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 10:34:52'),
(49, 'admin_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 10:34:58'),
(50, 'admin_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 10:35:08'),
(51, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 10:35:14'),
(52, 'user_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 10:35:29'),
(53, 'user_b', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 10:35:37'),
(54, 'user_b', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 11:18:38'),
(55, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 11:18:39'),
(56, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 11:19:40'),
(57, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 11:19:45'),
(58, 'user_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 11:22:07'),
(59, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 11:22:56'),
(60, 'user_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 14:08:45'),
(61, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 14:08:49'),
(62, 'super_admin', 'Update - password of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:17:20'),
(63, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 14:17:25'),
(64, 'tester', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 14:17:37'),
(65, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 14:18:16'),
(66, 'super_admin', 'Update - user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:18:35'),
(67, 'super_admin', 'Update - user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:23:32'),
(68, 'super_admin', 'Change - status of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:23:35'),
(69, 'super_admin', 'Change - status of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:23:37'),
(70, 'super_admin', 'Change - status of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:23:40'),
(71, 'super_admin', 'Change - status of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:23:44'),
(72, 'super_admin', 'Change - status of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:35:39'),
(73, 'super_admin', 'Change - status of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:37:25'),
(74, 'tester', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 14:37:46'),
(75, 'tester', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 14:37:54'),
(76, 'super_admin', 'Update - user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:38:17'),
(77, 'tester', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 14:38:26'),
(78, 'super_admin', 'Change - status of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 14:38:28'),
(79, 'tester', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 14:38:33'),
(80, 'tester', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 16:25:42'),
(81, 'admin_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 16:25:50'),
(82, 'admin_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 16:25:55'),
(83, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 16:26:01'),
(84, 'user_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 16:26:25'),
(85, 'tester', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 16:26:29'),
(86, 'tester', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 16:29:17'),
(87, 'admin_a', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 16:29:23'),
(88, 'admin_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 16:29:27'),
(89, 'tester', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 16:30:21'),
(90, 'tester', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 16:54:13'),
(91, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 17:19:32'),
(92, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 17:19:38'),
(93, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:21:48'),
(94, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 18:25:39'),
(95, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:27:20'),
(96, 'user_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 18:27:55'),
(97, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:28:01'),
(98, 'super_admin', 'Update - password', '136.158.118.176', 'Windows', '2023-07-23 18:33:10'),
(99, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:33:15'),
(100, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 18:35:44'),
(101, 'admin_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:36:45'),
(102, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:37:18'),
(103, 'super_admin', 'Update - password', '136.158.118.176', 'Windows', '2023-07-23 18:37:43'),
(104, 'admin_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:37:52'),
(105, 'admin_a', 'Update - password', '136.158.118.176', 'Windows', '2023-07-23 18:38:28'),
(106, 'admin_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:38:35'),
(107, 'admin_a', 'Update - password', '136.158.118.176', 'Windows', '2023-07-23 18:38:50'),
(108, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 18:38:59'),
(109, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 19:43:39'),
(110, 'tester', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 19:43:56'),
(111, 'super_admin', 'Update - user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 19:44:51'),
(112, 'tester', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 19:45:13'),
(113, 'test', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 19:45:27'),
(114, 'test', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 19:45:30'),
(115, 'super_admin', 'Update - user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 19:45:46'),
(116, 'super_admin', 'Change - status of user \"tester\"', '136.158.118.176', 'Windows', '2023-07-23 19:45:55'),
(117, 'test', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 19:46:01'),
(118, 'test', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 19:46:02'),
(119, 'tester', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 19:46:08'),
(120, 'tester', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 19:46:16'),
(121, 'admin_a', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 19:50:26'),
(122, 'admin_a', 'Logon - failed', '136.158.118.176', 'Windows', '2023-07-23 19:50:30'),
(123, 'user_a', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 19:50:38'),
(124, 'user_a', 'Add - Creatine 2.5 Grams in cart', '136.158.118.176', 'Windows', '2023-07-23 19:50:53'),
(125, 'user_a', 'Add - Sample A in cart', '136.158.118.176', 'Windows', '2023-07-23 19:50:54'),
(126, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 20:31:11'),
(127, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 20:31:17'),
(128, 'user_a', 'Logoff - success', '136.158.118.176', 'Windows', '2023-07-23 21:25:33'),
(129, 'user_b', 'Logon - success', '136.158.118.176', 'Windows', '2023-07-23 21:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `medical_conditions` varchar(200) NOT NULL,
  `allergies` varchar(200) NOT NULL,
  `current_medication` varchar(200) NOT NULL,
  `family_doctor` varchar(100) NOT NULL,
  `doctor_contact` varchar(50) NOT NULL,
  `parent_name` varchar(100) NOT NULL,
  `parent_contact` varchar(50) NOT NULL,
  `parent_address` varchar(200) NOT NULL,
  `membership_type` varchar(100) NOT NULL,
  `mem_start_date` date NOT NULL,
  `mem_end_date` date NOT NULL,
  `added_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `username`, `birthdate`, `age`, `gender`, `contact`, `address`, `medical_conditions`, `allergies`, `current_medication`, `family_doctor`, `doctor_contact`, `parent_name`, `parent_contact`, `parent_address`, `membership_type`, `mem_start_date`, `mem_end_date`, `added_by`) VALUES
(1, 'admin_a', '2000-01-01', 24, 'Male', '09123456789', 'Nueva Ecija', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Admin parent A', '096235625322', 'Nueva Ecija', 'Premium', '2023-07-03', '2023-08-31', 'super_admin'),
(2, 'user_a', '1993-01-22', 30, 'Male', '091238756231', 'Tarlac City', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'User parent A', '091238762333', 'Tarlac City', 'Monthly', '2023-07-03', '2023-08-03', 'admin_a'),
(3, 'user_b', '2000-01-01', 24, 'Female', '091236754221', 'Tarlac City', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Premium', '2023-07-07', '2023-08-31', 'super_admin'),
(4, 'pajero', '1981-07-18', 42, 'Male', '1230891723918274', 'Tarlac', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Premium', '2023-07-18', '2023-11-30', 'super_admin'),
(6, 'tester', '1990-01-03', 34, 'Male', '091237466422', '#114 Ascona St. Village East Cainta, Rizal', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'Monthly', '2023-06-23', '2023-08-31', 'super_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_plan`
--
ALTER TABLE `meal_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `meal_plan`
--
ALTER TABLE `meal_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
