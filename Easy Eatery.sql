-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2021 at 12:33 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_delivery_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `CustomerID` int(11) NOT NULL,
  `CustomerFirstName` varchar(255) DEFAULT NULL,
  `CustomerLastName` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Area` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactNumber` int(11) DEFAULT NULL,
  `CreatedON` datetime NOT NULL DEFAULT current_timestamp(),
  `EditedON` timestamp NOT NULL DEFAULT current_timestamp(),
  `DeletedON` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `Password`, `Address`, `Area`, `District`, `Email`, `ContactNumber`, `CreatedON`, `EditedON`, `DeletedON`) VALUES
(1, 'Jaohar', 'Raihan', '000', '8/4A ', 'Dhanmondi ', 'Dhaka', 'jaohar.raihan@ulab.edu.bd', 1874517426, '2021-05-14 23:11:33', '2021-05-14 17:11:33', '2021-05-14 23:11:33'),
(2, 'Aditi ', 'Bhattacarya', '111', '1/8 ', 'mohammadpur ', 'Dhaka ', 'Aditi.Bhattacarya.cse@ulab.edu.bd', 1805625502, '2021-05-15 23:11:33', '2021-05-15 17:11:33', '2021-05-15 23:11:33'),
(3, 'Sadia', 'Afrin', '222', '2/8 ', 'tajmahal road ', 'Dhaka', 'sadia.afrin.cse@ulab.edu.bd', 1905625555, '2021-05-16 23:11:33', '2021-05-16 17:11:33', '2021-05-16 23:11:33'),
(4, 'Shakib Al', 'Hasan', '333', '5/15  ', 'adabor', 'Dhaka ', 'Shakib.hasan@gmail.com', 1305626265, '2021-05-17 23:11:33', '2021-05-17 17:11:33', '2021-05-17 23:11:33');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_information_details_view`
-- (See below for the actual view)
--
CREATE TABLE `customer_information_details_view` (
`CustomerID` int(11)
,`CustomerFirstName` varchar(255)
,`CustomerLastName` varchar(255)
,`PASSWORD` varchar(255)
,`Address` varchar(255)
,`TotalPrice` double(255,3)
);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `DeliveryPersonID` int(11) NOT NULL,
  `DeliveryPersonFirstName` varchar(255) DEFAULT NULL,
  `DeliveryPersonLastName` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Area` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactNumber` int(11) NOT NULL,
  `NationalID` int(11) DEFAULT NULL,
  `CreatedON` datetime NOT NULL DEFAULT current_timestamp(),
  `EditedON` timestamp NOT NULL DEFAULT current_timestamp(),
  `DeletedON` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_person`
--

INSERT INTO `delivery_person` (`DeliveryPersonID`, `DeliveryPersonFirstName`, `DeliveryPersonLastName`, `Password`, `Address`, `Area`, `District`, `Email`, `ContactNumber`, `NationalID`, `CreatedON`, `EditedON`, `DeletedON`) VALUES
(1, 'Washim', 'AKram', 'D555', '20/6A ', 'Dhanmondi ', 'Dhaka', 'washim@ulab.edu.bd', 1105625602, 125863569, '2021-05-14 23:14:44', '2021-05-14 17:14:44', '2021-05-14 23:14:44'),
(2, 'Faria', 'Sultana', 'D666', '21/7 ', 'mohammadpur ', 'Dhaka', 'Faria@ulab.edu.bd', 1005626622, 236589756, '2021-05-15 23:14:44', '2021-05-15 17:14:44', '2021-05-15 23:14:44'),
(3, 'Tajrean', 'Reza', 'D777', '12/18 ', 'tajmahal road ', 'Dhaka', 'tajrean@ulab.edu.bd', 1905625555, 856957846, '2021-05-16 23:14:44', '2021-05-16 17:14:44', '2021-05-16 23:14:44'),
(4, 'Shimul', 'Chowdhury', 'D888', '25/1 ', 'adabor ', 'Dhaka', 'shimul.c@ulab.edu.bd', 1990555555, 563254125, '2021-05-17 23:14:44', '2021-05-17 17:14:44', '2021-05-17 23:14:44');

-- --------------------------------------------------------

