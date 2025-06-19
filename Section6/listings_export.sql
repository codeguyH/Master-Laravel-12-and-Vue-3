-- Adminer 5.3.0 MariaDB 10.8.3-MariaDB-1:10.8.3+maria~jammy dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `listings`;
CREATE TABLE `listings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `beds` bigint(20) unsigned NOT NULL,
  `bath` bigint(20) unsigned NOT NULL,
  `area` bigint(20) unsigned NOT NULL,
  `city` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_nr` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `listings` (`id`, `created_at`, `updated_at`, `beds`, `bath`, `area`, `city`, `code`, `street`, `street_nr`, `price`) VALUES
(3,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	1,	3,	353,	'Malvinaburgh',	'76242',	'Jameson Field',	'6130',	875272),
(4,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	1,	2,	331,	'Elinorburgh',	'47730-8392',	'McDermott Inlet',	'41623',	465689),
(5,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	3,	3,	134,	'Estellemouth',	'99462-3362',	'Breanne Lodge',	'916',	845180),
(6,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	3,	2,	57,	'Lake Schuylerside',	'73473-2202',	'Shields Station',	'50771',	620560),
(7,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	2,	3,	381,	'New Raina',	'28319-0413',	'Stokes Ports',	'751',	463012),
(8,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	2,	3,	217,	'West Justiceborough',	'71182-2289',	'Kunde Key',	'77484',	796730),
(9,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	2,	2,	461,	'Sawayntown',	'62728-5976',	'Dooley Locks',	'499',	711198),
(10,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	1,	3,	149,	'Lake Maureen',	'58978-7430',	'Matilda Stream',	'1429',	427538),
(11,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	2,	2,	161,	'West Cordelia',	'28015-6923',	'Romaine Squares',	'2525',	269258),
(12,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	4,	3,	50,	'Lake Lontown',	'75602',	'Will Island',	'87393',	522307),
(13,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	1,	3,	206,	'East Lorine',	'70112',	'Jakubowski Meadow',	'500',	794556),
(14,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	2,	2,	439,	'South Reyes',	'92662',	'Ritchie Oval',	'893',	592305),
(15,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	2,	2,	216,	'Mosciskitown',	'16131',	'Keshawn Lodge',	'37761',	734647),
(16,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	1,	1,	78,	'New Kingfort',	'49137-6111',	'Romaguera Shore',	'216',	946414),
(17,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	4,	2,	424,	'Mayamouth',	'26085',	'Joana Spurs',	'518',	134161),
(18,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	5,	3,	450,	'West Shane',	'47267-3191',	'Sheridan Centers',	'8412',	531383),
(19,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	5,	1,	105,	'Jonesfurt',	'64418',	'Koby Skyway',	'31814',	532094),
(20,	'2025-06-10 06:43:36',	'2025-06-10 06:43:36',	3,	3,	440,	'Klingville',	'08846-8981',	'Stephania Crescent',	'863',	788529);

-- 2025-06-19 08:39:12 UTC
