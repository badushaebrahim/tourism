-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2022 at 08:52 AM
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
(1, 'France22 (French: [f???s] Listen), officially the French Republic (French: Rï¿½publique franï¿½aise),[1] is a transcontinental country spanning Western Europe and overseas regions and territories in South America and the Atlantic, Pacific and Indian Oceans.[XIII] Including all of its territories, France has twelve time zones, the most of any country. Its metropolitan area extends from the Rhine to the Atlantic Ocean and from the Mediterranean Sea to the English Channel and the North Sea; overseas territories include French Guiana in South America, Saint Pierre and Miquelon in th', 'Inhabited22 since the Palaeolithic era, the territory of Metropolitan France was settled by Celtic tribes known as Gauls during the Iron Age. Rome annexed the area in 51 BC, leading to a distinct Gallo-Roman culture that laid the foundation of the French language. The Germanic Franks arrived in 476 and formed the Kingdom of Francia, which became the heartland of the Carolingian Empire. The Treaty of Verdun of 843 partitioned the empire, with West Francia becoming the Kingdom of France in 987.', 'america'),
(2, 'loranfoafno  fisug ijpd bvijad g[iuszbi[jsa baksbpkijb f svvihzspviu basipyg bspjkh vbasjiuk vk[js bkjz b ', 'ojk sbnfviubas[ojg nasujg bnakj[s nvkjd bd sbk[jd sniojb badsjk bnzldj bljd nbjl djlb  nzskj nbkj;ds bkj;zxkjv ajkls bbv;kaskjdg al;js gjkas nk askj gbakljs bgkjas bg kj bakjb bzskujb sb ', ' lagoss'),
(3, 'this location', 'remuru', '1500'),
(5, 'wertyuiokjhgb', 'wsertfgyuhi', '456788');

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
('Admin', 'lol');

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

