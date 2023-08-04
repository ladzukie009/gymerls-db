-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 08:00 AM
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
  `event_time` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(2, 'Joanna', 'admin_joanna', 'admin', 1, 'adminpass1'),
(3, 'Rowien Guevarra', 'rowien0612', 'user', 1, '205xlytri');

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
(1, 'super_admin', 'Logon - failed', '136.158.118.176', 'Windows', '2023-08-03 20:37:14'),
(2, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-08-03 21:47:20'),
(3, 'super_admin', 'Create - new user \"admin_joanna\"', '136.158.118.176', 'Windows', '2023-08-03 22:21:57'),
(4, 'super_admin', 'Update - password of user \"admin_joanna\"', '136.158.118.176', 'Windows', '2023-08-03 22:22:30'),
(5, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-08-03 22:31:21'),
(6, 'admin_joanna', 'Logon - success', '136.158.118.176', 'Windows', '2023-08-03 22:31:33'),
(7, 'admin_joanna', 'Logoff - success', '136.158.118.176', 'Windows', '2023-08-03 22:35:39'),
(8, 'super_admin', 'Logon - success', '136.158.118.176', 'Windows', '2023-08-03 23:12:07'),
(9, 'super_admin', 'Logoff - success', '136.158.118.176', 'Windows', '2023-08-03 23:12:21'),
(10, 'admin_joanna', 'Logon - success', '136.158.118.176', 'Windows', '2023-08-03 23:12:30'),
(11, 'admin_joanna', 'Create - new user \"rowien0612\"', '136.158.118.176', 'Windows', '2023-08-03 23:19:00');

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
(1, 'admin_joanna', '1998-05-04', 25, 'Female', '09663225423', 'Brgy. Estacion, Paniqui, Tarlac', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Rico Marquez', '09354347842', 'Brgy. Estacion, Paniqui, Tarlac', 'Premium', '2023-07-23', '2023-12-23', 'super_admin'),
(2, 'rowien0612', '2005-02-07', 18, 'Male', '09663227799', 'Moncada Tarlac', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Premium', '2023-07-11', '2023-09-11', 'admin_joanna');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meal_plan`
--
ALTER TABLE `meal_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
