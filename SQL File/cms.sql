-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 03:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '93ee73be443587ab6f71ac20b4381ae7', '07-05-2023 06:52:31 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(8, 'Finance', 'Finance', '2023-04-28 03:10:33', '2023-04-28 11:44:16'),
(9, 'General', 'General Query', '2023-04-28 03:11:31', NULL),
(10, 'Feedback', 'Reply', '2023-04-28 03:11:47', NULL),
(11, 'Product', 'product', '2023-04-28 11:33:15', NULL),
(13, 'Work', 'work load', '2023-04-28 11:34:23', NULL),
(15, 'Sells', 'Sells', '2023-04-28 11:35:36', NULL),
(17, 'Logistics', 'Logistics Manager', '2023-05-02 06:10:29', NULL),
(18, 'Merchandiser Supervisor', 'Merchandiser Supervisor', '2023-05-02 06:11:39', NULL),
(19, 'Custom Supervisor', 'Custom Supervisor', '2023-05-02 06:12:09', NULL),
(20, 'Shipping ', 'Shipping Specialist', '2023-05-02 06:12:29', NULL),
(21, 'Materials', 'Materials Supervisor', '2023-05-02 06:12:58', NULL),
(22, 'Courier', 'Courier ', '2023-05-02 06:13:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(10, 3, 'closed', 'accepted', '2023-04-26 06:51:06'),
(11, 26, 'closed', 'we will update soon', '2023-04-26 07:18:39'),
(12, 27, 'closed', 'yes', '2023-04-29 05:24:00'),
(13, 27, 'closed', 'Thankyou for complaiin I have rasolve you query', '2023-04-29 05:24:45'),
(14, 31, 'closed', 'We will resolve it .', '2023-05-02 11:01:51'),
(15, 29, 'in process', 'it will take some time', '2023-05-03 11:38:44'),
(16, 35, 'closed', 'Thankyou!', '2023-05-04 04:42:59'),
(17, 36, 'in process', 'Your complain accepted and WE will connect you soon.', '2023-05-04 05:53:42'),
(18, 37, 'closed', 'Thank YOu for your complain. We havw eresolve it.', '2023-05-04 07:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `deptcomplaints`
--

CREATE TABLE `deptcomplaints` (
  `id` int(255) NOT NULL,
  `cmpno` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deptcomplaints`
--

INSERT INTO `deptcomplaints` (`id`, `cmpno`) VALUES
(1, 34),
(2, 34),
(3, 34),
(4, 33),
(5, 34),
(6, 34),
(7, 34),
(8, 34),
(9, 34),
(10, 34),
(11, 34),
(12, 34),
(13, 34),
(14, 34),
(15, 34),
(16, 34),
(17, 34),
(18, 34),
(19, 34),
(20, 34),
(21, 34),
(22, 34),
(23, 34);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Uttar Pradesh', '', '2016-10-18 11:35:02', '0000-00-00 00:00:00'),
(4, 'Punjab', 'pbPB', '2016-10-18 11:35:58', '0000-00-00 00:00:00'),
(5, 'Haryana', 'Haryana', '2017-03-28 07:20:36', '0000-00-00 00:00:00'),
(6, 'Delhi', 'Delhi', '2017-06-11 10:54:12', '2019-06-24 07:24:19'),
(7, 'Bihar', '', '2023-04-26 06:45:18', NULL),
(8, 'Jharkhand', '', '2023-04-26 06:45:31', NULL),
(9, 'Karnataka', '', '2023-04-28 11:45:53', NULL),
(10, 'Tamilnadu', '', '2023-04-28 11:46:04', NULL),
(11, 'Kerala', '', '2023-04-28 11:46:09', NULL),
(12, 'Kerala', '', '2023-05-04 04:44:55', NULL),
(13, 'Tamilnadu', '', '2023-05-04 04:45:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(4, 3, 'Account', '2023-04-28 03:06:27', NULL),
(5, 3, 'Management', '2023-04-28 03:06:39', NULL),
(6, 4, 'Extra Charges', '2023-04-28 03:10:12', NULL),
(7, 8, 'Fee Dues', '2023-04-28 03:10:52', NULL),
(8, 4, 'Hostel Dues', '2023-04-28 04:15:47', NULL),
(9, 13, 'More Work load', '2023-04-28 11:34:47', NULL),
(10, 8, 'Income Issues', '2023-04-28 11:38:04', NULL),
(11, 11, 'Product Sells Target', '2023-04-28 11:38:43', NULL),
(12, 11, 'Product Report', '2023-04-28 11:38:55', NULL),
(13, 12, 'HR Consultant', '2023-04-28 11:40:38', NULL),
(14, 12, 'HR Analytics Specialist', '2023-04-28 11:40:57', NULL),
(15, 12, 'Labour Relation Manager', '2023-04-28 11:41:46', NULL),
(16, 12, 'Training and Development Manager', '2023-04-28 11:42:11', NULL),
(17, 13, 'Work Place  Issues', '2023-04-28 11:43:06', NULL),
(18, 13, 'Bullying and Harassment', '2023-04-28 11:43:31', NULL),
(19, 20, 'Shipping Incharge', '2023-05-02 06:13:53', NULL),
(20, 20, 'Shipping Speicialsts', '2023-05-02 06:14:18', NULL),
(21, 22, 'Courier Delivery', '2023-05-02 06:14:41', NULL),
(22, 22, 'By Air Delivery', '2023-05-02 06:15:17', NULL),
(23, 22, 'By Truck Delivery', '2023-05-02 06:15:44', NULL),
(24, 22, 'By Water Delivery', '2023-05-02 06:16:09', NULL),
(25, 19, 'Custom Specialist', '2023-05-02 06:16:33', NULL),
(26, 19, 'custom Manager', '2023-05-02 06:16:50', NULL),
(27, 17, 'Logistics Manager', '2023-05-04 04:43:56', NULL),
(28, 17, 'Logistics Supervisor', '2023-05-04 04:44:13', NULL),
(29, 15, 'Product Quality', '2023-05-04 04:44:31', NULL),
(30, 15, 'Sells Purchasing', '2023-05-04 04:44:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `priority` int(3) NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `priority`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(26, 2, 3, 'Select Subcategory', 'General Query', 'Jharkhand', 'Syllabus', 'Syllabus is not updated. Please update it soon.', 0, '', '2023-04-26 07:13:44', 'closed', '2023-04-26 07:18:40'),
(27, 2, 2, 'Select Subcategory', 'General Query', 'Jharkhand', 'general', 'how i can pay hostel fee online?', 0, '', '2023-04-26 07:15:51', 'closed', '2023-04-29 05:24:00'),
(28, 2, 5, 'Select Subcategory', ' Complaint', 'Jharkhand', 'Academic', 'Shortage of Faculties in CSE department', 0, '', '2023-04-28 03:50:47', NULL, NULL),
(29, 3, 13, 'Bullying and Harassment', ' Complaint', 'Delhi', 'work issue', 'Dear sir, \r\n\r\nI face issue regarding work hours, Heavy ', 0, '', '2023-04-29 05:17:07', 'in process', '2023-05-03 11:38:44'),
(30, 3, 13, 'Bullying and Harassment', ' Complaint', 'Karnataka', 'work ', 'work harrassment issue', 0, '', '2023-04-29 05:21:43', NULL, NULL),
(31, 1, 22, 'Courier Delivery', ' Complaint', 'Haryana', 'due to Courier delay', 'It is a complaint regarding courier delay on date 28th of April 2023. All the shipment has successfully delivered to the customer. The Manager has cut delay charges from my wages without any reason , and it is for second time he cut  delay  charges. I am also attaching a document of shipment delivery of the day.', 0, 'invoice.jpg', '2023-05-02 06:26:10', 'closed', '2023-05-02 11:01:51'),
(32, 1, 20, 'Shipping Incharge', ' Complaint', 'Uttar Pradesh', ' putting extra charges for missing one delivery', 'Dear Sir/Mam\r\nI have missed one delivery on the date of 30/04/2023 and i also lost the product in an accident . The Manager has charges Rs32,000 for the lost product and I cannot pay it right now and also i am in the hospital right now . \r\nSo, I request to you to extend the date for 2 months , after that i will pay whole money.\r\nThank You !\r\n', 0, '', '2023-05-02 06:31:59', NULL, NULL),
(33, 1, 15, 'Select Subcategory', ' Complaint', 'Punjab', 'Selling product', 'Product is not as proper quantity . Customer reporting about it and rating it as bad product.', 0, '', '2023-05-02 06:37:11', NULL, NULL),
(34, 1, 8, 'Income Issues', 'General Query', 'Bihar', 'to get the  details of  Diwali Bonus', 'I want to know what is the structure of  Diwali Bonus.', 3, '', '2023-05-03 05:13:53', NULL, NULL),
(35, 25, 13, 'Bullying and Harassment', ' Complaint', 'Haryana', 'due to  bad enviorment at work place', 'Manager is  not behaviouring  properly with user.  ', 1, 'IMG_20171125_122643.jpg', '2023-05-04 04:39:03', 'closed', '2023-05-04 04:42:59'),
(36, 1, 19, 'Custom Specialist', ' Complaint', 'Jharkhand', 'regarding custom design', 'the design is not prepared at the time.', 1, '', '2023-05-04 05:43:58', 'in process', '2023-05-04 05:53:42'),
(37, 1, 19, 'custom Manager', ' Complaint', 'Karnataka', 'regarding custom product', 'I have a issue regarding custom design ...', 2, '6TH SEM.jpeg', '2023-05-04 07:01:30', 'closed', '2023-05-04 07:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 2, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-26 06:41:29', '26-04-2023 12:25:24 PM', 1),
(28, 2, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-26 07:12:19', '', 1),
(29, 2, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-28 03:49:38', '', 1),
(30, 0, 'Alina', 0x3a3a3100000000000000000000000000, '2023-04-29 05:06:12', '', 0),
(31, 3, 'ushree284@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-29 05:06:51', '', 1),
(32, 0, 'yadavrakesh1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-29 16:38:33', '', 0),
(33, 2, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-29 16:38:44', '', 1),
(34, 0, 'Emp00012344459', 0x3a3a3100000000000000000000000000, '2023-04-30 05:26:16', '', 1),
(35, 0, 'Emp00003245678', 0x3a3a3100000000000000000000000000, '2023-04-30 05:39:23', '', 1),
(36, 17, 'gunjanalok1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-30 10:38:29', '30-04-2023 04:11:10 PM', 1),
(37, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-30 11:56:42', '', 1),
(38, 0, 'chauhanraj21@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 03:49:43', '', 0),
(39, 0, 'chauhanraj21@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 03:49:54', '', 0),
(40, 0, 'chauhanraj21@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 03:50:00', '', 0),
(41, 21, 'rdhanbad21@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 03:52:18', '', 1),
(42, 22, 'maheshmishra3214@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 06:07:27', '', 1),
(43, 23, 'josephsirR@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 06:39:42', '02-05-2023 12:11:23 PM', 1),
(44, 24, 'nishabharti05@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 10:33:14', '02-05-2023 04:40:07 PM', 1),
(45, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 11:10:30', '', 1),
(46, 0, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-03 05:02:19', '', 0),
(47, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-03 05:02:30', '', 1),
(48, 25, 'rakeshkumar01@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 04:31:37', '', 1),
(49, 25, 'rakeshkumar01@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 04:45:41', '04-05-2023 10:16:28 AM', 1),
(50, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 05:00:50', '', 1),
(51, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 05:39:26', '04-05-2023 11:17:28 AM', 1),
(52, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 05:54:12', '', 1),
(53, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 06:00:59', '04-05-2023 11:31:01 AM', 1),
(54, 0, 'ushree284@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 06:59:03', '', 0),
(55, 0, 'ushree284@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 06:59:27', '', 0),
(56, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 06:59:46', '04-05-2023 12:31:58 PM', 1),
(57, 1, 'umashree31jan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-04 07:03:56', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `eid` varchar(14) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `desig` text NOT NULL,
  `workexp` varchar(255) NOT NULL,
  `department` text NOT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `eid`, `fullName`, `userEmail`, `password`, `contactNo`, `desig`, `workexp`, `department`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(10, '0', 'Rehan Khan', 'khanrehan1@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 8547693214, 'trainee', '10', 'hr', NULL, NULL, NULL, NULL, NULL, '2023-04-30 05:24:37', NULL, 1),
(3, '4', 'Ratan Sinha', 'ratans12@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9865324527, '', '0', '', NULL, NULL, NULL, NULL, NULL, '2023-04-29 16:13:30', NULL, 1),
(5, '6', 'Mahesh Mishra', 'mahesh456@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9863245677, '', '0', '', NULL, NULL, NULL, NULL, NULL, '2023-04-29 16:19:44', NULL, 1),
(6, '7', 'Mahesh Mishra', 'mahesh456@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9863245677, '', '0', '', NULL, NULL, NULL, NULL, NULL, '2023-04-29 16:20:07', NULL, 1),
(7, '8', 'Rakesh Yadav', 'yadavrak1@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 8876423567, '', '0', '', NULL, NULL, NULL, NULL, NULL, '2023-04-29 16:33:13', NULL, 1),
(24, 'Emp00000123433', 'Nisha Bharti', 'nishabharti05@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 8877456321, 'Warehouse Manager', '10', 'Warehouse', NULL, NULL, NULL, NULL, NULL, '2023-05-02 10:24:23', NULL, 1),
(26, 'Emp00000123444', 'U shree', 'shree284@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 7061019312, 'Shipping Specialist', '10', 'Warehouse', NULL, NULL, NULL, NULL, NULL, '2023-05-04 06:58:40', NULL, 1),
(23, 'Emp00000321401', 'Raju Joseph', 'JosephsirR@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9856214785, 'Warehouse Manager', '10', 'Warehouse', NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:39:03', NULL, 1),
(22, 'Emp00000321411', 'Mahesh Mishra', 'maheshmishra3214@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 8877451236, 'Shipping Specialist', '5', 'Courier Delivery', NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:07:16', NULL, 1),
(25, 'Emp00000321455', 'Rakesh Kumar', 'rakeshkumar01@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 9854712563, 'Materials Manager', '5', 'Material', NULL, NULL, NULL, NULL, '7088e89fa542e577d842db8fa27864fc.jpg', '2023-05-04 04:31:16', NULL, 1),
(1, 'Emp00000567888', 'Uma Shree', 'umashree31jan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 7061019016, '', '5', '', 'Dhanbad', 'Jharkhand', 'India', 828121, '4e32905406871d54ac5e0e909bbdb0fc.jpg', '2023-04-26 06:41:03', NULL, 1),
(12, 'Emp00003214501', 'Rehan Khan', 'khanrehan1@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 8547693214, 'trainee', '10', 'hr', NULL, NULL, NULL, NULL, NULL, '2023-04-30 05:29:53', NULL, 1),
(16, 'Emp00003245678', 'Rahamatulla', 'rdhanbad1@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9568741263, 'Manager', '10', 'r&d', NULL, NULL, NULL, NULL, NULL, '2023-04-30 05:38:16', NULL, 1),
(21, 'Emp00003345678', 'Rahmatulla', 'rdhanbad21@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9874512664, 'Manager', '5', 'worker', NULL, NULL, NULL, NULL, NULL, '2023-05-02 03:52:09', NULL, 1),
(4, 'Emp00003456789', 'Ratan Sinha', 'ratans12@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9865324527, 'Junior Associate', '1', 'hr', 'Dhanbad', 'Jharkhand', NULL, NULL, NULL, '2023-04-29 16:13:40', NULL, 1),
(2, 'Emp00004545555', 'Alina', 'ushree284@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 7667055769, '', '0', '', NULL, NULL, NULL, NULL, NULL, '2023-04-29 05:05:00', NULL, 1),
(17, 'Emp00004567891', 'Alok Gunjan', 'gunjanalok1@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9658741235, 'Junior Associate', '1', 'finance', NULL, NULL, NULL, NULL, '60abcca352e6f19d3e4a4ad4f6b11f11jpeg', '2023-04-30 10:38:01', NULL, 1),
(18, 'Emp00004567892', 'Supriya Bharti', 'bhartisupriya20@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 8877451269, 'Senior Associate', '15', 'r&d', NULL, NULL, NULL, NULL, NULL, '2023-04-30 11:01:32', NULL, 1),
(14, 'Emp00012344459', 'Adnan Sikdar', 'recoveryadnan@gmail.com', 'dcddb75469b4b4875094e14561e573d8', 9845612365, 'jrassociate', '1', 'r&d', NULL, NULL, NULL, NULL, NULL, '2023-04-30 05:31:09', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deptcomplaints`
--
ALTER TABLE `deptcomplaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`eid`) USING BTREE,
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deptcomplaints`
--
ALTER TABLE `deptcomplaints`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