DROP TABLE IF EXISTS `feed`;
CREATE TABLE IF NOT EXISTS `feed` (
  `name` text NOT NULL,
  `id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`name`, `id`, `feedback`, `fid`) VALUES
('bad', 1, 'qwqw', 1),
('bad', 1, '1qweqs', 2),
('bad', 1, 'notb good', 3),
(' bini', 6, 'not bad', 4),
('bad', 1, 'expensive', 5),
(' achu', 8, 'not bad', 6),
('bad', 1, 'so gooddddd', 7),
(' var', 13, 'so good', 8);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opted_packages`
--

INSERT INTO `opted_packages` (`pack_no`, `user_id`, `pack_date`, `payment_id`, `optid`) VALUES
(1, 1, 2021, 'thijbikbkjkbjdhhdd', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`pack_no`, `cost`, `about`, `location`) VALUES
(1, 4500, 'France, in Western Europe, encompasses medieval cities, alpine villages and Mediterranean beaches. Paris, its capital, is famed for its fashion houses, classical art museums including the Louvre and monuments like the Eiffel Tower.', 'america'),
(2, 5000, 'Lagos, Nigeriaï¿½s largest city, sprawls inland from the Gulf of Guinea across Lagos Lagoon. Victoria Island, the financial center of the metropolis, is known for its beach resorts, boutiques and nightlife.', ' lagoss'),
(3, 1500, 'South Korea, an East Asian nation on the southern half of the Korean Peninsula, shares one of the world’s most heavily militarized borders with North Korea. It’s equally known for its green, hilly', ' korea'),
(4, 12345, 'it is a good place to visit with family.', ' england'),
(5, 456788, 'it is a good place to visit with family.', ' japan');

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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`mode_of_payment`, `pack_no`, `price`, `transcationid`, `userid`, `tid`) VALUES
('upi', 1, 4500, 'thijbikbkjkbjdhhdd', '1', 1),
('upi', 1, 4500, 'upid', '1', 2),
('upi', 1, 4500, 'upid', '1', 3),
('upi', 3, 1500, '', '1', 4),
('upi', 4, 12345, '', '1', 5),
('upi', 4, 12345, 'hjj', '1', 6),
('upi', 1, 4500, '', '1', 7),
('upi', 2, 5000, 'asdf', '1', 8),
('upi', 2, 5000, '', '1', 9),
('upi', 2, 5000, '', '1', 10),
('upi', 4, 12345, 'makes', '5', 11),
('upi', 4, 12345, 'oktrans', '5', 12),
('upi', 4, 12345, 'adils', '5', 13),
('upi', 4, 12345, 'adils', '5', 14),
('upi', 4, 12345, 'make', '5', 15),
('upi', 4, 12345, '', '5', 16),
('upi', 4, 12345, '', '5', 17),
('upi', 4, 12345, '', '5', 18),
('upi', 4, 12345, '', '5', 19),
('upi', 4, 12345, '', '5', 20),
('upi', 4, 12345, '', '5', 21),
('upi', 4, 12345, '', '5', 22),
('upi', 4, 12345, 'marko', '5', 23),
('upi', 4, 12345, '', '5', 24),
('upi', 4, 12345, '', '5', 25),
('upi', 4, 12345, '', '5', 26),
('upi', 4, 12345, '', '5', 27),
('upi', 4, 12345, '', '5', 28),
('upi', 4, 12345, '', '5', 29),
('upi', 4, 12345, 'dfghj', '5', 30),
('upi', 4, 12345, '', '5', 31),
('upi', 4, 12345, '', '5', 32),
('upi', 4, 12345, '', '5', 33),
('upi', 4, 12345, '', '5', 34),
('upi', 4, 12345, '', '5', 35),
('upi', 4, 12345, 'erty', '5', 36),
('upi', 4, 12345, 'make', '5', 37),
('upi', 4, 12345, '', '5', 38),
('upi', 4, 12345, '', '5', 39),
('upi', 4, 12345, '', '5', 40),
('upi', 4, 12345, '', '5', 41),
('upi', 4, 12345, '', '5', 42),
('upi', 4, 12345, '', '5', 43),
('upi', 4, 12345, '', '5', 44),
('upi', 4, 12345, '', '5', 45),
('upi', 4, 12345, '', '5', 46),
('upi', 4, 12345, '', '5', 47),
('upi', 4, 12345, '', '5', 48);

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`Name`, `Gender`, `DOB`, `Email`, `pwd`, `Address`, `City`, `Country`, `Ph_no`, `uid`) VALUES
('bad', 'male', '2021-10-01', 'bad', 'badu', 'ljsgbkabgk;jsbkjsbkj kjxbkjxkjv xknv ', 'lauva', 'india', 12345678, 1),
(' ba', 'male', '2021-10-20', 'aa', 'qwe', 'jsdfkjbnslblkbn', 'aluva', 'india', 12346578, 2),
(' n', 'male', '2021-10-21', 'n', 'n', 'n', 'n', 'india', 4511, 3),
(' n', 'male', '2021-10-21', 'n', '', 'n', 'n', 'india', 4511, 4),
(' ammu', 'male', '2021-12-09', 'ammu123@gmail.com', 'Nibiya@123', 'asdfghjkl', 'asdfghj', 'india', 12345678, 5),
(' bini', 'male', '2021-12-15', 'bini123@gmail.com', 'Bini@123', 'wertyui', 'rtyu', 'india', 12345678, 6),
(' bini', 'male', '2021-12-15', 'bini123@gmail.com', 'Bini@123', 'wertyui', 'rtyu', 'india', 12345678, 7),
(' achu', 'male', '2021-11-29', 'nibiya@gmail.com', 'nibiya@123', 'fghj', 'ertyu', 'india', 123456, 8),
(' rt', 'male', '2021-12-02', 'nibiya@gmail.com', 'nibiya@123', 'rtyuity', 'ftyu', 'india', 345678, 9),
(' ty', 'male', '2021-12-01', 'nibiya@gmail.com', 'nibiya@123', 'qawertyhuj', 'werty', 'india', 12345678, 10),
(' qwerty', 'male', '2021-12-02', 'nibiya@gmail.com', 'nibiya@123', 'rtyu', 'rtyu', 'india', 34567, 11),
(' reena', 'male', '2022-02-03', 'reena123@gmail.com', 'reena@123', 'fghjkl', 'rghjk', 'india', 567, 12),
(' var', 'male', '2022-02-03', 'var123@gmail.com', 'Nibiya@123', 'dfrghjkl', 'fghjk', 'india', 3456789, 13);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
