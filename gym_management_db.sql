-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 12:10 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
-- Table structure for table `meal_plan`
--

CREATE TABLE `meal_plan` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal_plan`
--

INSERT INTO `meal_plan` (`id`, `username`, `sun_bf_meal`, `sun_lunch_meal`, `sun_dinner_meal`, `mon_bf_meal`, `mon_lunch_meal`, `mon_dinner_meal`, `tue_bf_meal`, `tue_lunch_meal`, `tue_dinner_meal`, `wed_bf_meal`, `wed_lunch_meal`, `wed_dinner_meal`, `thurs_bf_meal`, `thurs_lunch_meal`, `thurs_dinner_meal`, `fri_bf_meal`, `fri_lunch_meal`, `fri_dinner_meal`, `sat_bf_meal`, `sat_lunch_meal`, `sat_dinner_meal`) VALUES
(1, 'user', 'a', 'b', 'asd', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u'),
(2, 'user_y', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asdasd', 'asdasd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asda'),
(8, 'user_x', '123123', 'asd123123', 'asdas123123', '123', '123123', '123123', '11', '111', '11', '2323', '232', '323', '2444', '123', '123', '445', '55', '3123', '512', '12312', '3'),
(9, 'user_z', 'dasd', 'asdasd', 'asd', 'asda', 'sdasd', 'asdasd', 'asdasd', 'asda', 'asdas', 'dasd', 'asd', 'asdasd', 'asdasd', 'sdasd', 'a', 'asd', 'asd', 'gghhh', 'asd', 'asd', 'asdddaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` decimal(30,0) NOT NULL,
  `added_by` varchar(100) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `price`, `added_by`, `added_date`) VALUES
