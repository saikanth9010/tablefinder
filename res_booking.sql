-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 08:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `res_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_chair`
--

CREATE TABLE `booking_chair` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `chair_id` int(11) DEFAULT NULL,
  `chair_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking_chair`
--

INSERT INTO `booking_chair` (`id`, `booking_id`, `chair_id`, `chair_no`) VALUES
(1, '5ccbd8f5609b3', 38, 'TBL-4-1'),
(2, '5ccbd8f5609b3', 39, 'TBL-4-2'),
(3, '5ea89e1a75e6e', 56, 'TBL-1-2'),
(4, '5ea89e1a75e6e', 57, 'TBL-1-3'),
(5, '5ea89f17417d4', 24, 'TBL-1-1');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `make_date` date DEFAULT NULL,
  `make_time` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(30) DEFAULT NULL,
  `bill` float DEFAULT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0- reject, 1-confirmed',
  `reject` int(11) DEFAULT 0,
  `Number_of_people` int(1) NOT NULL,
  `unique_code` varchar(5) NOT NULL,
  `checkinstatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `res_id`, `c_id`, `make_date`, `make_time`, `name`, `email`, `phone`, `booking_date`, `booking_time`, `bill`, `transactionid`, `status`, `reject`, `Number_of_people`, `unique_code`, `checkinstatus`) VALUES
(1, '5ccbd8f5609b3', 4, 9, '2019-05-03', '12:00:21pm', 'Ratan', '', '01516189260', '2019-05-04', '1:15pm', 230, 'trxoodkf', 1, 0, 0, '', 0),
(2, '5ea89e1a75e6e', 7, 9, '2020-04-29', '03:20:26am', 'gg', '', '09165063741', '2020-04-30', '10:00am', 0, '37868364232tdnqwewytgeasldasfdywsd', 0, 0, 0, '', 0),
(3, '5ea89f17417d4', 4, 9, '2020-04-29', '03:24:39am', 'gg', '', '09165063741', '2020-04-30', '10:00am', 90, '37868364232tdnqwewytgeasldasfdywsd', 0, 0, 0, '', 0),
(4, '642a1f64ac241', 8, 13, '2023-04-03', '06:35:48am', 'saikanthreddy', '', '9700751626', '2023-04-05', '10:00am', 0, 'xyz', 0, 0, 7, '', 0),
(5, '642a1fc8977cd', 8, 13, '2023-04-03', '06:37:28am', 'saikanthreddy', '', '9700751626', '2023-04-18', '10:00am', 0, 'xyz', 0, 0, 7, '\r\n   ', 0),
(6, '642a27659e62e', 14, 13, '2023-04-03', '07:09:57am', 'saikanthreddy', '', '9700751626', '2023-04-04', '10:00am', 0, '0', 1, 0, 5, '\r\n   ', 0),
(11, '642a45871771f', 14, 13, '2023-04-03', '09:18:31am', 'saikanthreddy', 'saikanth@gmail.com', '9700751626', '2023-04-11', '10:00am', 0, 'xyz', 0, 0, 4, '\r\n   ', 0),
(12, '642a46227814b', 14, 13, '2023-04-03', '09:21:06am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-04', '10:00am', 0, 'xyz', 0, 0, 4, '\r\n   ', 0),
(13, '642a4776eb4be', 14, 13, '2023-04-03', '09:26:46am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-03', '10:00am', 0, 'xyz', 0, 0, 4, 'ya4Cf', 0),
(14, '642a494df0419', 14, 13, '2023-04-03', '09:34:37am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-10', '10:00am', 0, 'xyz', 0, 0, 4, 'YzKdf', 0),
(15, '642a4a0ad5c30', 14, 13, '2023-04-03', '09:37:46am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-11', '10:00am', 0, 'xyz', 0, 0, 4, 'X3ore', 0),
(16, '642a4e72562dc', 14, 13, '2023-04-03', '09:56:34am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-04', '10:00am', 0, 'xyz', 0, 0, 4, '60245', 0),
(17, '642a4fbda0790', 14, 13, '2023-04-03', '10:02:05am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-12', '10:00am', 0, 'xyz', 0, 0, 4, '59801', 0),
(18, '642a502c00554', 14, 13, '2023-04-03', '10:03:56am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-18', '10:00am', 0, 'xyz', 0, 0, 4, '52179', 0),
(19, '642a509801afb', 14, 13, '2023-04-03', '10:05:44am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-11', '10:00am', 0, 'xyz', 0, 0, 4, '37698', 0),
(20, '642a544a6cf32', 14, 13, '2023-04-03', '10:21:30am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-11', '10:00am', 0, 'xyz', 1, 0, 4, '68742', 0),
(21, '642a5844d0c19', 14, 13, '2023-04-03', '10:38:28am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-04', '10:00am', 0, 'xyz', 1, 0, 4, '36895', 1),
(22, '642a5cb11511a', 14, 13, '2023-04-03', '10:57:21am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-05', '10:00am', 0, 'xyz', 1, 0, 2, '78345', 1),
(23, '642b44b45654c', 14, 15, '2023-04-04', '03:27:16am', 'sana', 'sanasamreen155@gmail.com', '+14379894491', '2023-04-03', '10:00am', 0, 'xyz', 1, 0, 4, '53708', 1),
(24, '642b5597bec43', 14, 16, '2023-04-04', '04:39:19am', 'Akshay Sushil Mahajan', 'akshaymahajan21@gmail.com', '6479041283', '2023-04-03', '10:00am', 0, 'xyz', 1, 0, 2, '05236', 1),
(25, '642ba988c560a', 14, 16, '2023-04-04', '10:37:28am', 'Akshay Sushil Mahajan', 'akshaymahajan21@gmail.com', '6479041283', '2023-04-04', '10:00am', 0, 'xyz', 0, 0, 2, '40659', 0),
(26, '642bb11be9b7d', 14, 16, '2023-04-04', '11:09:47am', 'Akshay Sushil Mahajan', 'akshaymahajan21@gmail.com', '6479041283', '2023-04-04', '10:00am', 0, 'xyz', 1, 0, 2, '43756', 1),
(27, '642c677b8f854', 14, 13, '2023-04-05', '12:07:55am', 'saikanthreddy', 'saikanth9010@gmail.com', '9700751626', '2023-04-05', '8:45pm', 0, 'xyz', 0, 0, 4, '17280', 1),
(28, '642eccbd531b1', 14, 18, '2023-04-06', '07:44:29pm', 'saikanthreddy kontham', 'saikanth9010@gmail.com', '4379716063', '2023-04-06', '10:00am', 0, 'xyz', 0, 0, 4, '97520', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking_menus`
--

