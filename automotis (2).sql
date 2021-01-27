-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 07:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automotis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `uname`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `carbooking`
--

CREATE TABLE `carbooking` (
  `bookid` int(15) NOT NULL,
  `ucar_id` int(15) NOT NULL,
  `company` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `bill` varchar(80) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carbooking`
--

INSERT INTO `carbooking` (`bookid`, `ucar_id`, `company`, `model`, `year`, `price`, `username`, `date`, `bill`, `status`) VALUES
(2, 5, 'Maruti Suzuki', '  Alto', '2009', '1.10  L', 'Kiran', '2020-05-01', '/car comp/carlisting/page/Bill/5pay_EkyoqzxBUI8cK2.pdf', 1),
(29, 8, 'Maruti Suzuki', '  SX4', '2008', '3.10 L', 'thomas', '2020-07-10', '/car comp/carlisting/page/Bill/8pay_FChmYcdbQKiTko.pdf', 1),
(30, 20, 'Honda', '  City', '2007', '2.90 L', 'thomas', '2020-07-11', '/car comp/carlisting/page/Bill/20pay_FD3hSxdudedwsj.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE `car_models` (
  `carid` int(20) NOT NULL,
  `compid` int(20) NOT NULL,
  `model` varchar(30) NOT NULL,
  `varient` varchar(30) NOT NULL,
  `type` varchar(15) NOT NULL,
  `fuel` varchar(20) NOT NULL,
  `fuel_capacity` varchar(20) NOT NULL,
  `milage` varchar(20) NOT NULL,
  `displacement` varchar(20) NOT NULL,
  `maxpower` varchar(20) NOT NULL,
  `maxtorque` varchar(20) NOT NULL,
  `transmission` varchar(20) NOT NULL,
  `gearbox` varchar(20) NOT NULL,
  `seat` int(10) NOT NULL,
  `ground` varchar(15) NOT NULL,
  `wheelbase` varchar(15) NOT NULL,
  `weight` varchar(15) NOT NULL,
  `boot` varchar(15) NOT NULL,
  `length` varchar(15) NOT NULL,
  `height` varchar(15) NOT NULL,
  `width` varchar(15) NOT NULL,
  `alloy` varchar(15) NOT NULL,
  `abs` varchar(15) NOT NULL,
  `drive` varchar(15) NOT NULL,
  `touch` varchar(15) NOT NULL,
  `sunroof` varchar(15) NOT NULL,
  `camera` varchar(15) NOT NULL,
  `drls` varchar(15) NOT NULL,
  `cruise` varchar(15) NOT NULL,
  `price` varchar(15) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`carid`, `compid`, `model`, `varient`, `type`, `fuel`, `fuel_capacity`, `milage`, `displacement`, `maxpower`, `maxtorque`, `transmission`, `gearbox`, `seat`, `ground`, `wheelbase`, `weight`, `boot`, `length`, `height`, `width`, `alloy`, `abs`, `drive`, `touch`, `sunroof`, `camera`, `drls`, `cruise`, `price`, `image`, `status`) VALUES
(3, 1, 'Ciaz', 'Alpha', '5', '1', '43 L', '21.56', '1462', '103 bhp', '138 NM', '1', '5', 5, '170', '2650', '1024', '510', '4490', '1485', '1730', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', '12.5', '../uploads/Ciaz.jpg', 1),
(6, 2, 'Harrier', 'XZO', '1', '2', '50 L', '-----', '1956', '138 bhp', '350 NM', '1', '6', 5, '205', '2741', '-----', '425', '1894', '1706', '1729', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '15.55 Lakhs', '../uploads/harrier.jpg', 1),
(7, 6, 'Seltos', 'HTX', '1', '2', '50 L', '20', '1493', '114 bhp', '250 NM', '1', '6', 5, '190', '2610', '----', '433', '4315', '1645', '1800', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '14.96', '../uploads/seltos.jpg', 1),
(11, 1, 'Brezza', 'ZDI', '1', '2', '45 L', '24.29', '1248', '89 bhp', '200 Nm', '1', '5', 5, '198', '2500', '1195', '328', '3995', '1640', '1790', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', '10.14 Lakhs', '../uploads/brezza.jpg', 1),
(13, 7, 'Hector', 'Smart', '1', '2', '60 L', '17.41', '1956', '168 bhp', '350 NM', '1', '6', 5, '192', '2750', '----', '----', '4655', '1760', '1835', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '13.48 Lakhs', '../uploads/hector.jpg', 1),
(15, 3, 'Venue', 'SXO', '1', '2', '45 L', '23.7', '1396', '89 bhp', '220 NM', '1', '6', 5, '190', '2600', '----', '350', '3995', '1605', '1770', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '10.84 Lakhs', '../uploads/venue.jpg', 1),
(16, 4, 'City', 'VXMT', '5', '1', '40 L', '17.4', '1497', '117 bhp', '145 NM', '1', '5', 5, '165', '2600', '1088', '510', '4440', '1495', '1695', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '13.50', '../uploads/city.jpg', 1),
(19, 1, 'Ertiga', 'zxc', '2', '1', '25', '15', '1500', '1200', '1200', '1', '5', 7, '200', '200', '200', '200', '200', '200', '200', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', '13.80', '../uploads/ertiga.jpg', 1),
(20, 8, 'Innova Crysta', 'VXM', '2', '2', '65', '10.71', '2694', '164', '245', '1', '6', 8, '176', '2750', '1825', '------', '4735', '1795', '1830', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 'yes', '16.70', '../uploads/1fbca9f63e4a19a8e3babacb68218c30.jpg', 1),
(21, 6, 'Carnival', 'Limousine', '2', '2', '60', '----', '2199', '197', '440', '2', '8', 7, '170', '3060', '----', '540', '5115', '1755', '1985', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '33.95', '../uploads/f0d8ca06d4638e7cb19882d59bdf1b0f.jpg', 1),
(22, 9, 'Marazzo', 'Mstr', '2', '2', '45', '17.3', '1497', '121', '300', '1', '6', 7, '185', '2760', '1680', '190', '4585', '1774', '1866', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', '14.76', '../uploads/9a95c941c2e406ba5ad1809fed8442b2.jpg', 1),
(23, 8, 'Yaris', 'VXCVT', '5', '1', '42', '17.8', '1496', '106', '140', '2', '7', 5, '170', '2550', '1120', '476', '4425', '1495', '1730', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', '14.19 ', '../uploads/fe52ac701c03a593d36490baf20d7de4.jpg', 1),
(24, 10, 'Aventura', 'Active', '3', '1', '45', '14.4', '1368', '89', '115', '1', '5', 5, '205', '2510', '1190', '280', '3989', '1542', '1706', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', '6.81', '../uploads/ba6f7672b46e08ede8a5183776786cb0.jpg', 1),
(25, 3, 'Elite i ', 'Sportz', '4', '1', '40 ', '19.8', '1197', '82', '114', '1', '5', 5, '170', '2570', '1160', '285', '3985', '1505', '1734', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', '7.37', '../uploads/4a5aadc592921b95b2094f8d9d8ef95a.jpg', 1),
(26, 5, 'Ecosport', 'Titaniuam', '1', '2', '52', '21.7', '1498', '99', '215', '1', '5', 5, '200', '2519', '1302', '352', '3998', '1647', '1765', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '11.03', '../uploads/a9cc841d6d3852c4ac52363ace3437c2.jpeg', 1),
(28, 2, 'Nexon', 'xzo', '1', '2', '52', '21.2', '1498', '120', '280', '1', '6', 5, '208', '2687', '1968', '380', '3995', '1765', '2468', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '12.56', '../uploads/a33e0842bb98a1839fb2f042cd0738b3.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `compid` int(20) NOT NULL,
  `comp_name` varchar(30) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`compid`, `comp_name`, `status`) VALUES
(1, 'Maruti Suzuki', 1),
(2, 'Tata Motors', 1),
(3, 'Hyundai', 1),
(4, 'Honda', 1),
(5, 'Ford', 1),
(6, 'Kia', 1),
(7, 'MG', 1),
(8, 'Toyota', 1),
(9, 'Mahindra', 1),
(10, 'Fiat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dimension`
--

CREATE TABLE `dimension` (
  `dimid` int(20) NOT NULL,
  `carid` int(20) NOT NULL,
  `grnd_clr` varchar(20) NOT NULL,
  `wheelbase` varchar(20) NOT NULL,
  `kb_wgt` varchar(20) NOT NULL,
  `bt_space` varchar(20) NOT NULL,
  `length` varchar(20) NOT NULL,
  `height` varchar(20) NOT NULL,
  `width` varchar(20) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `displacement`
--

CREATE TABLE `displacement` (
  `dispid` int(20) NOT NULL,
  `carid` int(20) NOT NULL,
  `varid` int(20) NOT NULL,
  `displace` varchar(20) NOT NULL,
  `max_pwr` varchar(20) NOT NULL,
  `max_tq` varchar(20) NOT NULL,
  `cylinder` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tb`
--

CREATE TABLE `feedback_tb` (
  `feedback_id` int(11) NOT NULL,
  `loginid` varchar(20) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_tb`
--

INSERT INTO `feedback_tb` (`feedback_id`, `loginid`, `feedback`, `date`) VALUES
(1, 'jomy', 'Helpful', '2019-11-13'),
(2, 'jayan', 'Nice', '2019-11-13'),
(5, 'joyal', 'super', '2020-02-08'),
(6, 'joyal', 'good', '2020-03-02'),
(7, 'joyal', 'good', '2020-04-23'),
(8, 'thomas', 'Very Usefull', '2020-05-03'),
(9, 'thomas', 'good', '2020-05-07'),
(10, 'thomas', 'helpfull', '2020-07-10'),
(11, 'thomas', 'helpfull', '2020-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `fuel`
--

CREATE TABLE `fuel` (
  `fuelid` int(20) NOT NULL,
  `fuel_type` varchar(30) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuel`
--

INSERT INTO `fuel` (`fuelid`, `fuel_type`, `status`) VALUES
(1, 'Petrol', 1),
(2, 'Diesel', 1),
(3, 'CNG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `loginid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`loginid`, `username`, `password`, `usertype`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 1),
(12, 'joyal', '2e2659e3296bd8c0cd601e0022b2ee2b', 0),
(13, 'Kiran', 'cfca875af8f6742c515863628cf0bd35', 0),
(14, 'thomas', 'f640fdc2c16617522f43c94a634d7c3c', 0),
(15, 'joseph', '97c8374861d04dd333852eb18fc28793', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register_tb`
--

CREATE TABLE `register_tb` (
  `userid` int(10) NOT NULL,
  `loginid` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `stateid` int(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `contno` bigint(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_tb`
--

INSERT INTO `register_tb` (`userid`, `loginid`, `name`, `stateid`, `city`, `contno`, `emailid`, `username`, `password`, `status`) VALUES
(1, 13, 'Kiran', 13, 'Kannur', 9495762466, 'kiranthomas19@gmail.com', 'Kiran', 'cfca875af8f6742c515863628cf0bd35', '0'),
(2, 14, 'Thomas', 13, 'Kasaragod', 9400822466, 'thomas12@gmail.com', 'thomas', 'f640fdc2c16617522f43c94a634d7c3c', '0'),
(3, 15, 'Joseph Jacob', 13, 'Alappuzha', 7894563215, 'josephjacob@gmail.com', 'joseph', '97c8374861d04dd333852eb18fc28793', '0');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seatid` int(20) NOT NULL,
  `carid` int(20) NOT NULL,
  `seat` int(20) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `stateid` int(10) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateid`, `state`) VALUES
(1, 'Andhra Pradesh'),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chattisgarh'),
(6, 'Goa'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh'),
(10, 'Jammu & Kashmir'),
(11, 'Jharkhand'),
(12, 'Karnataka'),
(13, 'Kerala'),
(14, 'Madhya Pradesh'),
(15, 'Maharashtra'),
(16, 'Manipur'),
(17, 'Meghalaya'),
(18, 'Mizoram'),
(19, 'Nagaland'),
(20, 'Odisha'),
(21, 'Punjab'),
(22, 'Rajasthan'),
(23, 'Sikkim'),
(24, 'Tamil Nadu'),
(25, 'Telangana'),
(26, 'Tripura'),
(27, 'Uttarakhand'),
(28, 'Uttar Pradesh'),
(29, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `transmission`
--

CREATE TABLE `transmission` (
  `transid` int(20) NOT NULL,
  `transmission` varchar(20) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transmission`
--

INSERT INTO `transmission` (`transid`, `transmission`, `status`) VALUES
(1, 'Manual', 1),
(2, 'Automatic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `typeid` int(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`typeid`, `type`, `status`) VALUES
(1, 'SUV', 1),
(2, 'MUV', 1),
(3, 'CUV', 1),
(4, 'Hatchback', 1),
(5, 'Sedan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `used_car`
--

CREATE TABLE `used_car` (
  `ucar_id` int(20) NOT NULL,
  `compid` varchar(20) NOT NULL,
  `model` varchar(30) NOT NULL,
  `kmdriven` varchar(30) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `Year` int(15) NOT NULL,
  `colour` varchar(20) NOT NULL,
  `owners` int(15) NOT NULL,
  `varient` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `fuel` varchar(20) NOT NULL,
  `milage` varchar(20) NOT NULL,
  `transmission` varchar(20) NOT NULL,
  `seat` int(10) NOT NULL,
  `alloy` varchar(15) NOT NULL,
  `abs` varchar(15) NOT NULL,
  `drive` varchar(15) NOT NULL,
  `price` varchar(15) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `used_car`
--

INSERT INTO `used_car` (`ucar_id`, `compid`, `model`, `kmdriven`, `Location`, `Year`, `colour`, `owners`, `varient`, `type`, `fuel`, `milage`, `transmission`, `seat`, `alloy`, `abs`, `drive`, `price`, `image`, `status`) VALUES
(4, '9', 'Thar', '48956', 'kannur', 2013, 'white', 2, '4x4', '1', '2', '13.4', '1', 7, 'no', 'no', 'yes', '4.95', '../uploads/ffa08939315ac984e67dd87398c26bc3.jpg', 1),
(5, '1', 'Alto', '68745', 'Calicut', 2009, 'Silver', 2, 'Lxi', '4', '1', '20.4', '1', 5, 'yes', 'no', 'no', '1.10 ', '../uploads/41d1f3543f251f92dcb0ef51aa5a06dd.jpg', 0),
(6, '3', 'Eon', '42651', 'Kollam', 2013, 'Blue', 1, 'Magna', '4', '1', '18.7', '1', 5, 'no', 'no', 'no', '2.80', '../uploads/b788327f7d5a7aa9ff8ef6851ef84302.jpg', 1),
(8, '1', 'SX4', '78045', 'Bangalore', 2008, 'Silver', 2, 'ZXI', '5', '1', '15.7', '1', 5, 'yes', 'yes', 'no', '3.10', '../uploads/76ac82a75578a57f068a3ddbc3ed36fe.jpg', 0),
(9, '1', 'Omni', '68521', 'Mangaluru', 2011, 'Silver', 1, 'Standard', '4', '1', '14.6', '1', 5, 'no', 'no', 'no', '1.05', '../uploads/5f7a89111a39a1424c81f0e6b7688391.jpg', 1),
(10, '1', 'Swift', '112546', 'Pune', 2008, 'Brick red', 2, 'VDI', '4', '2', '22.4', '1', 5, 'no', 'no', 'no', '1.40', '../uploads/f6f8f1c1a2c48ea6ef59406b423cd191.jpg', 1),
(11, '1', 'Swift dzire', '97652', 'Trivandrum', 2008, 'Biege', 1, 'VDI', '5', '2', '21.4', '1', 5, 'yes', 'no', 'no', '1.90', '../uploads/feae48e63bf4e4b1872d221cd632dfd6.jpg', 1),
(12, '1', 'Swift', '24321', 'Kochi', 2019, 'White', 1, 'ZDI', '4', '2', '23.5', '2', 5, 'yes', 'yes', 'no', '7.30', '../uploads/848a1c0b1aa10186abfcb1fae97c3f64.jpg', 1),
(13, '4', 'Civic', '121456', 'Bangaluru', 2010, 'Grey', 1, 'VX', '5', '1', '16.8', '1', 5, 'yes', 'yes', 'no', '2.40', '../uploads/bf39cddcd954147dd44a942e6449994b.jpg', 1),
(14, '2', 'Tiago', '36452', 'Calicut', 2018, 'Orange', 1, 'SX', '4', '1', '20.1', '2', 5, 'yes', 'yes', 'no', '4.60', '../uploads/7d9b1e00f8e7f0e1371589888b041da6.jpeg', 1),
(15, '2', 'Hexa', '78652', 'Udupi', 2016, 'Biege', 1, 'SXO', '2', '2', '14.5', '1', 7, 'yes', 'yes', 'yes', '9.60', '../uploads/266ac4fb8069067e2bedc34345441853.jpeg', 1),
(16, '2', 'Nexon', '59863', 'Madurai', 2016, 'Grey', 1, 'SX', '1', '2', '18.5', '1', 5, 'yes', 'yes', 'no', '6.80', '../uploads/0bc7c30c038562f195abbcded76ad603.png', 1),
(17, '3', 'Santro', '98456', 'Alappuzha', 2009, 'Grey', 1, 'GX', '4', '1', '16.6', '1', 5, 'no', 'no', 'no', '1.30', '../uploads/02abb907e72e8d772ce0d430ef313d61.jpg', 1),
(18, '5', 'Ecosport', '78520', 'Kottayam', 2014, 'Silver', 1, 'Titanium', '1', '2', '18.5', '1', 5, 'yes', 'yes', 'yes', '7.20', '../uploads/bb7697cf6513ab4e3cae2c3ff8d55477.jpg', 1),
(19, '8', 'Innova', '248953', 'Bangaluru', 2008, 'Black', 2, 'G', '2', '2', '13.4', '1', 8, 'yes', 'no', 'no', '6.30', '../uploads/caeedc5a11e5beee5a5d27e161fa3738.jpg', 0),
(20, '4', 'City', '145623', 'Malappuram', 2007, 'White', 2, 'VX', '5', '1', '16.8', '1', 5, 'yes', 'no', 'no', '2.90', '../uploads/e5fa7560bb086363ca0b8b46d74f0fc9.jpg', 0),
(21, '9', 'Bolero', '165482', 'Kannur', 2008, 'Brown', 1, 'SLX', '1', '2', '14.5', '1', 7, 'no', 'no', 'yes', '4.50', '../uploads/dbebbd34b929b4c4f5cc69d157509714.jpg', 1),
(22, '9', 'Scorpio', '145623', 'Kochi', 2010, 'White', 2, 'SLX', '1', '2', '12.3', '2', 7, 'yes', 'yes', 'yes', '4.60', '../uploads/a231f9c998fe9bb2684ef4fbace5868e.jpg', 1),
(23, '3', 'I20', '115236', 'Kottayam', 2009, 'White', 1, 'Magna', '4', '1', '16.8', '1', 5, 'yes', 'no', 'no', '3.10', '../uploads/2d2dfae6046b66f9b2d8f16d95b2bc1e.jpg', 1),
(24, '8', 'Innova', '78523', 'Goa', 2014, 'Beige', 1, 'G', '2', '2', '12.3', '1', 7, 'no', 'yes', 'no', '9.10', '../uploads/6c950982d1ee16a7b18a802292de7381.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `varients`
--

CREATE TABLE `varients` (
  `varid` int(20) NOT NULL,
  `carid` int(20) NOT NULL,
  `var_name` varchar(30) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `carbooking`
--
ALTER TABLE `carbooking`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`carid`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`compid`);

--
-- Indexes for table `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`dimid`);

--
-- Indexes for table `displacement`
--
ALTER TABLE `displacement`
  ADD PRIMARY KEY (`dispid`);

--
-- Indexes for table `feedback_tb`
--
ALTER TABLE `feedback_tb`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `fuel`
--
ALTER TABLE `fuel`
  ADD PRIMARY KEY (`fuelid`);

--
-- Indexes for table `login_tb`
--
ALTER TABLE `login_tb`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `register_tb`
--
ALTER TABLE `register_tb`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `transmission`
--
ALTER TABLE `transmission`
  ADD PRIMARY KEY (`transid`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `used_car`
--
ALTER TABLE `used_car`
  ADD PRIMARY KEY (`ucar_id`);

--
-- Indexes for table `varients`
--
ALTER TABLE `varients`
  ADD PRIMARY KEY (`varid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carbooking`
--
ALTER TABLE `carbooking`
  MODIFY `bookid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `car_models`
--
ALTER TABLE `car_models`
  MODIFY `carid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `compid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dimension`
--
ALTER TABLE `dimension`
  MODIFY `dimid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `displacement`
--
ALTER TABLE `displacement`
  MODIFY `dispid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_tb`
--
ALTER TABLE `feedback_tb`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fuel`
--
ALTER TABLE `fuel`
  MODIFY `fuelid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `loginid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `register_tb`
--
ALTER TABLE `register_tb`
  MODIFY `userid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seatid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `stateid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transmission`
--
ALTER TABLE `transmission`
  MODIFY `transid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `typeid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `used_car`
--
ALTER TABLE `used_car`
  MODIFY `ucar_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `varients`
--
ALTER TABLE `varients`
  MODIFY `varid` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
