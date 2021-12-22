-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 03:29 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

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

CREATE TABLE `aboutpack` (
  `packid` int(11) NOT NULL,
  `sec1` text NOT NULL,
  `sec2` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutpack`
--

INSERT INTO `aboutpack` (`packid`, `sec1`, `sec2`, `location`) VALUES
(1, 'France22 (French: [fʁɑ̃s] Listen), officially the French Republic (French: République française),[1] is a transcontinental country spanning Western Europe and overseas regions and territories in South America and the Atlantic, Pacific and Indian Oceans.[XIII] Including all of its territories, France has twelve time zones, the most of any country. Its metropolitan area extends from the Rhine to the Atlantic Ocean and from the Mediterranean Sea to the English Channel and the North Sea; overseas territories include French Guiana in South America, Saint Pierre and Miquelon in th', 'Inhabited22 since the Palaeolithic era, the territory of Metropolitan France was settled by Celtic tribes known as Gauls during the Iron Age. Rome annexed the area in 51 BC, leading to a distinct Gallo-Roman culture that laid the foundation of the French language. The Germanic Franks arrived in 476 and formed the Kingdom of Francia, which became the heartland of the Carolingian Empire. The Treaty of Verdun of 843 partitioned the empire, with West Francia becoming the Kingdom of France in 987.', 'francer'),
(2, 'loranfoafno  fisug ijpd bvijad g[iuszbi[jsa baksbpkijb f svvihzspviu basipyg bspjkh vbasjiuk vk[js bkjz b ', 'ojk sbnfviubas[ojg nasujg bnakj[s nvkjd bd sbk[jd sniojb badsjk bnzldj bljd nbjl djlb  nzskj nbkj;ds bkj;zxkjv ajkls bbv;kaskjdg al;js gjkas nk askj gbakljs bgkjas bg kj bakjb bzskujb sb ', ' lagos'),
(3, 'this location', 'remuru', '1500');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(32) NOT NULL,
  `password` varchar(12) NOT NULL
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

CREATE TABLE `feed` (
  `name` text NOT NULL,
  `id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `fid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`name`, `id`, `feedback`, `fid`) VALUES
('bad', 1, 'qwqw', 1),
('bad', 1, '1qweqs', 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `contact_no` int(32) NOT NULL,
  `full_name` varchar(12) NOT NULL,
  `message` varchar(34) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opted_packages`
--

CREATE TABLE `opted_packages` (
  `pack_no` int(44) NOT NULL,
  `user_id` int(23) NOT NULL,
  `pack_date` int(12) NOT NULL,
  `payment_id` text NOT NULL,
  `optid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opted_packages`
--

INSERT INTO `opted_packages` (`pack_no`, `user_id`, `pack_date`, `payment_id`, `optid`) VALUES
(1, 1, 2021, 'thijbikbkjkbjdhhdd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `pack_no` int(43) NOT NULL,
  `cost` int(12) NOT NULL,
  `about` text NOT NULL,
  `location` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`pack_no`, `cost`, `about`, `location`) VALUES
(1, 4500, 'France, in Western Europe, encompasses medieval cities, alpine villages and Mediterranean beaches. Paris, its capital, is famed for its fashion houses, classical art museums including the Louvre and monuments like the Eiffel Tower.', 'francer'),
(2, 5000, 'Lagos, Nigeria’s largest city, sprawls inland from the Gulf of Guinea across Lagos Lagoon. Victoria Island, the financial center of the metropolis, is known for its beach resorts, boutiques and nightlife.', ' lagos'),
(3, 1500, 'South Korea, an East Asian nation on the southern half of the Korean Peninsula, shares one of the world’s most heavily militarized borders with North Korea. It’s equally known for its green, hilly', ' korea');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `mode_of_payment` text NOT NULL,
  `pack_no` int(11) NOT NULL,
  `price` int(32) NOT NULL,
  `transcationid` text NOT NULL,
  `userid` text NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`mode_of_payment`, `pack_no`, `price`, `transcationid`, `userid`, `tid`) VALUES
('upi', 1, 4500, 'thijbikbkjkbjdhhdd', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `Name` text NOT NULL,
  `Gender` text NOT NULL,
  `DOB` date NOT NULL,
  `Email` text NOT NULL,
  `pwd` text NOT NULL,
  `Address` text NOT NULL,
  `City` text NOT NULL,
  `Country` text NOT NULL,
  `Ph_no` int(10) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`Name`, `Gender`, `DOB`, `Email`, `pwd`, `Address`, `City`, `Country`, `Ph_no`, `uid`) VALUES
('bad', 'male', '2021-10-01', 'bad', 'badu', 'ljsgbkabgk;jsbkjsbkj kjxbkjxkjv xknv ', 'lauva', 'india', 12345678, 1),
(' ba', 'male', '2021-10-20', 'aa', 'qwe', 'jsdfkjbnslblkbn', 'aluva', 'india', 12346578, 2),
(' n', 'male', '2021-10-21', 'n', 'n', 'n', 'n', 'india', 4511, 3),
(' n', 'male', '2021-10-21', 'n', '', 'n', 'n', 'india', 4511, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `opted_packages`
--
ALTER TABLE `opted_packages`
  ADD PRIMARY KEY (`optid`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`pack_no`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `opted_packages`
--
ALTER TABLE `opted_packages`
  MODIFY `optid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `pack_no` int(43) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