CREATE TABLE `booking_menus` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking_menus`
--

INSERT INTO `booking_menus` (`id`, `booking_id`, `item_id`, `qty`) VALUES
(1, '5ccbd8f5609b3', 4, 2),
(2, '5ccbd8f5609b3', 5, 2),
(3, '5ea89f17417d4', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(100) DEFAULT NULL,
  `location_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `location_id`) VALUES
(1, 'Scarborough', 0),
(2, 'Toronto (Downtown)', 0),
(3, 'Pickering', 0),
(4, 'Ajax', 0),
(5, 'Mississauga', 0),
(6, 'Brampton', 0),
(7, 'Markham', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `item_name` varchar(200) DEFAULT NULL,
  `madeby` varchar(300) DEFAULT NULL,
  `food_type` varchar(100) NOT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `res_id`, `item_name`, `madeby`, `food_type`, `price`, `image`) VALUES
(1, 1, 'Grilled Chicken Breasts With Chillies & Lemongrass', 'Chicken breast marinated in herbs,butter and chillies', 'Fast Food', 24, 'grilled.jpg'),
(2, 2, 'Crispy Calamari Rings', '	\r\nSquid rings fried in Tempura batter', 'Fast Food', 12, 'calamari.jpg'),
(3, 3, 'Beef Steak with Mushroom Sauce', 'Tender beef steak cooked to your desired level of doneness, topped with a rich and savory mushroom sauce. \r\n', 'Fast Food', 28, 'beef.jpg'),
(4, 4, 'Chicken Alfredo Pasta', 'Tender chicken breast cooked in a creamy Alfredo sauce, made with butter, cream, garlic, and Parmesan cheese, tossed with pasta. \r\n', 'Fast Food', 18, 'alfredo.jpg'),
(5, 5, 'Tandoori Lamb Chops', 'This dish consists of succulent lamb chops marinated in a yogurt-based spice blend, including tandoori masala, ginger, and garlic. ', 'Fast Food', 30, 'lamb.jpg'),
(6, 6, 'Butter Chicken', 'Marinated and grilled chicken simmered in a rich and creamy tomato sauce, flavored with Indian spices such as garam masala and fenugreek. ', 'Fast Food', 25, 'butter.jpg'),
(11, 5, 'Paneer Tikka', 'Indian cheese marinated in a spiced yogurt mixture and then grilled or baked until it\'s golden and slightly charred.', 'Fast Food', 15, 'paneertikka.jpg'),
(14, 14, 'Curry Shrimp with Jasmine Rice', 'Shrimp cooked in a fragrant curry sauce made with Indian spices with coconut milk and served with jasmine rice.', 'Fast Food', 25, 'curry.jpg'),
(15, 14, 'Masala Fries', 'Fries are tossed in a spiced masala mix, made with Indian spices', 'Fast Food', 10, 'masala.jpg'),
(16, 3, 'Spicy Paneer Tacos', 'crispy tortilla shells filled with spiced paneer cubes, along with a tangy slaw \r\n', 'Fast Food', 16, 'tacos.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(100) NOT NULL,
  `province_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province_name`) VALUES
