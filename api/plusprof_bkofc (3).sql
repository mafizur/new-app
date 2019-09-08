-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2017 at 06:57 AM
-- Server version: 10.0.32-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `okbitcoin_bkofc`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `code`, `name`, `flag`) VALUES
(1, 'AF', 'Afghanistan', NULL),
(2, 'AL', 'Albania', NULL),
(3, 'DZ', 'Algeria', NULL),
(4, 'AS', 'American Samoa', NULL),
(5, 'AD', 'Andorra', NULL),
(6, 'AO', 'Angola', NULL),
(7, 'AI', 'Anguilla', NULL),
(8, 'AQ', 'Antarctica', NULL),
(9, 'AG', 'Antigua and Barbuda', NULL),
(10, 'AR', 'Argentina', NULL),
(11, 'AM', 'Armenia', NULL),
(12, 'AW', 'Aruba', NULL),
(13, 'AU', 'Australia', NULL),
(14, 'AT', 'Austria', NULL),
(15, 'AZ', 'Azerbaijan', NULL),
(16, 'BS', 'Bahamas', NULL),
(17, 'BH', 'Bahrain', NULL),
(18, 'BD', 'Bangladesh', NULL),
(19, 'BB', 'Barbados', NULL),
(20, 'BY', 'Belarus', NULL),
(21, 'BE', 'Belgium', NULL),
(22, 'BZ', 'Belize', NULL),
(23, 'BJ', 'Benin', NULL),
(24, 'BM', 'Bermuda', NULL),
(25, 'BT', 'Bhutan', NULL),
(26, 'BO', 'Bolivia', NULL),
(27, 'BA', 'Bosnia and Herzegovina', NULL),
(28, 'BW', 'Botswana', NULL),
(29, 'BV', 'Bouvet Island', NULL),
(30, 'BR', 'Brazil', NULL),
(31, 'IO', 'British Indian Ocean Territory', NULL),
(32, 'BN', 'Brunei Darussalam', NULL),
(33, 'BG', 'Bulgaria', NULL),
(34, 'BF', 'Burkina Faso', NULL),
(35, 'BI', 'Burundi', NULL),
(36, 'KH', 'Cambodia', NULL),
(37, 'CM', 'Cameroon', NULL),
(38, 'CA', 'Canada', NULL),
(39, 'CV', 'Cape Verde', NULL),
(40, 'KY', 'Cayman Islands', NULL),
(41, 'CF', 'Central African Republic', NULL),
(42, 'TD', 'Chad', NULL),
(43, 'CL', 'Chile', NULL),
(44, 'CN', 'China', NULL),
(45, 'CX', 'Christmas Island', NULL),
(46, 'CC', 'Cocos (Keeling) Islands', NULL),
(47, 'CO', 'Colombia', NULL),
(48, 'KM', 'Comoros', NULL),
(49, 'CG', 'Congo', NULL),
(50, 'CK', 'Cook Islands', NULL),
(51, 'CR', 'Costa Rica', NULL),
(52, 'HR', 'Croatia (Hrvatska)', NULL),
(53, 'CU', 'Cuba', NULL),
(54, 'CY', 'Cyprus', NULL),
(55, 'CZ', 'Czech Republic', NULL),
(56, 'DK', 'Denmark', NULL),
(57, 'DJ', 'Djibouti', NULL),
(58, 'DM', 'Dominica', NULL),
(59, 'DO', 'Dominican Republic', NULL),
(60, 'TP', 'East Timor', NULL),
(61, 'EC', 'Ecuador', NULL),
(62, 'EG', 'Egypt', NULL),
(63, 'SV', 'El Salvador', NULL),
(64, 'GQ', 'Equatorial Guinea', NULL),
(65, 'ER', 'Eritrea', NULL),
(66, 'EE', 'Estonia', NULL),
(67, 'ET', 'Ethiopia', NULL),
(68, 'FK', 'Falkland Islands (Malvinas)', NULL),
(69, 'FO', 'Faroe Islands', NULL),
(70, 'FJ', 'Fiji', NULL),
(71, 'FI', 'Finland', NULL),
(72, 'FR', 'France', NULL),
(73, 'FX', 'France, Metropolitan', NULL),
(74, 'GF', 'French Guiana', NULL),
(75, 'PF', 'French Polynesia', NULL),
(76, 'TF', 'French Southern Territories', NULL),
(77, 'GA', 'Gabon', NULL),
(78, 'GM', 'Gambia', NULL),
(79, 'GE', 'Georgia', NULL),
(80, 'DE', 'Germany', NULL),
(81, 'GH', 'Ghana', NULL),
(82, 'GI', 'Gibraltar', NULL),
(83, 'GK', 'Guernsey', NULL),
(84, 'GR', 'Greece', NULL),
(85, 'GL', 'Greenland', NULL),
(86, 'GD', 'Grenada', NULL),
(87, 'GP', 'Guadeloupe', NULL),
(88, 'GU', 'Guam', NULL),
(89, 'GT', 'Guatemala', NULL),
(90, 'GN', 'Guinea', NULL),
(91, 'GW', 'Guinea-Bissau', NULL),
(92, 'GY', 'Guyana', NULL),
(93, 'HT', 'Haiti', NULL),
(94, 'HM', 'Heard and Mc Donald Islands', NULL),
(95, 'HN', 'Honduras', NULL),
(96, 'HK', 'Hong Kong', NULL),
(97, 'HU', 'Hungary', NULL),
(98, 'IS', 'Iceland', NULL),
(99, 'IN', 'India', NULL),
(100, 'IM', 'Isle of Man', NULL),
(101, 'ID', 'Indonesia', NULL),
(102, 'IR', 'Iran (Islamic Republic of)', NULL),
(103, 'IQ', 'Iraq', NULL),
(104, 'IE', 'Ireland', NULL),
(105, 'IL', 'Israel', NULL),
(106, 'IT', 'Italy', NULL),
(107, 'CI', 'Ivory Coast', NULL),
(108, 'JE', 'Jersey', NULL),
(109, 'JM', 'Jamaica', NULL),
(110, 'JP', 'Japan', NULL),
(111, 'JO', 'Jordan', NULL),
(112, 'KZ', 'Kazakhstan', NULL),
(113, 'KE', 'Kenya', NULL),
(114, 'KI', 'Kiribati', NULL),
(115, 'KP', 'Korea, Democratic People\'s Republic of', NULL),
(116, 'KR', 'Korea, Republic of', NULL),
(117, 'XK', 'Kosovo', NULL),
(118, 'KW', 'Kuwait', NULL),
(119, 'KG', 'Kyrgyzstan', NULL),
(120, 'LA', 'Lao People\'s Democratic Republic', NULL),
(121, 'LV', 'Latvia', NULL),
(122, 'LB', 'Lebanon', NULL),
(123, 'LS', 'Lesotho', NULL),
(124, 'LR', 'Liberia', NULL),
(125, 'LY', 'Libyan Arab Jamahiriya', NULL),
(126, 'LI', 'Liechtenstein', NULL),
(127, 'LT', 'Lithuania', NULL),
(128, 'LU', 'Luxembourg', NULL),
(129, 'MO', 'Macau', NULL),
(130, 'MK', 'Macedonia', NULL),
(131, 'MG', 'Madagascar', NULL),
(132, 'MW', 'Malawi', NULL),
(133, 'MY', 'Malaysia', NULL),
(134, 'MV', 'Maldives', NULL),
(135, 'ML', 'Mali', NULL),
(136, 'MT', 'Malta', NULL),
(137, 'MH', 'Marshall Islands', NULL),
(138, 'MQ', 'Martinique', NULL),
(139, 'MR', 'Mauritania', NULL),
(140, 'MU', 'Mauritius', NULL),
(141, 'TY', 'Mayotte', NULL),
(142, 'MX', 'Mexico', NULL),
(143, 'FM', 'Micronesia, Federated States of', NULL),
(144, 'MD', 'Moldova, Republic of', NULL),
(145, 'MC', 'Monaco', NULL),
(146, 'MN', 'Mongolia', NULL),
(147, 'ME', 'Montenegro', NULL),
(148, 'MS', 'Montserrat', NULL),
(149, 'MA', 'Morocco', NULL),
(150, 'MZ', 'Mozambique', NULL),
(151, 'MM', 'Myanmar', NULL),
(152, 'NA', 'Namibia', NULL),
(153, 'NR', 'Nauru', NULL),
(154, 'NP', 'Nepal', NULL),
(155, 'NL', 'Netherlands', NULL),
(156, 'AN', 'Netherlands Antilles', NULL),
(157, 'NC', 'New Caledonia', NULL),
(158, 'NZ', 'New Zealand', NULL),
(159, 'NI', 'Nicaragua', NULL),
(160, 'NE', 'Niger', NULL),
(161, 'NG', 'Nigeria', NULL),
(162, 'NU', 'Niue', NULL),
(163, 'NF', 'Norfolk Island', NULL),
(164, 'MP', 'Northern Mariana Islands', NULL),
(165, 'NO', 'Norway', NULL),
(166, 'OM', 'Oman', NULL),
(167, 'PK', 'Pakistan', NULL),
(168, 'PW', 'Palau', NULL),
(169, 'PS', 'Palestine', NULL),
(170, 'PA', 'Panama', NULL),
(171, 'PG', 'Papua New Guinea', NULL),
(172, 'PY', 'Paraguay', NULL),
(173, 'PE', 'Peru', NULL),
(174, 'PH', 'Philippines', NULL),
(175, 'PN', 'Pitcairn', NULL),
(176, 'PL', 'Poland', NULL),
(177, 'PT', 'Portugal', NULL),
(178, 'PR', 'Puerto Rico', NULL),
(179, 'QA', 'Qatar', NULL),
(180, 'RE', 'Reunion', NULL),
(181, 'RO', 'Romania', NULL),
(182, 'RU', 'Russian Federation', NULL),
(183, 'RW', 'Rwanda', NULL),
(184, 'KN', 'Saint Kitts and Nevis', NULL),
(185, 'LC', 'Saint Lucia', NULL),
(186, 'VC', 'Saint Vincent and the Grenadines', NULL),
(187, 'WS', 'Samoa', NULL),
(188, 'SM', 'San Marino', NULL),
(189, 'ST', 'Sao Tome and Principe', NULL),
(190, 'SA', 'Saudi Arabia', NULL),
(191, 'SN', 'Senegal', NULL),
(192, 'RS', 'Serbia', NULL),
(193, 'SC', 'Seychelles', NULL),
(194, 'SL', 'Sierra Leone', NULL),
(195, 'SG', 'Singapore', NULL),
(196, 'SK', 'Slovakia', NULL),
(197, 'SI', 'Slovenia', NULL),
(198, 'SB', 'Solomon Islands', NULL),
(199, 'SO', 'Somalia', NULL),
(200, 'ZA', 'South Africa', NULL),
(201, 'GS', 'South Georgia South Sandwich Islands', NULL),
(202, 'ES', 'Spain', NULL),
(203, 'LK', 'Sri Lanka', NULL),
(204, 'SH', 'St. Helena', NULL),
(205, 'PM', 'St. Pierre and Miquelon', NULL),
(206, 'SD', 'Sudan', NULL),
(207, 'SR', 'Suriname', NULL),
(208, 'SJ', 'Svalbard and Jan Mayen Islands', NULL),
(209, 'SZ', 'Swaziland', NULL),
(210, 'SE', 'Sweden', NULL),
(211, 'CH', 'Switzerland', NULL),
(212, 'SY', 'Syrian Arab Republic', NULL),
(213, 'TW', 'Taiwan', NULL),
(214, 'TJ', 'Tajikistan', NULL),
(215, 'TZ', 'Tanzania, United Republic of', NULL),
(216, 'TH', 'Thailand', NULL),
(217, 'TG', 'Togo', NULL),
(218, 'TK', 'Tokelau', NULL),
(219, 'TO', 'Tonga', NULL),
(220, 'TT', 'Trinidad and Tobago', NULL),
(221, 'TN', 'Tunisia', NULL),
(222, 'TR', 'Turkey', NULL),
(223, 'TM', 'Turkmenistan', NULL),
(224, 'TC', 'Turks and Caicos Islands', NULL),
(225, 'TV', 'Tuvalu', NULL),
(226, 'UG', 'Uganda', NULL),
(227, 'UA', 'Ukraine', NULL),
(228, 'AE', 'United Arab Emirates', NULL),
(229, 'GB', 'United Kingdom', NULL),
(230, 'US', 'United States', NULL),
(231, 'UM', 'United States minor outlying islands', NULL),
(232, 'UY', 'Uruguay', NULL),
(233, 'UZ', 'Uzbekistan', NULL),
(234, 'VU', 'Vanuatu', NULL),
(235, 'VA', 'Vatican City State', NULL),
(236, 'VE', 'Venezuela', NULL),
(237, 'VN', 'Vietnam', NULL),
(238, 'VG', 'Virgin Islands (British)', NULL),
(239, 'VI', 'Virgin Islands (U.S.)', NULL),
(240, 'WF', 'Wallis and Futuna Islands', NULL),
(241, 'EH', 'Western Sahara', NULL),
(242, 'YE', 'Yemen', NULL),
(243, 'YU', 'Yugoslavia', NULL),
(244, 'ZR', 'Zaire', NULL),
(245, 'ZM', 'Zambia', NULL),
(246, 'ZW', 'Zimbabwe', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT '0.00000000',
  `amountUSD` double(20,8) NOT NULL DEFAULT '0.00000000',
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL,
  `statusnew` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `crypto_payments`
--

INSERT INTO `crypto_payments` (`paymentID`, `boxID`, `boxType`, `orderID`, `userID`, `countryID`, `coinLabel`, `amount`, `amountUSD`, `unrecognised`, `addr`, `txID`, `txDate`, `txConfirmed`, `txCheckDate`, `processed`, `processedDate`, `recordCreated`, `statusnew`) VALUES
(11, 12555, 'paymentbox', '170719101036-1', '309', 'BGD', 'BTC', 0.08465921, 200.00000000, 0, '12E4QzA4sbw8dMHMUbYd5A5rFZPmfivbm9', '856cc450d1ee6fdef3a14fea213ad31c09e5b2c289be24afa0db715c8b6bcd58', '2017-07-19 10:11:12', 1, '2017-07-19 11:07:04', 0, NULL, '2017-07-19 10:11:13', 0),
(12, 12555, 'paymentbox', '170719093352-1', '309', 'BGD', 'BTC', 0.08481710, 200.00000000, 0, '12E4QzA4sbw8dMHMUbYd5A5rFZPmfivbm9', 'b0088d6b8da415f5f69dc9618eb8e51d7f44633472982f9023124cc20667dbcc', '2017-07-19 09:36:22', 1, '2017-07-19 10:49:07', 0, NULL, '2017-07-19 10:49:07', 0),
(13, 12555, 'paymentbox', '170720005536-1', '313', 'KOR', 'BTC', 0.08768812, 200.00000000, 0, '12E4QzA4sbw8dMHMUbYd5A5rFZPmfivbm9', '5e8566c3c8d066414f3cdd29b5ac34ae5618dbc3f1e3e1d5ae6aa200ff5bb82b', '2017-07-20 00:56:37', 1, '2017-07-20 01:42:06', 0, NULL, '2017-07-20 00:56:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `deposit_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `account` varchar(255) NOT NULL,
  `btc_value` double(20,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`deposit_id`, `user_id`, `amount`, `currency`, `status`, `date`, `added_on`, `added_by`, `method`, `account`, `btc_value`) VALUES
(9, 309, 200, 'BTC', 1, '2017-07-19 10:11:12', NULL, NULL, 2, '856cc450d1ee6fdef3a14fea213ad31c09e5b2c289be24afa0db715c8b6bcd58', 0.08465921),
(10, 309, 200, 'BTC', 1, '2017-07-19 09:36:22', NULL, NULL, 2, 'b0088d6b8da415f5f69dc9618eb8e51d7f44633472982f9023124cc20667dbcc', 0.08481710),
(11, 313, 200, 'BTC', 1, '2017-07-20 00:56:37', NULL, NULL, 2, '5e8566c3c8d066414f3cdd29b5ac34ae5618dbc3f1e3e1d5ae6aa200ff5bb82b', 0.08768812);

-- --------------------------------------------------------

--
-- Table structure for table `fund_request`
--

CREATE TABLE `fund_request` (
  `fund_request_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `method` int(1) DEFAULT NULL COMMENT '1=BC, 2=PM',
  `pm_ac_no` varchar(250) DEFAULT NULL,
  `bc_address` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gift_code`
--

CREATE TABLE `gift_code` (
  `gift_code_id` int(11) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `topped_up` int(11) DEFAULT NULL,
  `topped_status` int(11) DEFAULT NULL,
  `topped_on` datetime DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `expired` int(11) NOT NULL DEFAULT '0',
  `total_amount` double NOT NULL,
  `total_amount_with_bonus` double NOT NULL,
  `ttl_pay` int(100) NOT NULL DEFAULT '0',
  `help_children` double NOT NULL DEFAULT '0',
  `help_back` double NOT NULL DEFAULT '0',
  `total_help_back` double NOT NULL DEFAULT '0',
  `inv_typ` int(5) NOT NULL DEFAULT '1',
  `bill_dt` datetime NOT NULL,
  `daycount` int(100) NOT NULL DEFAULT '365',
  `pay_status` int(2) NOT NULL DEFAULT '1',
  `trxnid` varchar(200) NOT NULL,
  `invoice_no` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gift_code`
--

INSERT INTO `gift_code` (`gift_code_id`, `amount`, `code`, `plan_id`, `user_id`, `date`, `status`, `added_by`, `topped_up`, `topped_status`, `topped_on`, `payment_method`, `expired`, `total_amount`, `total_amount_with_bonus`, `ttl_pay`, `help_children`, `help_back`, `total_help_back`, `inv_typ`, `bill_dt`, `daycount`, `pay_status`, `trxnid`, `invoice_no`) VALUES
(211, NULL, '2230920170719120509', 1, 309, '2018-07-19 12:05:09', 2, 309, 1, 1, '2017-07-19 12:05:09', 2, 0, 200, 730, 0, 0, 0, 0, 1, '2017-08-18 12:05:09', 365, 1, 'b0088d6b8da415f5f69dc9618eb8e51d7f44633472982f9023124cc20667dbcc', '170719093352-1'),
(212, NULL, '731320170720005658', 1, 313, '2018-07-20 00:56:58', 2, 313, 1, 1, '2017-07-20 00:56:58', 2, 0, 200, 730, 0, 0, 0, 0, 1, '2017-08-19 00:56:58', 365, 1, '5e8566c3c8d066414f3cdd29b5ac34ae5618dbc3f1e3e1d5ae6aa200ff5bb82b', '170720005536-1'),
(210, NULL, '8430920170719101142', 1, 309, '2018-07-19 10:11:42', 2, 309, 1, 1, '2017-07-19 10:11:42', 2, 0, 200, 730, 0, 0, 0, 0, 1, '2017-08-18 10:11:42', 365, 1, '856cc450d1ee6fdef3a14fea213ad31c09e5b2c289be24afa0db715c8b6bcd58', '170719101036-1');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `plan_id` bigint(20) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `plan_typ` int(100) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`plan_id`, `plan_name`, `amount`, `currency`, `plan_typ`, `description`, `img`) VALUES
(1, 'BASIC', '1000', 'USD', 1, 'Passive income daily 0.70 to 1.2% ,Referal income 5% 1st Level,3% 2nd level,1% 3rd level', '1000.jpg'),
(2, 'PROMOTER', '3000', 'USD', 1, '', '3000.jpg'),
(3, 'STAR', '9000', 'USD', 1, '', '9000.jpg'),
(10, 'EXECUTIVE', '30000', 'USD', 1, '', '30000.jpg'),
(11, 'GOLD', '45000', 'USD', 1, '', '45000.jpg'),
(12, 'PREMIUM', '60000', 'USD', 1, '', '60000.jpg'),
(13, 'MASTER', '85000', 'USD', 1, '', '85000.jpg'),
(14, 'PLATINUM', '120000', 'USD', 1, '', '120000.jpg'),
(15, '1 BTC', '1', 'BTC', 2, 'Passive income daily 0.70 to 1.2% ,Referal income 5% 1st Level,3% 2nd level,1% 3rd level', '1.jpg'),
(16, '3 BTC', '3', 'BTC', 2, '', '3.jpg'),
(17, '5 BTC', '5', 'BTC', 2, '', '5.jpg'),
(18, '10 BTC', '10', 'BTC', 2, '', '10.jpg'),
(19, '25 BTC', '25', 'BTC', 2, '', '25.jpg'),
(20, '50 BTC', '50', 'BTC', 2, '', '50.jpg'),
(21, '75 BTC', '75', 'BTC', 2, '', '75.jpg'),
(22, '100 BTC', '100', 'BTC', 2, '', '100.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `pm_ac_no` varchar(250) DEFAULT NULL,
  `bc_address` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `added_on` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `pm_ac_no`, `bc_address`, `status`, `added_on`, `added_by`, `updated_by`, `updated_on`) VALUES
(1, '1DNT1FvgU3bAF5aVt2rqDrffMQzxGK3Njf', '1DNT1FvgU3bAF5aVt2rqDrffMQzxGK3Njf', 1, '2016-08-09 09:23:00', 1, 1, '2017-02-19 02:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `transaction_type` varchar(100) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL COMMENT '1=BC, 2=PM',
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `gift_code` varchar(255) DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `gift_code_id` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `inv_typ` int(3) NOT NULL DEFAULT '0',
  `btc_value` double(20,8) NOT NULL DEFAULT '0.00000000',
  `net_fee` double(20,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `transaction_type`, `receiver`, `sender`, `amount`, `currency`, `status`, `date`, `added_on`, `added_by`, `gift_code`, `payment_method`, `gift_code_id`, `level`, `inv_typ`, `btc_value`, `net_fee`) VALUES
(669, 308, '2', 308, 309, '10', NULL, 1, '2017-07-19 10:11:44', NULL, NULL, '8430920170719101142', 2, 0, NULL, 0, 0.00420170, 0.00043700),
(670, 307, '2', 307, 308, '6', NULL, 1, '2017-07-19 10:11:45', NULL, NULL, '8430920170719101142', 2, 0, NULL, 0, 0.00254601, 0.00030500),
(671, 306, '2', 306, 307, '2', NULL, 1, '2017-07-19 10:11:46', NULL, NULL, '8430920170719101142', 2, 0, NULL, 0, 0.00000000, 0.00000000),
(672, 308, '2', 308, 309, '10', NULL, 1, '2017-07-19 12:05:12', NULL, NULL, '2230920170719120509', 2, 0, NULL, 0, 0.00427458, 0.00026220),
(673, 307, '2', 307, 308, '6', NULL, 1, '2017-07-19 12:05:13', NULL, NULL, '2230920170719120509', 2, 0, NULL, 0, 0.00256475, 0.00010380),
(674, 306, '2', 306, 307, '2', NULL, 1, '2017-07-19 12:05:15', NULL, NULL, '2230920170719120509', 2, 0, NULL, 0, 0.00000000, 0.00000000),
(675, 309, '2', 309, 313, '10', NULL, 1, '2017-07-20 00:57:00', NULL, NULL, '731320170720005658', 2, 0, NULL, 0, 0.00438206, 0.00034140),
(676, 308, '2', 308, 309, '6', NULL, 1, '2017-07-20 00:57:01', NULL, NULL, '731320170720005658', 2, 0, NULL, 0, 0.00262699, 0.00034140),
(677, 307, '2', 307, 308, '2', NULL, 1, '2017-07-20 00:57:04', NULL, NULL, '731320170720005658', 2, 0, NULL, 0, 0.00000000, 0.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `is_agent` int(1) NOT NULL DEFAULT '0',
  `type` varchar(11) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(200) NOT NULL,
  `sponsor_id` int(11) NOT NULL,
  `trn_pin` bigint(20) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `payza_ac` varchar(150) NOT NULL,
  `bikash` varchar(150) NOT NULL,
  `payment_no` varchar(125) NOT NULL,
  `bank_name` varchar(125) NOT NULL,
  `ac_name` varchar(150) NOT NULL,
  `ac_no` varchar(150) NOT NULL,
  `branch_name` varchar(150) NOT NULL,
  `branch_name_1` varchar(150) NOT NULL,
  `branch_name_2` varchar(150) NOT NULL,
  `added_by` int(11) DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `registered_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `pmoney` varchar(255) DEFAULT NULL,
  `bitcoin` varchar(255) DEFAULT NULL,
  `deposit` double NOT NULL DEFAULT '0',
  `user_count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_agent`, `type`, `email`, `name`, `country_id`, `password`, `photo`, `status`, `username`, `sponsor_id`, `trn_pin`, `dob`, `address`, `mobile`, `payza_ac`, `bikash`, `payment_no`, `bank_name`, `ac_name`, `ac_no`, `branch_name`, `branch_name_1`, `branch_name_2`, `added_by`, `added_on`, `registered_on`, `updated_on`, `updated_by`, `pmoney`, `bitcoin`, `deposit`, `user_count`) VALUES
(1, 0, 'admin', 'admin@email.com', 'Administrator', 1, 'e10adc3949ba59abbe56e057f20f883e', '91dc76713395a836520b0cce41a9cdec.jpg', 1, 'admin', 0, 8620160811081504, '', '', '', '', '', '', '', '', '', '', '', '', 1, '2016-04-25 16:15:46', '2016-04-25 16:15:46', '0000-00-00 00:00:00', 0, '0', '1DtN18Afp5PX2LmCJfzJjjen4YWQwrcZC', 0, 5365),
(20, 1, 'user', 'jsn252@gmail.com', 'jsn252', 18, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'jsn252', 19, 123456, '', 'dfasfafaf', '12412414', '', '', '', '', '', '', '', '', '', 1, '2016-08-22 06:53:15', '2016-08-22 06:53:15', '2016-08-22 16:20:47', 1, '0', '1DtN18Afp5PX2LmCJfzJjjen4YWQwrcZC', 0, 0),
(305, 0, 'user', 'abcdef@gmail.com', 'ashik', 18, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'bappe1', 20, 720170719061834, '', '', '01811', '', '', '', '', '', '', '', '', '', NULL, '2017-07-19 06:18:34', '2017-07-19 06:18:34', '0000-00-00 00:00:00', 0, NULL, '34u37k7JuRgSUNEzQnZmkKvPvB6yzysCdZ', 0, 0),
(306, 0, 'user', 'asdfgh@gmail.com', 'akash', 18, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'bappe2', 305, 10020170719062029, '', '', '018112', '', '', '', '', '', '', '', '', '', NULL, '2017-07-19 06:20:29', '2017-07-19 06:20:29', '0000-00-00 00:00:00', 0, NULL, '34u37k7JuRgSUNEzQnZmkKvPvB6yzysCdZ', 2, 0),
(307, 0, 'user', 'asdfcvb@gmail.com', 'akash', 18, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'bappe3', 306, 1420170719062316, '', '', '018113', '', '', '', '', '', '', '', '', '', NULL, '2017-07-19 06:23:16', '2017-07-19 06:23:16', '0000-00-00 00:00:00', 0, NULL, '35vKvzjuewsmCBED5zGzS2XK7MvLxMViYn', 6, 0),
(308, 0, 'user', 'qwert@gmail.com', 'bappe4', 18, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'bappe4', 307, 9720170719062635, '', '', '18114', '', '', '', '', '', '', '', '', '', NULL, '2017-07-19 06:26:35', '2017-07-19 06:26:35', '0000-00-00 00:00:00', 0, '0', '1EowbrCyBNBGudaCf9PjD9TtNwi3sKvmZ7', 26, 0),
(309, 0, 'user', 'zxcvb@gmail.com', 'akash', 18, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'bappe5', 308, 6720170719062901, '', '', '0181234', '', '', '', '', '', '', '', '', '', NULL, '2017-07-19 06:29:01', '2017-07-19 06:29:01', '0000-00-00 00:00:00', 0, NULL, '1EowbrCyBNBGudaCf9PjD9TtNwi3sKvmZ7', -1590, 0),
(310, 0, 'user', 'jsnk@gmail.com', 'jishan', 12, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'jishan', 309, 8220170719082343, '', '', '01928373773', '', '', '', '', '', '', '', '', '', NULL, '2017-07-19 08:23:43', '2017-07-19 08:23:43', '0000-00-00 00:00:00', 0, NULL, '3BhWPhbDFbFsFbPB9KpJsavFAZ9TPCUTNu', 0, 0),
(311, 0, 'user', 'lovekinss@gmail.com', 'jaed', 13, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'jaed', 310, 9920170719082743, '', 'dhaka', '18938383883', '', '', '', '', '', '', '', '', '', NULL, '2017-07-19 08:27:43', '2017-07-19 08:27:43', '0000-00-00 00:00:00', 0, '0', '1EowbrCyBNBGudaCf9PjD9TtNwi3sKvmZ7', 0, 0),
(312, 0, 'user', 'jaka@gmail.com', 'ami', 14, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, 'money', 311, 4820170719082944, '', '', '01923837747', '', '', '', '', '', '', '', '', '', NULL, '2017-07-19 08:29:44', '2017-07-19 08:29:44', '0000-00-00 00:00:00', 0, NULL, '1EowbrCyBNBGudaCf9PjD9TtNwi3sKvmZ7', 0, 0),
(313, 0, 'user', 'bitcoinjja@gmail.com', 'Julius Jack Armstrong', 110, '9d496b042ed5b477f4c9f5913e93c87c', NULL, 1, 'plusprofit', 309, 8920170720005403, '', '', '8034836446', '', '', '', '', '', '', '', '', '', NULL, '2017-07-20 00:54:03', '2017-07-20 00:54:03', '0000-00-00 00:00:00', 0, NULL, '181NSczXrjigAKpZ49NMRCAiASNmjb4AAr', -800, 0),
(314, 0, 'user', 'generalmanager75@gmail.com', 'MICHAEL Boakye', 81, 'cb222255d018363610d51df309e97802', NULL, 1, 'helpinghandz', 313, 6520170720095236, '', '', '233244607970', '', '', '', '', '', '', '', '', '', NULL, '2017-07-20 09:52:36', '2017-07-20 09:52:36', '0000-00-00 00:00:00', 0, NULL, 'p o box 9799 airport', 0, 0),
(315, 0, 'user', 'myblessings4you@gmail.com', 'Alex', 230, '32738c0b9050e13016e534bd0dcf7479', NULL, 1, 'freedom', 313, 6820170722133333, '', '', '9164949223', '', '', '', '', '', '', '', '', '', NULL, '2017-07-22 13:33:33', '2017-07-22 13:33:33', '0000-00-00 00:00:00', 0, NULL, '1CkCEsesNm84vYMgL2HwZQEViWK5eHDSx4', 0, 0),
(316, 0, 'user', 'kooking9@gmail.com', 'KCS', 110, '55e8de10ff29246076d6579a8e11c2d4', NULL, 1, 'plusprofitking', 313, 7020170724072231, '', '', '819015560464', '', '', '', '', '', '', '', '', '', NULL, '2017-07-24 07:22:31', '2017-07-24 07:22:31', '0000-00-00 00:00:00', 0, NULL, '18rxpurdgGgeC2tqG5XiEFvPA7uRaAWxsL', 0, 0),
(317, 0, 'user', 'ahpkorea@gmail.com', 'won hyung park', 116, '7680eb7430dfeccc46445dd083fc4d50', NULL, 1, 'ahpkorea', 313, 5720170729030019, '', '', '+821027000020', '', '', '', '', '', '', '', '', '', NULL, '2017-07-29 03:00:19', '2017-07-29 03:00:19', '0000-00-00 00:00:00', 0, NULL, '18pwFMUb3QZVfiXNdiPF1WXzH8MGrcpmaj', 0, 0),
(318, 0, 'user', 'nabeel487487@gmail.com', 'Nabeel Khan', 99, 'bee701bdb3cc4c9ee4be36d0c828351b', NULL, 1, 'nabeel487487', 1, 6220170802160933, '', '', '8574899728', '', '', '', '', '', '', '', '', '', NULL, '2017-08-02 16:09:33', '2017-08-02 16:09:33', '0000-00-00 00:00:00', 0, NULL, '1BB6Mo1NiANhARuoTdi7wxXr6E8UJWAMxB', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `withdraw_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_method` int(1) DEFAULT NULL COMMENT '1=BC, 2=PM',
  `status` int(1) DEFAULT '1',
  `date` datetime DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`deposit_id`);

--
-- Indexes for table `fund_request`
--
ALTER TABLE `fund_request`
  ADD PRIMARY KEY (`fund_request_id`);

--
-- Indexes for table `gift_code`
--
ALTER TABLE `gift_code`
  ADD PRIMARY KEY (`gift_code_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_role_id` (`type`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `deposit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `fund_request`
--
ALTER TABLE `fund_request`
  MODIFY `fund_request_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gift_code`
--
ALTER TABLE `gift_code`
  MODIFY `gift_code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `plan_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;
--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `withdraw_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
