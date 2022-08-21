-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Serverversion:                8.0.28 - MySQL Community Server - GPL
-- Server-OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumpar struktur för tabell acore_auth.updates
CREATE TABLE IF NOT EXISTS `updates` (
  `name` varchar(200) NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','CUSTOM','MODULE','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='List of all applied updates in this database.';

-- Dumpar data för tabell acore_auth.updates: 31 rows
DELETE FROM `updates`;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` (`name`, `hash`, `state`, `timestamp`, `speed`) VALUES
	('2021_01_25_00.sql', '5FA7F802E04CBF66848938FE7FC14FC4CC815F3C', 'ARCHIVED', '2021-10-14 21:59:32', 51),
	('2021_03_21_00.sql', '1E98E516DAD70DC101E339950C1BCC1D15BE78B6', 'ARCHIVED', '2021-10-14 21:59:32', 102),
	('2021_03_23_00.sql', '0EA578B7108559B4E54CAE99714F695659EDE6E5', 'ARCHIVED', '2021-10-14 21:59:32', 77),
	('2021_05_13_00.sql', 'B9CABD6897489B20D6523AEDC61AD9075BCA398A', 'ARCHIVED', '2021-10-14 21:59:32', 104),
	('2021_05_26_00.sql', '435822D9482BA2C5F0D8E54E3A587611A453B0FA', 'ARCHIVED', '2021-10-14 21:59:32', 71),
	('2021_05_30_00.sql', 'E70A61123CBE2DC8AF332D03DF1889EB0DF3CEAB', 'ARCHIVED', '2021-10-14 21:59:32', 64),
	('2021_06_17_00.sql', '36686970C025046FD49FA4BF6F8283A1AE2BE8F3', 'ARCHIVED', '2021-10-14 21:59:33', 52),
	('2016_08_25_01.sql', 'A5A2BE04C8E8E85CD177B8684DFFEACF71C9CF69', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2016_07_09_00.sql', 'B692C4D5E96D26616E1E655D99DD27F6AC4FFDA6', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2019_04_13_00.sql', '183C28E079DAB46AD6F7C0617E19346CAD043141', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2016_09_04_00.sql', '420ACF7160BF5549BC298EB6A1319969789DA140', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2017_08_19_00.sql', 'E4457FFFFC0D3F86750F07CF88F549529E1B27E5', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2016_08_25_00.sql', '707016C338350676C814D7926DFB6081E57091C3', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2016_07_09_01.sql', 'DE551E4708FE31AAC60CEF69466BBC5DFAC46F79', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2016_07_10_00.sql', '0AE2F7FB1E9C1E2BC2870D0EB817F3C87E0A39B3', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2016_11_18_00.sql', '92D22B3A45466470239402367D94C3791A243EF7', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2016_11_19_00.sql', 'C55E73648F661F40237B03F266F7169D231B3D8D', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2017_08_20_01.sql', 'E6190311E1A12E259C6CD21ACFC8BAA1D3F597DF', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2017_12_05_00.sql', '475860B881DE6E9CAC93AD3B37E7AAA8D63FB1B9', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2018_01_21_00.sql', '570FC5FC653D81B0E498E3EAB6706C9868CE8079', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2018_09_17_00.sql', '31743E771FFA4C92D6B6CF747DE4302814BDF257', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2019_01_05_00.sql', '2449121ABB0D5004BF6941B340F5C294AD95EBE9', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2019_02_08_00.sql', '18FF48FC1B1C238D44198FA1E2D422BAB4C9C338', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2019_02_17_00.sql', '1F4C4A15313A261088E40909DCCAA068EAAAAAAE', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2020_02_07_00.sql', '9549BF7354B4FA5A661EC094A2C3AAF665678152', 'ARCHIVED', '2021-10-14 04:13:44', 1),
	('2021_10_14_00.sql', 'D4378AFC454DF8351A6DE6C6B6144F82C62980A5', 'ARCHIVED', '2021-10-14 21:59:33', 53),
	('2021_10_14_01_auth.sql', 'A4495131ADD2AB4AB6682C1621683963247368F0', 'ARCHIVED', '2022-01-21 23:36:20', 20),
	('2021_11_06_00.sql', 'E08D11C492289879C460BB063457DAD968545752', 'ARCHIVED', '2022-01-21 23:36:20', 39),
	('2022_01_23_00.sql', '6291006CD2B38EEE02EDDD8AEB6A952477854C77', 'ARCHIVED', '2022-04-24 15:19:14', 28),
	('2022_04_24_00.sql', 'CFB8D5B896B2A5900F5E5A2262B356E0842405BB', 'ARCHIVED', '2022-08-21 09:56:35', 34),
	('2022_04_28_00.sql', '26108CBD35D4B885A90CEC25665DCBC00FD06809', 'ARCHIVED', '2022-08-21 09:56:35', 30);
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