(1, 'Ontario');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_chair`
--

CREATE TABLE `restaurant_chair` (
  `id` int(11) NOT NULL,
  `tbl_id` int(11) DEFAULT NULL,
  `chair_no` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant_chair`
--

INSERT INTO `restaurant_chair` (`id`, `tbl_id`, `chair_no`) VALUES
(24, 3, 'TBL-1-1'),
(25, 3, 'TBL-1-2'),
(26, 3, 'TBL-1-3'),
(27, 3, 'TBL-1-4'),
(28, 3, 'TBL-1-5'),
(29, 3, 'TBL-1-6'),
(30, 4, 'TBL-2-1'),
(31, 4, 'TBL-2-2'),
(32, 4, 'TBL-2-3'),
(33, 4, 'TBL-2-4'),
(34, 5, 'TBL-3-1'),
(35, 5, 'TBL-3-2'),
(36, 5, 'TBL-3-3'),
(37, 5, 'TBL-3-4'),
(38, 6, 'TBL-4-1'),
(39, 6, 'TBL-4-2'),
(40, 6, 'TBL-4-3'),
(41, 7, 'TBL-1-1'),
(42, 7, 'TBL-1-2'),
(43, 7, 'TBL-1-3'),
(44, 7, 'TBL-1-4'),
(45, 7, 'TBL-1-5'),
(46, 8, 'TBL-2-1'),
(47, 8, 'TBL-2-2'),
(48, 8, 'TBL-2-3'),
(49, 9, 'TBL-3-1'),
(50, 9, 'TBL-3-2'),
(51, 9, 'TBL-3-3'),
(52, 9, 'TBL-3-4'),
(53, 10, 'TBL-4-1'),
(54, 10, 'TBL-4-2'),
(55, 11, 'TBL-1-1'),
(56, 11, 'TBL-1-2'),
(57, 11, 'TBL-1-3'),
(58, 11, 'TBL-1-4');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_info`
--

CREATE TABLE `restaurant_info` (
  `id` int(11) NOT NULL,
  `restaurent_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `location` int(11) NOT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `bkashnumber` varchar(20) DEFAULT NULL,
  `approve_status` int(11) NOT NULL DEFAULT 0 COMMENT '0-not approve,1-approve ',
  `role` int(20) DEFAULT NULL COMMENT '1 = restaurant, 2 = customer '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant_info`
--

INSERT INTO `restaurant_info` (`id`, `restaurent_name`, `email`, `phone`, `address`, `location`, `logo`, `password`, `bkashnumber`, `approve_status`, `role`) VALUES
(1, 'cloud Continental bistro', 'cloudcontinentalbistro@gmail.com', '01514569852', '121 Rose Crescent', 2, 'bibiana.jpg', '202cb962ac59075b964b07152d234b70', '01514569852', 0, 1),
(2, 'Park View Restaurant', 'park@gmail.com', '01821356478', '26 Indira Rd, Dhaka 1215', 2, 'park.jpg', '202cb962ac59075b964b07152d234b70', '01821356478', 0, 1),
(3, 'Farzi Cafe', 'farzicafe@gmail.com', '01751235864', 'Farmgate - Tejturi Bazar Rd, 49, East Tejturi Bazar, Farmgate, Tejgaon, Dhaka 1215', 2, 'new purobi.jpg', '202cb962ac59075b964b07152d234b70', '01751235864', 0, 1),
(4, 'Ancholik Khana', 'ancholik@gmail.com', '01614552245', '1142 Eglinton Avenue', 1, 'ancholik.jpg', '202cb962ac59075b964b07152d234b70', '01614552245', 0, 1),
(5, 'Bar B Q Tonite', 'barbq@gmail.com', '01711555263', '1562 Don mills Road', 1, 'barbq.jpg', '202cb962ac59075b964b07152d234b70', '01711555263', 0, 1),
(6, 'Ratan', 'ratan.hazra004@gmail.com', '01516189260', '44/2, Dundas Street', 0, 'chicken birayni.jpg', '202cb962ac59075b964b07152d234b70', NULL, 0, 2),
(7, 'Cloud Bistro', 'cloud@gmail.com', '01811555666', 'Rowshan Tower, 152/2A-2 (1st Floor, Panthapath Road, Dhaka 1205', 3, 'cloud.jpg', '202cb962ac59075b964b07152d234b70', '01811555666', 0, 1),
(8, 'welcome', 'welcome@gmail.com', '01511444852', '57/8, East Horizon view', 3, 'panthasala.jpg', '202cb962ac59075b964b07152d234b70', '01511444852', 0, 3),
(14, 'Rotis and Rolls', 'saikanth@gmail.com', '4379716063', 'Ajax', 4, 'rotisandrolls.png', '18a7a35a5b122f58c3053679f5a8c7f2', NULL, 0, 1),
(18, 'saikanthreddy kontham', 'saikanth9010@gmail.com', '4379716063', 'scarbporough', 0, 'WhatsApp Image 2023-04-05 at 4.22.38 PM.jpeg', '18a7a35a5b122f58c3053679f5a8c7f2', NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(11) NOT NULL,
  `res_id` int(11) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`id`, `res_id`, `table_name`) VALUES
(3, 4, 'TBL-1'),
(4, 4, 'TBL-2'),
(5, 4, 'TBL-3'),
(6, 4, 'TBL-4'),
(7, 5, 'TBL-1'),
(8, 5, 'TBL-2'),
(9, 5, 'TBL-3'),
(10, 5, 'TBL-4'),
(11, 7, 'TBL-1'),
(12, 14, 'TBL-1'),
(13, 14, 'TBL-2');

-- --------------------------------------------------------

--
-- Table structure for table `res_temp`
--

CREATE TABLE `res_temp` (
  `id` int(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `booking_table` varchar(100) NOT NULL,
  `booking_status` int(100) NOT NULL,
  `checkin_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_details`
--

CREATE TABLE `table_details` (
  `id` int(100) NOT NULL,
  `res_id` int(10) NOT NULL,
  `table_id` varchar(10) NOT NULL,
  `chairs` int(10) NOT NULL,
  `booked` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_details`
--

INSERT INTO `table_details` (`id`, `res_id`, `table_id`, `chairs`, `booked`) VALUES
(1, 14, 'TBL-1', 4, 0),
(2, 14, 'TBL-2', 4, 0),
(3, 14, 'TBL-3', 2, 0),
(4, 14, 'TBL-4', 2, 0),
(5, 14, 'TBL-5', 4, 0),
(6, 14, 'TBL-6', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `waiting_list`
--

CREATE TABLE `waiting_list` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unique_code` varchar(5) NOT NULL,
  `booking_status` int(1) NOT NULL,
  `checkin_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_chair`
--
ALTER TABLE `booking_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_menus`
--
ALTER TABLE `booking_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_temp`
--
ALTER TABLE `res_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_details`
--
ALTER TABLE `table_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waiting_list`
--
ALTER TABLE `waiting_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_chair`
--
ALTER TABLE `booking_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `booking_menus`
--
ALTER TABLE `booking_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `restaurant_chair`
--
ALTER TABLE `restaurant_chair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `res_temp`
--
ALTER TABLE `res_temp`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `table_details`
--
ALTER TABLE `table_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `waiting_list`
--
ALTER TABLE `waiting_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
