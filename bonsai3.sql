-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2019 at 07:31 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bonsai3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` varchar(50) NOT NULL,
  `quality` int(50) NOT NULL,
  `Total` double NOT NULL,
  `customer_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(50) NOT NULL,
  `custname` varchar(50) NOT NULL,
  `custaddress` varchar(50) NOT NULL,
  `custphoneno` varchar(50) NOT NULL,
  `custaltphoneno` varchar(50) NOT NULL,
  `custemail` varchar(50) NOT NULL,
  `custgender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `custname`, `custaddress`, `custphoneno`, `custaltphoneno`, `custemail`, `custgender`) VALUES
('sumathivenisha@gmail.com', 'sumathi', '#30,mm garden 1st cross,, Babusapalya', '8553715755', '9444744415', 'sumathivenisha@gmail.com', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `product_id` varchar(50) DEFAULT NULL,
  `quality` int(50) NOT NULL,
  `Total` double NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `status` varchar(500) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `delivery_id` int(50) NOT NULL,
  `delivery_remark` varchar(200) DEFAULT NULL,
  `delivery_status` varchar(200) DEFAULT NULL,
  `dp_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliverydetails`
--

INSERT INTO `deliverydetails` (`product_id`, `quality`, `Total`, `customer_id`, `status`, `date`, `delivery_id`, `delivery_remark`, `delivery_status`, `dp_id`) VALUES
('aaaa', 1, 123, 'sumathivenisha@gmail.com', 'Payment done', NULL, 7, NULL, NULL, NULL),
('bonsaibanana90cm', 1, 1500, 'sumathivenisha@gmail.com', 'Payment done', NULL, 8, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryperson`
--

CREATE TABLE `deliveryperson` (
  `dp_id` int(50) NOT NULL,
  `dp_name` varchar(50) NOT NULL,
  `dp_age` int(50) NOT NULL,
  `dp_phoneno` varchar(50) DEFAULT NULL,
  `dp_address` varchar(200) NOT NULL,
  `dp_altphoneno` varchar(50) NOT NULL,
  `dp_gender` varchar(50) NOT NULL,
  `dp_dob` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveryperson`
--

INSERT INTO `deliveryperson` (`dp_id`, `dp_name`, `dp_age`, `dp_phoneno`, `dp_address`, `dp_altphoneno`, `dp_gender`, `dp_dob`) VALUES
(1, 'sumathi venisha', 1, '9444744415', 'Sa strictly Street', '8553715755', 'female', '2019-08-01'),
(2, 'ANBARASAN', 1, '8553715755', '#30,mm garden 1st cross,', '8553715755', 'female', '2019-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `product_id` varchar(50) NOT NULL,
  `producttype` varchar(50) NOT NULL,
  `stock` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`product_id`, `producttype`, `stock`) VALUES
('bonsaigrape70cm', 'bonsai', 4),
('bonsaibanana90cm', 'bonsai', 10),
('bonsaibanyan30cm', 'bonsai', 5),
('aaaa', 'aaaaa', 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `usermail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `customer_id`, `usermail`, `password`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', 'Admin@123'),
(2, 'sumathivenisha@gmail.com', 'sumathivenisha@gmail.com', 'sumathi');

-- --------------------------------------------------------

--
-- Table structure for table `paymentbonsai3`
--

CREATE TABLE `paymentbonsai3` (
  `customer_id` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `status` varchar(50) NOT NULL,
  `paydescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentbonsai3`
--

INSERT INTO `paymentbonsai3` (`customer_id`, `price`, `status`, `paydescription`) VALUES
('sumathivenisha@gmail.com', 1500, 'Paid', 'Payment done'),
('sumathivenisha@gmail.com', 1623, 'Paid', 'Payment done');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(50) NOT NULL,
  `producttype` varchar(50) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productprice` double NOT NULL,
  `productimage` varchar(50) NOT NULL,
  `productdescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `producttype`, `productname`, `productprice`, `productimage`, `productdescription`) VALUES
('bonsaigrape70cm', 'bonsai', 'grape', 1750, 'grape.jpg', 'Grape vine with the height of 70cm'),
('bonsaibanana90cm', 'bonsai', 'Banana Tree', 1500, 'banana.jpg', 'Banana tree with the height of 90cm'),
('bonsaibanyan30cm', 'bonsai', 'banyan tree', 1200, 'banyan.jpg', 'Banyan tree with the height of 30cm'),
('aaaa', 'aaaaa', 'aaaaa', 123, 'bonsai 3d.jpg', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(50) NOT NULL,
  `service_type` varchar(50) NOT NULL,
  `dp_id` int(50) NOT NULL,
  `customer_id` int(50) NOT NULL,
  `service_status` varchar(50) NOT NULL,
  `service_price` double NOT NULL,
  `service_remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `deliveryperson`
--
ALTER TABLE `deliveryperson`
  ADD PRIMARY KEY (`dp_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `delivery_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deliveryperson`
--
ALTER TABLE `deliveryperson`
  MODIFY `dp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