(1, 'product asd', 'product a sample', '1000', 'super_admin', '2023-06-04'),
(2, 'product b', 'product b sample', '100', 'super_admin', '2023-06-05'),
(3, 'asd', 'asdasd kjahsdkajsh askdjh', '199', 'super_admin', '2023-06-05'),
(4, 'al,jklj', 'lkjlkj', '891723', 'super_admin', '2023-06-05'),
(5, 'Sample C', 'ASDASD ASD ASD', '90', 'super_admin', '2023-06-06'),
(6, 'Kendi', 'Masarap', '900', 'admin_b', '2023-06-06'),
(7, 'Kalamansi', 'Maasim to', '9', 'sampakto', '2023-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `role`, `password`) VALUES
(1, 'Jerome Espiritu', 'super_admin', 'super_admin', 'password123'),
(2, 'Camille G Espiritu', 'admin', 'admin', 'ezlah8zk'),
(3, 'Jester C Galinos', 'user', 'user', 'password123'),
(4, 'Admin A', 'admin_a', 'admin', 'sample123'),
(5, 'Admin B', 'admin_b', 'admin', '2yg9j7w1'),
(6, 'User A', 'user_a', 'user', 'uvkdy3rk'),
(7, 'User B', 'user_b', 'user', 'yfalo2uh'),
(8, 'User X', 'user_x', 'user', '4k4bwtlf'),
(9, 'User Y', 'user_y', 'user', 'sample'),
(10, 'User Z', 'user_z', 'user', 'c9oz6ewb'),
(11, 'User C', 'user_c', 'user', 'd7acokyxg'),
(12, 'Admin C', 'admin_c', 'admin', '7q1o9ilf'),
(13, 'Shawarma Rice', 'admin_3', 'admin', '1x4syyia'),
(14, 'akljsdklajsd', 'asdkasdasd', 'user', 'hfd0raap'),
(15, 'asdasd', 'asdasdasd', 'user', 'vmvv8q6r'),
(17, 'Pajero', 'pajero', 'admin', 'v29r55ma'),
(18, 'User D', 'user_d', 'user', 'mctocwqwk'),
(19, 'Pajero', 'pajeros', 'admin', 'ofe0kmmef'),
(20, 'Jerome Espiritu', 'user_e', 'user', 'usereee'),
(21, 'sampakto', 'sampakto', 'admin', 'sampakto'),
(22, 'Katya Santos', 'katya123', 'user', '4vyih5st');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `username`, `birthdate`, `age`, `gender`, `contact`, `address`, `medical_conditions`, `allergies`, `current_medication`, `family_doctor`, `doctor_contact`, `parent_name`, `parent_contact`, `parent_address`, `membership_type`, `mem_start_date`, `mem_end_date`, `added_by`) VALUES
(1, 'admin', '1994-12-07', 28, 'Female', '09171151023', 'Tarlac City', 'na', 'na', 'na', 'na', 'na', 'Marites Galinos', '0912387631', 'Tarlac City', 'Premium', '2023-05-16', '2023-06-16', 'super_admin'),
(2, 'user', '1998-01-01', 21, 'Male', '0912387644', 'Taytay, Rizal', 'na', 'na', 'na', 'na', 'na', 'Gerry Galino', '09123456789', 'Aguso Tarlac', 'Student', '2023-05-16', '2024-05-16', 'admin'),
(3, 'admin_a', '1900-01-01', 90, 'Male', '198237128973', 'kajshdkjahskdh', 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', 'Premium', '2023-05-05', '2023-05-06', 'super_admin'),
(4, 'admin_b', '1990-01-01', 90, 'Male', '99018273981723987', 'aklsdhj kljasldkj', 'lkj', 'lkj', 'lkj', 'lkj', 'lkj', 'lkj', 'lkj', 'lk', 'Monthly', '2023-05-16', '2023-05-17', 'super_admin'),
(5, 'user_a', '1990-01-01', 13, 'Male', '097812368764', 'kjhkjh kjh ', 'jh', 'jh', 'jh', 'jh', 'jh', 'jer oajklshd', 'klh', 'lkjh ', 'Monthly', '2023-05-04', '2023-05-29', 'admin_a'),
(6, 'user_b', '1990-01-01', 30, 'Male', '09123871623', 'akl hjklj lkj ', 'lkj', 'lkj', 'lkj', 'lk', 'jlkj', 'lkj', 'l', 'kj', 'Student', '2023-05-25', '2023-05-27', 'admin_a'),
(7, 'user_x', '1990-10-01', 63, 'Male', '0981238761238', 'klawsdhjlaksjd kljasldk j', 'lkjlk', 'lkj', 'lkj', 'lkj', 'lkj', 'lkjklj', 'lkjlkj', 'lkjasdlkj', 'Monthly', '2023-05-16', '2023-05-30', 'admin_b'),
(8, 'user_y', '1900-09-19', 23, 'Male', '0912387561234', 'lkajhsd lkahjsd ', 'kjh', 'kjh', 'kjh', 'kj', 'hkjh', 'kjhkjh', 'kjh', 'kjh', 'Student', '2023-05-06', '2023-05-31', 'admin_b'),
(9, 'user_z', '1990-01-01', 20, 'Male', '12301927396123', 'alkjsdl kjqsldjka', 'lkj', 'lkj', 'lkj', 'lkj', 'lkjlkj', 'lkj', 'lkj', 'lk', 'Monthly', '2023-05-16', '2023-06-16', 'admin_b'),
(10, 'user_c', '1990-09-19', 23, 'Male', '0912837612', 'laakjsdlkajsdkl jalksdj', 'jalskdj', 'lkj', 'l', 'hk', 'kh', 'jklh', 'jklh', 'kjghkljh', 'Student', '2023-05-16', '2023-05-31', 'admin_a'),
(11, 'admin_c', '1990-01-01', 20, 'Female', '091823986875', '87162836187263', 'hjbj', 'gj', 'hg', 'jhg', 'jhgjhg', 'lakjsdlkj', 'lkjlkj', 'lk', 'Monthly', '2023-05-23', '2023-06-23', 'super_admin'),
(12, 'admin_3', '1990-01-16', 30, 'Female', '09950019303', 'Tarlac City', 'na', 'na', 'na', 'na', 'na', 'Siomai Rice', '09818763551', 'Tarlac City', 'Premium', '2023-05-18', '2023-05-31', 'super_admin'),
(13, 'asdkasdasd', '1991-02-03', 20, 'Female', 'dasd', 'asdasdas', 'dasd', 'asdas', 'dasd', 'asdas', 'dasd', 'asd', 'asda', 'sdasd', 'Monthly', '2023-05-18', '2023-05-26', 'super_admin'),
(14, 'asdasdasd', '1991-02-03', 12, 'Male', '123123', 'asdasdas', 'asdasda', 'sda', 'asdasd', 'dasd', 'asdas', 'asd', 'asd', 'asd', 'Monthly', '2023-05-18', '2023-05-26', 'super_admin'),
(16, 'pajero', '1990-01-01', 35, 'Male', '123123', 'klj', 'lkj', 'lk', 'j', 'kljkl', 'jlkj', 'lkj', 'lkj', 'lkj', 'Monthly', '2023-05-18', '2023-06-18', 'super_admin'),
(17, 'user_d', '1990-01-01', 19, 'Male', '09128376128376', 'asd', 'na', 'na', 'na', 'na', 'na', 'sadasd', 'asdasd', 'dasdasd', 'Student', '2023-04-05', '2023-05-03', 'admin_a'),
(18, 'pajeros', '1992-01-01', 30, 'Female', '981238756123', 'amsndbanmsbd', 'mnb', 'mnb', 'mnb', 'mn', 'b', 'mnb', 'mnb', 'mnb', 'Monthly', '2023-05-05', '2023-06-05', 'super_admin'),
(19, 'user_e', '1990-09-01', 20, 'Male', '091238761237861786238', 'jahsdjkhakjsdh', 'akjshd', 'jh', 'jh', 'jh', 'jh', 'jh', 'jh', 'jh', 'Monthly', '2023-05-06', '2023-06-06', 'admin_a'),
(21, 'sampakto', '1990-09-09', 32, 'Male', '0912387623', 'amlsdjk hakjsdhjk ahsdajkshd kjahsd ', 'asdaskdjaskldjalksjdlakjsdlkjasd', 'lkj', 'lkj', 'lkj', 'lkj', 'lkj', 'lkj', 'lkjl', 'Monthly', '2023-06-06', '2023-07-06', 'super_admin'),
(22, 'katya123', '2001-03-30', 25, 'Female', '1234124', 'asd asd ', 'as', 'k', 'jk', 'jkj', '192309', 'lk', '123', 'asd', 'Student', '2023-05-30', '2024-05-30', 'sampakto');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `meal_plan`
--
ALTER TABLE `meal_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
