-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2019 at 04:35 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PROPERTY`
--

-- --------------------------------------------------------

--
-- Table structure for table `AGENCY`
--

CREATE TABLE `AGENCY` (
  `agencylicense` varchar(8) NOT NULL,
  `agencyname` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AGENCY`
--

INSERT INTO `AGENCY` (`agencylicense`, `agencyname`, `website`, `phone`) VALUES
('NSW09281', 'Ray White', 'www.nswraywhite.com', '0400001023'),
('NSW19280', 'Real Estate', 'www.nswrealestate.com', '0454323465'),
('NSW19284', 'Australian Property', 'www.auproperty.com', '0402020234'),
('QLD12736', 'Ray Black', 'www.rayblack.com', '0422220304'),
('QLD19283', 'Trusted Real Estate', 'www.trustedrealestate.com', '0492847652'),
('QLD81726', 'Ray White', 'www.raywhite.com', '0429439182'),
('SA026358', 'Australian Real Estate', 'www.auRE.com', '0410100003'),
('SA987637', 'McGrath', 'www.mcgrath.com', '0420203467');

-- --------------------------------------------------------

--
-- Table structure for table `AGENT`
--

CREATE TABLE `AGENT` (
  `agentlicense` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) NOT NULL,
  `agency` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AGENT`
--

INSERT INTO `AGENT` (`agentlicense`, `name`, `email`, `mobile`, `agency`) VALUES
('s09173', 'Joe', 'Joe@gmail.com', '0428185958', 'QLD12736'),
('s18294', 'Tony', 'Tony@gmail.com', '0419294019', 'QLD19283'),
('s19381', 'Nora', 'Nora@gmail.com', '0492810958', 'QLD81726'),
('s23891', 'Bob', '', '0427185960', 'SA026358'),
('s38401', 'Bill', 'Bill@gmail.com', '0492710501', 'NSW19284'),
('s43281', 'Poh Ling', 'Poh_Ling@gmail.com', '0491827501', 'QLD19283'),
('s73628', 'James', 'James@gmail.com', '0485819820', 'SA987637'),
('s81739', 'Jack', 'Jack@gmail.com', '0428198495', 'NSW09281'),
('s81909', 'Ben', 'Ben@gmail.comn', '0482184051', 'NSW19280');

-- --------------------------------------------------------

--
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `agency` varchar(8) NOT NULL,
  `brsuburb` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BRANCH`
--

INSERT INTO `BRANCH` (`agency`, `brsuburb`, `email`, `phone`) VALUES
('NSW09281', 'Camperdown', 'NSW09281@gmail.com', '0444555098'),
('NSW19280', 'Camperdown', 'NSW19280@gmail.com', '0413000980'),
('NSW19284', 'St. Lucia', 'NSW19284@gmail.com', '0421908789'),
('QLD12736', 'Annandale', 'QLD19283@gmail.com', '0429109381'),
('QLD12736', 'Camperdown', 'QLD12736@gmail.com', '0453000912'),
('QLD19283', 'Annandale', 'QLD19283@gmail.com', '0429109401'),
('QLD19283', 'Camperdown', 'QLD19283@gmail.com', '0413987235'),
('QLD19283', 'South Brisbane', 'QLD19283@gmail.com', '0490917167'),
('QLD19283', 'Sunnybank', 'QLD19283@gmail.com', '0405921874'),
('QLD19283', 'Woollongabba', 'QLD19283@gmail.com', '0421098109'),
('QLD81726', 'Annandale', 'QLD81726@gmail.com', '0424980234'),
('SA026358', 'Camperdown', 'SA026358@gmail.com', '0409009087'),
('SA987637', 'Carindale', 'SA987637@gmail.com', '0411010256');

-- --------------------------------------------------------

--
-- Table structure for table `LISTING`
--

