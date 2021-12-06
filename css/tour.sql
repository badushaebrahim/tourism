-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2021 at 07:11 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutpack`
--

DROP TABLE IF EXISTS `aboutpack`;
CREATE TABLE IF NOT EXISTS `aboutpack` (
  `packid` int(11) NOT NULL,
  `sec1` text NOT NULL,
  `sec2` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutpack`
--

INSERT INTO `aboutpack` (`packid`, `sec1`, `sec2`, `location`) VALUES
(1, 'India, officially the Republic of India, is a country in South Asia. It is the seventh-largest country by area, the second-most populous country, and the most populous democracy in the world.', 'n the early medieval era, Christianity, Islam, Judaism, and Zoroastrianism put down roots on India\'s southern and western coasts.[37] Muslim armies from Central Asia intermittently overran India\'s northern plains,[38] eventually establishing the Delhi Sultanate, and drawing northern India into the cosmopolitan networks of medieval Islam.[39] In the 15th century, the Vijayanagara Empire created a long-lasting composite Hindu culture in south India.[40] In the Punjab, Sikhism emerged, rejecting institutionalised religion.[41] The Mughal Empire, in 1526, ushered in two centuries of relative peace,[42] leaving a legacy of luminous architecture.[h][43] Gradually expanding rule of the British East India Company followed, turning India into a colonial economy, but also consolidating its sovereignty.[44] British Crown rule began in 1858. The rights promised to Indians were granted slowly', 'India'),
(5, 'efffffffffffffffffffffffar', '4raq35yhue', ' America'),
(6, 'tcfvybuni', 'xrdtcfvygbhu', ' england2'),
(7, 'rtyhuji', 'edrftgyhu', '456789'),
(8, 'wertyu', 'aqwdrtyui', '-134567'),
(9, 'erftgyhujk', 'rtyuio', ' paris'),
(10, 'it is a good place to visit', 'have a nice a trip', '34567'),
(12, 'wersdtfgyuhijoklpsredfghjkldfghjklosdfghjkldfghjkl', 'qwertyuiopsdfghjkl;cvbnm,', '875565');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` varchar(32) NOT NULL,
  `password` varchar(12) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`) VALUES
('admin', 'lol');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `contact_no` int(32) NOT NULL,
  `full_name` varchar(12) NOT NULL,
  `message` varchar(34) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opted_packages`
--

DROP TABLE IF EXISTS `opted_packages`;
CREATE TABLE IF NOT EXISTS `opted_packages` (
  `pack_no` int(44) NOT NULL,
  `user_id` int(23) NOT NULL,
  `pack_date` int(12) NOT NULL,
  `payment_id` text NOT NULL,
  `optid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`optid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opted_packages`
--