--
-- Stand-in structure for view `delivery_person_view`
-- (See below for the actual view)
--
CREATE TABLE `delivery_person_view` (
`ID` int(11)
,`NAME` varchar(255)
,`PASSWORD` varchar(255)
,`Address` varchar(255)
,`Area` varchar(255)
,`OrderFinishTime` timestamp
,`DeliveryTime` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_process`
--

CREATE TABLE `delivery_process` (
  `DeliveryProcessID` int(11) NOT NULL,
  `DeliveryPersonID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `OrderFinishTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `DeliveryTime` datetime DEFAULT NULL,
  `TotalPrice` double(255,3) DEFAULT NULL,
  `CreatedON` datetime NOT NULL DEFAULT current_timestamp(),
  `EditedON` timestamp NOT NULL DEFAULT current_timestamp(),
  `DeletedON` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_process`
--

INSERT INTO `delivery_process` (`DeliveryProcessID`, `DeliveryPersonID`, `OrderID`, `OrderFinishTime`, `DeliveryTime`, `TotalPrice`, `CreatedON`, `EditedON`, `DeletedON`) VALUES
(1, 1, 1, '2021-05-15 09:14:44', '2021-05-15 16:14:44', 380.000, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:44'),
(2, 2, 2, '2021-05-23 18:30:33', '2021-05-04 16:14:44', 380.000, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:44'),
(3, 3, 3, '2021-05-23 18:31:14', '2014-05-14 17:14:44', 199.200, '2021-05-14 15:14:44', '2021-05-14 10:14:44', '2021-05-14 15:14:44'),
(4, 3, 4, '2021-05-23 18:27:51', '2021-05-04 16:14:44', 398.400, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:44');

-- --------------------------------------------------------

--
-- Stand-in structure for view `delivery_process_views`
-- (See below for the actual view)
--
CREATE TABLE `delivery_process_views` (
`ID` int(11)
,`DeliveryPersonID` int(11)
,`OrderID` int(11)
,`OrderFinishTime` timestamp
,`DeliveryTime` datetime
,`FoodName` varchar(255)
,`Catagory` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `FoodID` int(11) NOT NULL,
  `RestaurantID` int(11) DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Catagory` varchar(255) DEFAULT NULL,
  `Price` double(255,3) DEFAULT NULL,
  `Discount` double(255,3) DEFAULT NULL,
  `TotalPrice` double(255,3) DEFAULT NULL,
  `CreatedON` datetime NOT NULL DEFAULT current_timestamp(),
  `EditedON` timestamp NOT NULL DEFAULT current_timestamp(),
  `DeletedON` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`FoodID`, `RestaurantID`, `FoodName`, `Catagory`, `Price`, `Discount`, `TotalPrice`, `CreatedON`, `EditedON`, `DeletedON`) VALUES
(1, 1, 'Mutton Kacchi', 'Small', 399.990, 19.990, 380.000, '2021-05-14 23:14:44', '2021-05-14 17:14:44', '2021-05-14 23:14:44'),
(2, 1, 'Chicken and Rice', 'Large', 199.200, 0.000, 199.200, '2021-05-15 23:14:44', '2021-05-15 17:14:44', '2021-05-15 23:14:44'),
(3, 2, 'Mutton Kacchi', 'Large', 599.000, 50.000, 549.000, '2021-05-16 23:14:44', '2021-05-16 17:14:44', '2021-05-16 23:14:44'),
(4, 2, 'Murag Polao', 'Small', 140.000, 20.500, 119.500, '2021-05-17 23:14:44', '2021-05-17 17:14:44', '2021-05-17 23:14:44');

-- --------------------------------------------------------

--
-- Stand-in structure for view `food_item_normalization`
-- (See below for the actual view)
--
CREATE TABLE `food_item_normalization` (
`FoodID` int(11)
,`FoodName` varchar(255)
,`Catagory` varchar(255)
,`TotalPrice` double(255,3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `food_item_orderid`
-- (See below for the actual view)
--
CREATE TABLE `food_item_orderid` (
`FoodID` int(11)
,`RestaurantID` int(11)
,`FoodName` varchar(255)
,`Catagory` varchar(255)
,`Price` double(255,3)
,`OrderID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `order_information`
--

CREATE TABLE `order_information` (
  `OrderID` int(11) NOT NULL,
  `FoodID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalPrice` double(255,3) DEFAULT NULL,
  `CreatedON` datetime NOT NULL DEFAULT current_timestamp(),
  `EditedON` timestamp NOT NULL DEFAULT current_timestamp(),
  `DeletedON` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_information`
--

INSERT INTO `order_information` (`OrderID`, `FoodID`, `CustomerID`, `Quantity`, `TotalPrice`, `CreatedON`, `EditedON`, `DeletedON`) VALUES
(1, 1, 1, 1, 380.000, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:44'),
(2, 1, 2, 1, 380.000, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:44'),
(3, 2, 2, 1, 199.200, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:44'),
(4, 2, 3, 2, 398.400, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `payment_information`
--

CREATE TABLE `payment_information` (
  `PaymentID` int(11) NOT NULL,
  `DeliveryProcessID` int(11) DEFAULT NULL,
  `BkashID` int(11) DEFAULT NULL,
  `NagadID` int(11) DEFAULT NULL,
  `CashOnDeliveryID` int(11) DEFAULT NULL,
  `CreatedON` datetime NOT NULL DEFAULT current_timestamp(),
  `EditedON` timestamp NOT NULL DEFAULT current_timestamp(),
  `DeletedON` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_information`
--

INSERT INTO `payment_information` (`PaymentID`, `DeliveryProcessID`, `BkashID`, `NagadID`, `CashOnDeliveryID`, `CreatedON`, `EditedON`, `DeletedON`) VALUES
(1, 1, 1683659364, 0, 0, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:04'),
(2, 2, 0, 1552854693, 0, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:04'),
(3, 3, 0, 0, 1, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:04'),
(4, 4, 1956935888, 0, 0, '2021-05-14 15:14:44', '2021-05-14 09:14:44', '2021-05-14 15:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_information`
--

CREATE TABLE `restaurant_information` (
  `RestaurantID` int(11) NOT NULL,
  `RestaurantName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `Area` varchar(255) NOT NULL,
  `District` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactNumber` int(11) NOT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTIme` datetime NOT NULL DEFAULT current_timestamp(),
  `CreatedON` datetime NOT NULL DEFAULT current_timestamp(),
  `EditedON` timestamp NOT NULL DEFAULT current_timestamp(),
  `DeletedON` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_information`
--

INSERT INTO `restaurant_information` (`RestaurantID`, `RestaurantName`, `Address`, `Area`, `District`, `Email`, `ContactNumber`, `StartTime`, `EndTIme`, `CreatedON`, `EditedON`, `DeletedON`) VALUES
(1, 'Sultan Dine', '2/6C ', 'Dhanmondi ', 'Dhaka', 'sultan@gmail.com', 1682565953, '2021-05-13 09:09:57', '2021-05-13 19:28:14', '2021-05-14 23:14:44', '2021-05-14 17:14:44', '2021-05-14 23:14:44'),
(2, 'Basmoti Kacchi', '12/18B  ', 'shamoly', 'Dhaka', 'Basmoti@gmail.com', 1925688888, '2021-05-13 10:19:57', '2021-05-13 19:28:14', '2021-05-16 23:14:44', '2021-05-16 17:14:44', '2021-05-16 23:14:44'),
(3, 'Basmoti Bhai', '2/19A ', 'Dhanmondi ', 'Dhaka', 'Kacchi@gmail.com', 1889988256, '2021-05-13 08:00:00', '2021-05-13 19:28:14', '2021-05-16 23:14:44', '2021-05-16 17:14:44', '2021-05-16 23:14:44'),
(4, 'TakeOut2.O', '2/15A ', 'dhanmondi', 'Dhaka', 'takeout2.O@gmail.com', 1335566932, '2021-05-13 09:39:57', '2021-05-13 19:28:14', '2021-05-17 23:14:44', '2021-05-17 17:14:44', '2021-05-17 23:14:44');

-- --------------------------------------------------------

--
-- Stand-in structure for view `restaurant_information_view`
-- (See below for the actual view)
--
CREATE TABLE `restaurant_information_view` (
`Total_RestaurantID` int(11)
,`Restaurant` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `‘food_item_simple_view’`
-- (See below for the actual view)
--
CREATE TABLE `‘food_item_simple_view’` (
`Total_FoodID` int(11)
,`Food` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `‘food_item_view’`
-- (See below for the actual view)
--
CREATE TABLE `‘food_item_view’` (
`ID` varchar(255)
,`NAME` int(11)
,`Catagory` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `‘order_view’`
-- (See below for the actual view)
--
CREATE TABLE `‘order_view’` (
`TotalOrder` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `‘payment_information_view’`
-- (See below for the actual view)
--
CREATE TABLE `‘payment_information_view’` (
`ID` int(11)
,`NAME` int(11)
,`BkashID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `‘total_restaurant_information_view’`
-- (See below for the actual view)
--
CREATE TABLE `‘total_restaurant_information_view’` (
`TotalRestauran` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `customer_information_details_view`
--
DROP TABLE IF EXISTS `customer_information_details_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_information_details_view`  AS SELECT `i`.`CustomerID` AS `CustomerID`, `i`.`CustomerFirstName` AS `CustomerFirstName`, `i`.`CustomerLastName` AS `CustomerLastName`, `i`.`Password` AS `PASSWORD`, `i`.`Address` AS `Address`, `f`.`TotalPrice` AS `TotalPrice` FROM (`customer_information` `i` join `order_information` `f` on(`i`.`CustomerID` = `f`.`CustomerID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `delivery_person_view`
--
DROP TABLE IF EXISTS `delivery_person_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `delivery_person_view`  AS SELECT `i`.`DeliveryPersonID` AS `ID`, `i`.`DeliveryPersonFirstName` AS `NAME`, `i`.`Password` AS `PASSWORD`, `i`.`Address` AS `Address`, `i`.`Area` AS `Area`, `s`.`OrderFinishTime` AS `OrderFinishTime`, `s`.`DeliveryTime` AS `DeliveryTime` FROM (`delivery_person` `i` join `delivery_process` `s` on(`i`.`DeliveryPersonID` = `s`.`DeliveryPersonID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `delivery_process_views`
--
DROP TABLE IF EXISTS `delivery_process_views`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `delivery_process_views`  AS SELECT `i`.`DeliveryProcessID` AS `ID`, `i`.`DeliveryPersonID` AS `DeliveryPersonID`, `i`.`OrderID` AS `OrderID`, `i`.`OrderFinishTime` AS `OrderFinishTime`, `i`.`DeliveryTime` AS `DeliveryTime`, `s`.`FoodName` AS `FoodName`, `s`.`Catagory` AS `Catagory` FROM (`delivery_process` `i` join `food_item` `s` on(`i`.`DeliveryProcessID` = `s`.`FoodName`)) ;

-- --------------------------------------------------------

--
-- Structure for view `food_item_normalization`
--
DROP TABLE IF EXISTS `food_item_normalization`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `food_item_normalization`  AS SELECT `i`.`FoodID` AS `FoodID`, `i`.`FoodName` AS `FoodName`, `i`.`Catagory` AS `Catagory`, `f`.`TotalPrice` AS `TotalPrice` FROM (`food_item` `i` join `order_information` `f` on(`i`.`FoodID` = `f`.`FoodID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `food_item_orderid`
--
DROP TABLE IF EXISTS `food_item_orderid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `food_item_orderid`  AS SELECT `i`.`FoodID` AS `FoodID`, `i`.`RestaurantID` AS `RestaurantID`, `i`.`FoodName` AS `FoodName`, `i`.`Catagory` AS `Catagory`, `i`.`Price` AS `Price`, `f`.`OrderID` AS `OrderID` FROM (`food_item` `i` join `order_information` `f` on(`i`.`FoodID` = `f`.`FoodID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `restaurant_information_view`
--
DROP TABLE IF EXISTS `restaurant_information_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `restaurant_information_view`  AS SELECT `restaurant_information`.`RestaurantID` AS `Total_RestaurantID`, `restaurant_information`.`RestaurantName` AS `Restaurant` FROM `restaurant_information` GROUP BY `restaurant_information`.`RestaurantName` ;

-- --------------------------------------------------------

--
-- Structure for view `‘food_item_simple_view’`
--
DROP TABLE IF EXISTS `‘food_item_simple_view’`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `‘food_item_simple_view’`  AS SELECT `food_item`.`FoodID` AS `Total_FoodID`, `food_item`.`FoodName` AS `Food` FROM `food_item` GROUP BY `food_item`.`FoodName` ;

-- --------------------------------------------------------

--
-- Structure for view `‘food_item_view’`
--
DROP TABLE IF EXISTS `‘food_item_view’`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `‘food_item_view’`  AS SELECT `food_item`.`FoodName` AS `ID`, `food_item`.`FoodID` AS `NAME`, `food_item`.`Catagory` AS `Catagory` FROM `food_item` WHERE `food_item`.`Catagory` = 'Small' ;

-- --------------------------------------------------------

--
-- Structure for view `‘order_view’`
--
DROP TABLE IF EXISTS `‘order_view’`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `‘order_view’`  AS SELECT count(`order_information`.`OrderID`) AS `TotalOrder` FROM `order_information` ;

-- --------------------------------------------------------

--
-- Structure for view `‘payment_information_view’`
--
DROP TABLE IF EXISTS `‘payment_information_view’`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `‘payment_information_view’`  AS SELECT `payment_information`.`PaymentID` AS `ID`, `payment_information`.`DeliveryProcessID` AS `NAME`, `payment_information`.`BkashID` AS `BkashID` FROM `payment_information` WHERE `payment_information`.`BkashID` = '0' ;

-- --------------------------------------------------------

--
-- Structure for view `‘total_restaurant_information_view’`
--
DROP TABLE IF EXISTS `‘total_restaurant_information_view’`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `‘total_restaurant_information_view’`  AS SELECT count(`restaurant_information`.`RestaurantID`) AS `TotalRestauran` FROM `restaurant_information` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `Password` (`Password`),
  ADD UNIQUE KEY `ContactNumber` (`ContactNumber`);

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`DeliveryPersonID`),
  ADD UNIQUE KEY `Password` (`Password`),
  ADD UNIQUE KEY `NationalID` (`NationalID`);

--
-- Indexes for table `delivery_process`
--
ALTER TABLE `delivery_process`
  ADD PRIMARY KEY (`DeliveryProcessID`),
  ADD KEY `DeliveryPersonID` (`DeliveryPersonID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `food_item`
--
ALTER TABLE `food_item`
  ADD PRIMARY KEY (`FoodID`),
  ADD KEY `RestaurantID` (`RestaurantID`);

--
-- Indexes for table `order_information`
--
ALTER TABLE `order_information`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `FoodID` (`FoodID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `payment_information`
--
ALTER TABLE `payment_information`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `DeliveryProcessID` (`DeliveryProcessID`);

--
-- Indexes for table `restaurant_information`
--
ALTER TABLE `restaurant_information`
  ADD PRIMARY KEY (`RestaurantID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_process`
--
ALTER TABLE `delivery_process`
  ADD CONSTRAINT `delivery_process_ibfk_1` FOREIGN KEY (`DeliveryPersonID`) REFERENCES `delivery_person` (`DeliveryPersonID`),
  ADD CONSTRAINT `delivery_process_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `order_information` (`OrderID`);

--
-- Constraints for table `food_item`
--
ALTER TABLE `food_item`
  ADD CONSTRAINT `food_item_ibfk_1` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant_information` (`RestaurantID`);

--
-- Constraints for table `order_information`
--
ALTER TABLE `order_information`
  ADD CONSTRAINT `order_information_ibfk_1` FOREIGN KEY (`FoodID`) REFERENCES `food_item` (`FoodID`),
  ADD CONSTRAINT `order_information_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer_information` (`CustomerID`);

--
-- Constraints for table `payment_information`
--
ALTER TABLE `payment_information`
  ADD CONSTRAINT `payment_information_ibfk_1` FOREIGN KEY (`DeliveryProcessID`) REFERENCES `delivery_process` (`DeliveryProcessID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