CREATE TABLE `LISTING` (
  `pid` varchar(6) NOT NULL,
  `agent` varchar(6) NOT NULL,
  `datelisted` date NOT NULL,
  `dateclose` date DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LISTING`
--

INSERT INTO `LISTING` (`pid`, `agent`, `datelisted`, `dateclose`, `type`, `price`) VALUES
('000001', 's43281', '2015-03-03', '2015-04-05', 'sell', 41000),
('150191', 's81909', '2016-12-09', '2016-12-10', 'rent', 29000),
('182710', 's81739', '2016-04-18', '2018-11-30', 'sell', 42000),
('192817', 's09173', '2018-12-09', '2018-12-25', 'rent', 82000),
('271649', 's43281', '2013-04-09', '2013-04-10', 'sell', 82000),
('273648', 's18294', '2015-04-01', '2015-04-05', 'sell', 6000),
('281712', 's43281', '2016-11-11', '2016-11-30', 'sell', 34000),
('292741', 's81739', '2017-09-03', '2018-09-09', 'sell', 61000),
('738174', 's81909', '2014-01-01', '2014-01-02', 'rent', 14000),
('746321', 's18294', '2010-09-01', '2010-10-02', 'rent', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `PROPERTY`
--

CREATE TABLE `PROPERTY` (
  `pid` varchar(6) NOT NULL,
  `stno` int(3) NOT NULL,
  `stname` varchar(20) NOT NULL,
  `sttype` varchar(20) NOT NULL,
  `suburb` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `postcode` int(4) NOT NULL,
  `carspaces` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROPERTY`
--

INSERT INTO `PROPERTY` (`pid`, `stno`, `stname`, `sttype`, `suburb`, `state`, `postcode`, `carspaces`) VALUES
('000001', 41, 'Pyrmont Bridge', 'Road', 'Annandale', 'QLD', 4067, 13),
('000002', 2, 'Parramatta', 'Road', 'Annandale', 'QLD', 4067, 5),
('000003', 48, 'Pyrmont Bridge', 'Road', 'Annandale', 'QLD', 7291, 1),
('019284', 9, 'Raven', 'Avenue', 'South Brisbane', 'SA', 1090, 5),
('092831', 12, 'Parramatta', 'Crescent', 'Paddington', 'SA', 8373, 7),
('123756', 84, 'Twelfth', 'Avenue', 'Woollongabba', 'NSW', 9462, 4),
('150191', 14, 'Parramatta', 'Avenue', 'Paddington', 'QLD', 8174, 14),
('181751', 13, 'Mitre', 'Road', 'Camperdown', 'QLD', 1451, 4),
('182710', 2, 'Pyrmont Bridge', 'Road', 'Camperdown', 'NSW', 7461, 4),
('192051', 2, 'Parramatta', 'Road', 'Annandale', 'NSW', 1059, 5),
('192817', 77, 'Pyrmont Bridge', 'Road', 'Camperdown', 'QLD', 1918, 5),
('194812', 41, 'Parramatta', 'Court', 'Annandale', 'SA', 8194, 1),
('271649', 4, 'Pyrmont Bridge', 'Road', 'Camperdown', 'SA', 5967, 7),
('273648', 41, 'Depper', 'Avenue', 'Kangaroo Point', 'SA', 1771, 1),
('273654', 3, 'Sisley', 'Crescent', 'Paddington', 'SA', 8371, 6),
('281712', 74, 'Parramatta', 'Road', 'Camperdown', 'QLD', 8127, 1),
('285091', 31, 'Parramatta', 'Road', 'Annandale', 'NSW', 1059, 12),
('292741', 32, 'Parramatta', 'Road', 'Camperdown', 'SA', 3938, 6),
('410581', 4, 'Brisbane', 'Road', 'Camperdown', 'QLD', 1885, 1),
('619581', 3, 'Parramatta', 'Road', 'Paddington', 'SA', 9184, 5),
('654192', 72, 'Durham', 'Road', 'Annandale', 'QLD', 8482, 6),
('717501', 8, 'Durham', 'Avenue', 'Camperdown', 'QLD', 4919, 1),
('719501', 42, 'Parramatta', 'Court', 'Annandale', 'SA', 8194, 15),
('726361', 22, 'Parramatta', 'Road', 'West End', 'NSW', 6234, 3),
('738174', 13, 'Parramatta', 'Avenue', 'Paddington', 'QLD', 8147, 8),
('746321', 62, 'Parramatta', 'Road', 'Paddington', 'SA', 8375, 2),
('765428', 18, 'Pyrmont Bridge', 'Road', 'West End', 'NSW', 5231, 3),
('817194', 22, 'Mitre', 'Road', 'Camperdown', 'QLD', 8194, 5),
('827311', 22, 'Parramatta', 'Road', 'Annandale', 'QLD', 8482, 3),
('928174', 3, 'Parramatta', 'Road', 'Annandale', 'QLD', 8482, 15),
('981765', 11, 'Parramatta', 'Road', 'Paddington', 'SA', 8374, 18);

-- --------------------------------------------------------

--
-- Table structure for table `SHAREDLISTING`
--

CREATE TABLE `SHAREDLISTING` (
  `unitno` int(2) NOT NULL,
  `pid` varchar(6) NOT NULL,
  `agent` varchar(6) NOT NULL,
  `sdatelisted` date NOT NULL,
  `dateclose` date DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SHAREDLISTING`
--

INSERT INTO `SHAREDLISTING` (`unitno`, `pid`, `agent`, `sdatelisted`, `dateclose`, `type`, `price`) VALUES
(1, '000002', 's18294', '2014-04-18', '2014-04-19', 'sell', 70000),
(1, '181751', 's43281', '2017-10-09', '2018-10-07', 'rent', 15000),
(3, '000003', 's19381', '2013-05-29', '2013-06-01', 'sell', 40000),
(4, '928174', 's09173', '2014-02-19', '2015-01-09', 'sell', 90000),
(5, '827311', 's81909', '2015-03-02', '2016-03-21', 'sell', 55000),
(5, '981765', 's43281', '2016-08-16', '2018-09-09', 'rent', 53000),
(6, '123756', 's23891', '2017-02-22', '2017-02-22', 'sell', 42000),
(8, '273654', 's43281', '2016-04-10', '2016-04-15', 'sell', 256000),
(9, '019284', 's38401', '2015-06-25', '2015-06-27', 'sell', 82000),
(13, '285091', 's18294', '2016-12-19', '2016-12-20', 'rent', 45000),
(13, '410581', 's43281', '2018-10-06', '2018-10-10', 'rent', 23000),
(13, '654192', 's43281', '2016-09-11', '2016-10-10', 'sell', 30000),
(13, '817194', 's43281', '2017-10-09', '1018-10-09', 'rent', 41000),
(14, '092831', 's43281', '2015-05-18', '2015-07-19', 'sell', 51000),
(14, '719501', 's18294', '2016-10-04', '2016-10-05', 'rent', 14000),
(15, '726361', 's73628', '2019-01-01', '2019-01-18', 'sell', 180000),
(16, '619581', 's43281', '2017-10-09', NULL, 'rent', 12000),
(21, '194812', 's18294', '2014-10-04', '2014-10-05', 'rent', 10000),
(21, '765428', 's81739', '2018-02-20', '2018-03-01', 'sell', 81000),
(22, '192051', 's18294', '2014-12-19', '2014-10-05', 'rent', 30000),
(31, '717501', 's43281', '2017-10-09', '2018-10-08', 'rent', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `SHAREDPROPERTY`
--

CREATE TABLE `SHAREDPROPERTY` (
  `unitno` int(2) NOT NULL,
  `pid` varchar(6) NOT NULL,
  `proptype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SHAREDPROPERTY`
--

INSERT INTO `SHAREDPROPERTY` (`unitno`, `pid`, `proptype`) VALUES
(1, '000002', 'uint'),
(1, '181751', 'unit'),
(3, '000003', 'apartment'),
(4, '928174', 'townhouse'),
(5, '827311', 'townhouse'),
(5, '981765', 'apartment'),
(6, '123756', 'apartment'),
(8, '273654', 'apartment'),
(9, '019284', 'townhouse'),
(13, '285091', 'townhouse'),
(13, '410581', 'townhouse'),
(13, '654192', 'townhouse'),
(13, '817194', 'townhouse'),
(14, '092831', 'unit'),
(14, '719501', 'unit'),
(15, '726361', 'apartment'),
(16, '619581', 'apartment'),
(21, '194812', 'unit'),
(21, '765428', 'apartment'),
(22, '192051', 'townhouse'),
(31, '717501', 'unit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AGENCY`
--
ALTER TABLE `AGENCY`
  ADD PRIMARY KEY (`agencylicense`),
  ADD KEY `agencylicense` (`agencylicense`);

--
-- Indexes for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD PRIMARY KEY (`agentlicense`),
  ADD KEY `agency` (`agency`);

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`agency`,`brsuburb`),
  ADD KEY `agency` (`agency`);

--
-- Indexes for table `LISTING`
--
ALTER TABLE `LISTING`
  ADD PRIMARY KEY (`pid`,`agent`,`datelisted`),
  ADD KEY `pid` (`pid`),
  ADD KEY `agent` (`agent`);

--
-- Indexes for table `PROPERTY`
--
ALTER TABLE `PROPERTY`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `SHAREDLISTING`
--
ALTER TABLE `SHAREDLISTING`
  ADD PRIMARY KEY (`unitno`,`pid`,`agent`,`sdatelisted`),
  ADD KEY `unitno` (`unitno`,`pid`),
  ADD KEY `agent` (`agent`);

--
-- Indexes for table `SHAREDPROPERTY`
--
ALTER TABLE `SHAREDPROPERTY`
  ADD PRIMARY KEY (`unitno`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AGENT`
--
ALTER TABLE `AGENT`
  ADD CONSTRAINT `AGENT_agency` FOREIGN KEY (`agency`) REFERENCES `AGENCY` (`agencylicense`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD CONSTRAINT `BRANCH_agency` FOREIGN KEY (`agency`) REFERENCES `AGENCY` (`agencylicense`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `LISTING`
--
ALTER TABLE `LISTING`
  ADD CONSTRAINT `LISTING_agent` FOREIGN KEY (`agent`) REFERENCES `AGENT` (`agentlicense`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `LISTING_pid` FOREIGN KEY (`pid`) REFERENCES `PROPERTY` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SHAREDLISTING`
--
ALTER TABLE `SHAREDLISTING`
  ADD CONSTRAINT `SHAREDLISTING_agent` FOREIGN KEY (`agent`) REFERENCES `AGENT` (`agentlicense`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SHAREDLISTING_pid_unitno` FOREIGN KEY (`unitno`,`pid`) REFERENCES `SHAREDPROPERTY` (`unitno`, `pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SHAREDPROPERTY`
--
ALTER TABLE `SHAREDPROPERTY`
  ADD CONSTRAINT `SHAREDPROPERTY_pid` FOREIGN KEY (`pid`) REFERENCES `PROPERTY` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