INSERT INTO `opted_packages` (`pack_no`, `user_id`, `pack_date`, `payment_id`, `optid`) VALUES
(1, 1, 2021, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `pack_no` int(43) NOT NULL AUTO_INCREMENT,
  `cost` int(12) NOT NULL,
  `about` text NOT NULL,
  `location` text NOT NULL,
  PRIMARY KEY (`pack_no`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`pack_no`, `cost`, `about`, `location`) VALUES
(1, 150, 'welcome h  jfbiksabak baks fk   qs gasg \r\n h\r\n s h drsrdhs s rf df j df jfd df jfdj df j dtj tgj  j ', 'india'),
(2, 120000, 'ghhjjjjj', ' chin'),
(3, 9, 'fgyuuu', ' yuuuu'),
(4, 345678, 'fghjjkkkk', ' china'),
(5, -74888889, 'good destiny', ' America'),
(6, 345567, 'xdrctvybunimo', ' england2'),
(7, 456789, 'sedrtfgyuhj', ' europe'),
(8, -134567, 'sdergtfhyjukio', ' china'),
(9, 23456, 'it is a good place', ' paris'),
(10, 34567, 'it is a good place to visit with family.', ' japan'),
(11, 34567, 'it is a good place to visit with family.', ' japan'),
(12, 875565, 'sfdxcghbjnkml', ' delhi');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `mode_of_payment` text NOT NULL,
  `pack_no` int(11) NOT NULL,
  `price` int(32) NOT NULL,
  `transcationid` text NOT NULL,
  `userid` text NOT NULL,
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`mode_of_payment`, `pack_no`, `price`, `transcationid`, `userid`, `tid`) VALUES
('upi', 1, 150, '1', '0', 1),
('upi', 1, 150, '1', '0', 2),
('upi', 1, 150, '1', '0', 3),
('upi', 1, 150, '1', '0', 4),
('upi', 1, 150, 'svasgvasg', '0', 5),
('upi', 1, 150, 'awsedf', '0', 6),
('upi', 1, 150, 'awsedf', '0', 7),
('upi', 1, 150, 'awsedf', '0', 8),
('upi', 1, 150, 'qwe', '1', 9),
('upi', 1, 150, 'badusha', '1', 10),
('upi', 1, 150, 'upid', '1', 11),
('upi', 1, 150, 'upid', '1', 12),
('upi', 1, 150, 'upid', '1', 13),
('upi', 1, 150, 'upid', '1', 14),
('upi', 1, 150, 'upid', '1', 15),
('upi', 1, 150, 'upid', '1', 16),
('upi', 1, 150, 'upid', '1', 17),
('upi', 1, 150, '', '1', 18),
('upi', 1, 150, 'upid', '1', 19),
('upi', 1, 150, 'hello', '1', 20),
('upi', 1, 150, '', '1', 21),
('upi', 1, 150, '', '1', 22),
('upi', 1, 150, '', '1', 23),
('upi', 1, 150, '', '1', 24),
('upi', 1, 150, '', '1', 25),
('upi', 1, 150, '', '1', 26),
('upi', 1, 150, '', '1', 27),
('upi', 1, 150, '', '1', 28),
('upi', 1, 150, 'hai', '1', 29),
('upi', 1, 150, 'oo', '1', 30),
('upi', 1, 150, '', '1', 31),
('upi', 1, 150, '', '1', 32),
('upi', 1, 150, '', '1', 33),
('upi', 1, 150, '', '1', 34),
('upi', 1, 150, '', '1', 35),
('upi', 1, 150, '', '1', 36),
('upi', 1, 150, 'ttttttt', '1', 37),
('upi', 1, 150, '', '1', 38),
('upi', 1, 150, '', '1', 39),
('upi', 1, 150, '', '1', 40),
('upi', 1, 150, 'nmm', '1', 41),
('upi', 1, 150, 'kkoo', '1', 42),
('upi', 1, 150, 'upid', '1', 43),
('upi', 1, 150, 'asdfg', '1', 44),
('upi', 1, 150, '', '1', 45),
('upi', 1, 150, '', '1', 46),
('upi', 1, 150, '', '1', 47),
('upi', 1, 150, '', '1', 48),
('upi', 1, 150, '', '1', 49),
('upi', 1, 150, '', '1', 50),
('upi', 1, 150, '', '1', 51),
('upi', 1, 150, '', '1', 52),
('upi', 1, 150, '', '1', 53),
('upi', 1, 150, '', '1', 54),
('upi', 1, 150, '', '1', 55),
('upi', 1, 150, '', '1', 56),
('upi', 1, 150, '', '1', 57),
('upi', 1, 150, 'nm', '1', 58),
('upi', 1, 150, '', '1', 59),
('upi', 1, 150, '', '1', 60),
('upi', 1, 150, '', '1', 61),
('upi', 1, 150, '', '1', 62),
('upi', 1, 150, '', '1', 63),
('upi', 1, 150, '', '1', 64),
('upi', 1, 150, '', '1', 65),
('upi', 1, 150, '', '1', 66),
('upi', 1, 150, '', '1', 67),
('upi', 1, 150, '', '1', 68),
('upi', 1, 150, '', '1', 69),
('upi', 1, 150, '', '1', 70),
('upi', 1, 150, '', '1', 71),
('upi', 1, 150, '', '1', 72),
('upi', 1, 150, '', '1', 73),
('upi', 1, 150, '', '1', 74),
('upi', 1, 150, '', '1', 75),
('upi', 1, 150, 'upid', '1', 76),
('upi', 1, 150, '', '1', 77),
('upi', 1, 150, '', '1', 78),
('upi', 1, 150, '', '1', 79),
('upi', 1, 150, '', '1', 80),
('upi', 1, 150, '', '1', 81),
('upi', 1, 150, '', '1', 82),
('upi', 1, 150, '', '1', 83),
('upi', 1, 150, '', '1', 84),
('upi', 1, 150, '', '1', 85),
('upi', 1, 150, '', '1', 86),
('upi', 1, 150, '', '1', 87),
('upi', 1, 150, 'fd', '1', 88),
('upi', 1, 150, '', '1', 89),
('upi', 1, 150, '', '1', 90),
('upi', 1, 150, '', '1', 91),
('upi', 1, 150, '', '1', 92),
('upi', 1, 150, '', '1', 93),
('upi', 1, 150, '', '1', 94),
('upi', 1, 150, '', '1', 95),
('upi', 1, 150, '', '1', 96),
('upi', 1, 150, '', '1', 97),
('upi', 1, 150, '', '1', 98),
('upi', 1, 150, '', '1', 99),
('upi', 1, 150, '', '1', 100),
('upi', 1, 150, '', '1', 101),
('upi', 1, 150, '', '1', 102),
('upi', 1, 150, '90', '1', 103),
('upi', 1, 150, '99999', '1', 104),
('upi', 1, 150, '99999', '1', 105),
('upi', 1, 150, 'jjjjjjjj', '1', 106),
('upi', 1, 150, '', '1', 107),
('upi', 1, 150, '', '1', 108),
('upi', 1, 150, 'hjjjj', '1', 109),
('upi', 1, 150, '', '1', 110),
('upi', 1, 150, '', '1', 111),
('upi', 1, 150, '', '1', 112),
('upi', 1, 150, 'mmm', '1', 113),
('upi', 1, 150, 'llllllllll', '1', 114),
('upi', 1, 150, '', '1', 115),
('upi', 2, 6678, 'vhhjhj', '1', 116),
('upi', 2, 6678, '', '1', 117),
('upi', 2, 6678, '', '1', 118),
('upi', 2, 6678, 'hello', '1', 119),
('upi', 2, 6678, '', '1', 120),
('upi', 2, 6678, '', '1', 121),
('upi', 2, 6678, '', '1', 122),
('upi', 1, 150, 'upid', '1', 123),
('upi', 1, 150, '', '1', 124),
('upi', 1, 150, '', '1', 125),
('upi', 1, 150, '', '1', 126),
('upi', 1, 150, '', '1', 127),
('upi', 1, 150, '', '1', 128),
('upi', 1, 150, '', '1', 129),
('upi', 1, 150, '', '1', 130),
('upi', 1, 150, '', '1', 131),
('upi', 1, 150, '', '1', 132),
('upi', 1, 150, '', '1', 133),
('upi', 1, 150, 'jhgfddss', '1', 134),
('upi', 1, 150, '', '1', 135),
('upi', 1, 150, '', '1', 136),
('upi', 1, 150, 'hello', '1', 137),
('upi', 1, 150, 'hello', '1', 138),
('upi', 1, 150, 'upid', '1', 139),
('upi', 1, 150, '', '1', 140),
('upi', 1, 150, '', '1', 141),
('upi', 1, 150, 'hjj', '1', 142),
('upi', 1, 150, 'hello', '1', 143),
('upi', 1, 150, 'hello', '1', 144),
('upi', 1, 150, 'upid', '1', 145),
('upi', 1, 150, '', '1', 146),
('upi', 1, 150, '', '1', 147),
('upi', 1, 150, '', '1', 148),
('upi', 1, 150, '', '1', 149),
('upi', 1, 150, '', '1', 150),
('upi', 2, 6678, '', '1', 151),
('upi', 2, 6678, 'upid', '1', 152),
('upi', 2, 6678, 'upid', '1', 153),
('upi', 6, 345567, 'upid', '1', 154),
('upi', 5, -74888889, 'hello', '1', 155),
('upi', 5, -74888889, '', '1', 156),
('upi', 6, 345567, 'upid', '1', 157),
('upi', 6, 345567, '', '1', 158),
('upi', 2, 6678, '', '1', 159),
('upi', 2, 6678, '', '1', 160),
('upi', 2, 6678, 'rtyhuj', '1', 161),
('upi', 2, 6678, 'rtyhuj', '1', 162),
('upi', 2, 6678, '', '1', 163),
('upi', 2, 6678, '', '1', 164),
('upi', 2, 6678, '', '1', 165),
('upi', 2, 6678, 'dfgyuik', '1', 166),
('upi', 2, 6678, '', '1', 167),
('upi', 1, 150, 'upid', '1', 168),
('upi', 2, 6678, 'fghjk', '1', 169),
('upi', 9, 23456, 'rtyui', '1', 170),
('upi', 2, 6678, '', '1', 171),
('upi', 7, 456789, 'upid', '1', 172),
('upi', 2, 6678, '', '1', 173),
('upi', 2, 6678, '', '1', 174),
('upi', 5, -74888889, '', '1', 175),
('upi', 2, 6678, '', '1', 176),
('upi', 4, 345678, '', '1', 177),
('upi', 3, -1, '', '1', 178),
('upi', 2, 120000, '', '1', 179),
('upi', 2, 120000, 'upid', '1', 180),
('upi', 2, 120000, '', '1', 181),
('upi', 1, 150, 'upid', '1', 182),
('upi', 1, 150, 'hghghgh', '1', 183),
('upi', 1, 150, 'hghghgh', '1', 184);

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

