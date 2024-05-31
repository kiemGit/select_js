-- --------------------------------------------------------
-- Host:                         192.168.0.19
-- Server version:               5.5.68-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for sapdash
CREATE DATABASE IF NOT EXISTS `sapdash` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `sapdash`;


-- Dumping structure for table sapdash.location
CREATE TABLE IF NOT EXISTS `location` (
  `locId` int(11) NOT NULL,
  `locParentId` int(11) NOT NULL DEFAULT '0',
  `SpvID` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(40) NOT NULL DEFAULT '',
  `Address1` varchar(50) NOT NULL DEFAULT '',
  `Address2` varchar(50) NOT NULL DEFAULT '',
  `ContactName` varchar(45) NOT NULL DEFAULT '',
  `Telephone` varchar(45) NOT NULL DEFAULT '',
  `Handphone` varchar(45) NOT NULL DEFAULT '',
  `Email` varchar(45) NOT NULL DEFAULT '',
  `posmasuk` int(11) NOT NULL COMMENT 'Jumlah pos masuk',
  `poskeluar` int(11) NOT NULL COMMENT 'Jumlah pos keluar',
  `ProbTicket` int(225) NOT NULL DEFAULT '0' COMMENT 'Jumlah tiket masalah',
  `karyawan` int(20) NOT NULL,
  `sistem` varchar(50) NOT NULL,
  `keterangan` varchar(40) NOT NULL,
  `StaffCount` int(11) NOT NULL DEFAULT '0',
  `Status` tinyint(4) NOT NULL DEFAULT '0',
  `UserID` int(11) NOT NULL DEFAULT '0',
  `LOvCount` int(11) NOT NULL DEFAULT '0',
  `LInCount` int(11) NOT NULL DEFAULT '0',
  `LTrsCount` int(11) NOT NULL DEFAULT '0',
  `LTrsValue` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Last TRS',
  `LUPTrs` datetime DEFAULT NULL COMMENT 'Last Update TRS',
  `YTrsValue` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Pendapatan tahun berjalan',
  `LYTrsValue` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Pendapatan tahun lalu',
  `PYTrsValue` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Target pendapatan tahun berjalan',
  `YOutValue` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Pengeluaran tahun berjalan',
  `LYOutValue` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Pengeluaran tahun lalu',
  `PYOutValue` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT 'Target pengeluaran tahun berjalan',
  `YLocCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Jumlah lokasi tahun berjalan',
  `LYLocCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Jumlah lokasi tahun lalu',
  `PYLocCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Target jumlah lokasi tahun berjalan',
  PRIMARY KEY (`locId`),
  UNIQUE KEY `ID_UNIQUE` (`locId`),
  UNIQUE KEY `Name` (`Name`),
  KEY `HeadID` (`locParentId`),
  KEY `SpvID` (`SpvID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sapdash.location: ~13 rows (approximately)
DELETE FROM `location`;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`locId`, `locParentId`, `SpvID`, `Name`, `Address1`, `Address2`, `ContactName`, `Telephone`, `Handphone`, `Email`, `posmasuk`, `poskeluar`, `ProbTicket`, `karyawan`, `sistem`, `keterangan`, `StaffCount`, `Status`, `UserID`, `LOvCount`, `LInCount`, `LTrsCount`, `LTrsValue`, `LUPTrs`, `YTrsValue`, `LYTrsValue`, `PYTrsValue`, `YOutValue`, `LYOutValue`, `PYOutValue`, `YLocCount`, `LYLocCount`, `PYLocCount`) VALUES
	(0, 14, 0, 'scbd@gmail.com', '', '', '', '', '', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(10, 0, 1, 'SPI', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(14, 0, 1, 'ASIA PARKING', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', 'ASIA PARKING', 0, 0, 0, 0, 0, 0, 0.00, NULL, 20000000.00, 30000000.00, 50000000.00, 5000000.00, 6000000.00, 6000000.00, 2, 1, 2),
	(15, 14, 1, 'ASIA PARKING 1', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0.00, NULL, 20000000.00, 19000000.00, 21000000.00, 5000000.00, 9000000.00, 8000000.00, 2, 1, 4),
	(16, 14, 10001, 'ASIA PARKING 2', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0.00, '2024-01-11 00:00:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(17, 14, 10002, 'ASIA PARKING 3', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0.00, '2024-01-11 00:00:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(18, 14, 10003, 'ASIA PARKING 4', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', 'test', 0, 0, 0, 0, 0, 0, 0.00, '2024-01-11 00:00:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(19, 14, 10004, 'ASIA PARKING 5', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', 'Buana Parking', 0, 0, 0, 0, 0, 0, 0.00, '2024-01-11 00:00:05', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(234, 10, 1, 'SPI3', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', 'Universitas Tarumanegara', 0, 0, 0, 0, 0, 0, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(304, 10, 1, 'SPI1', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(305, 14, 0, 'Borobudur', '', '', '', '', '', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(577, 10, 0, 'SPI4', '', '', '', '', '', '', 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, 0, 0),
	(579, 10, 1, 'SPI2', '-', '-', '-', '-', '-', '-', 0, 0, 0, 0, '', 'Demo (Lokasi punya Nusapala)', 0, 0, 0, 0, 0, 0, 0.00, NULL, 80000000.00, 90000000.00, 100000000.00, 14000000.00, 14000000.00, 16000000.00, 60, 50, 80);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