DROP TABLE IF EXISTS `userregistration`;
CREATE TABLE IF NOT EXISTS `userregistration` (
  `Name` text NOT NULL,
  `Gender` text NOT NULL,
  `DOB` date NOT NULL,
  `Email` text NOT NULL,
  `pwd` text NOT NULL,
  `Address` text NOT NULL,
  `City` text NOT NULL,
  `Country` text NOT NULL,
  `Ph_no` int(10) NOT NULL,
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`Name`, `Gender`, `DOB`, `Email`, `pwd`, `Address`, `City`, `Country`, `Ph_no`, `uid`) VALUES
('bad', 'male', '2021-10-01', 'bad', 'badu', 'ljsgbkabgk;jsbkjsbkj kjxbkjxkjv xknv ', 'lauva', 'india', 12345678, 1),
(' ba', 'male', '2021-10-20', 'aa', 'qwe', 'jsdfkjbnslblkbn', 'aluva', 'india', 12346578, 2),
(' nn', 'male', '2021-09-29', 'cc', 'dd', 'hjjk', 'india', 'india', 556678888, 3),
(' hj', 'male', '2021-09-28', 'mm', 'nn', 'fghhjj', 'hujj', 'india', 97766, 4),
(' ghjj', 'male', '2021-09-27', 'aa', 'bb', 'ttyyy', 'hh', 'india', 788544, 5),
(' gh', 'male', '2021-09-27', 'bb', 'cc', 'ghjuiik', 'gyhjh', 'india', 6787889, 6),
(' njjjj', 'male', '2021-09-28', 'll', 'oo', 'jjjkkkkk', 'jjjjj', 'india', 99999999, 7),
(' dfgggh', 'male', '2021-09-29', 'gg', 'hh', 'fdghhjjjkk', 'dfghyhjjj', 'india', 345678, 8),
(' hj', 'male', '2021-09-28', 'bad', 'badu', 'fghj', 'gh', 'india', 56789, 9),
(' hjh', 'male', '2000-02-20', 'abc', 'abc', 'fdygzsg', 'indiana', 'india', 98789789, 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
